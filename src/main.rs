use anyhow::Result;

#[tokio::main]
async fn main() -> Result<()> {
    let ip = reqwest::get("https://api.ipify.org").await?.text().await?;
    println!("Hello from {}", ip);

    Ok(())
}
