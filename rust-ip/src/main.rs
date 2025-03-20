use std::fs;
use std::path::Path;
use std::thread;
use std::time::{SystemTime, UNIX_EPOCH};

const CACHE_PATH: &str = ".ip-cache";
const CACHE_DURATION: u64 = 1200; // 20分钟

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let silent = args.contains(&"-s".to_string());

    let cache_path = dirs::home_dir().unwrap().join(CACHE_PATH);

    if cache_path.exists() {
        if let Ok(content) = fs::read_to_string(&cache_path) {
            let lines: Vec<&str> = content.lines().collect();
            if lines.len() == 2 {
                if !silent {
                    println!("{}", lines[1]);
                }

                // 检查缓存是否过期
                if let Ok(timestamp) = lines[0].parse::<u64>() {
                    let now = SystemTime::now()
                        .duration_since(UNIX_EPOCH)
                        .unwrap()
                        .as_secs();
                    if now - timestamp > CACHE_DURATION {
                        // 使用spawn_blocking确保线程完成
                        let _ = thread::spawn(move || {
                            update_cache(&cache_path);
                        })
                        .join();
                    }
                    return;
                }
            }
        }
    }

    // 使用spawn_blocking确保线程完成
    let _ = thread::spawn(move || {
        update_cache(&cache_path);
    })
    .join();
}

fn update_cache(cache_path: &Path) {
    let client = reqwest::blocking::Client::builder()
        .timeout(std::time::Duration::from_millis(2000))
        .build()
        .unwrap();

    if let Ok(response) = client.get("https://api.myip.com").send() {
        if let Ok(info) = response.json::<serde_json::Value>() {
            let ip = info["ip"].as_str().unwrap_or("");
            let cc = info["cc"].as_str().unwrap_or("");

            let timestamp = SystemTime::now()
                .duration_since(UNIX_EPOCH)
                .unwrap()
                .as_secs();

            let content = format!("{}\n{}({})", timestamp, ip, cc);
            let _ = fs::write(cache_path, content);
        }
    }
}
