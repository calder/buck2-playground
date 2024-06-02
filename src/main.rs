use anyhow::Result;
// use polars_core::prelude::*;
// use polars::prelude::*;

#[tokio::main]
async fn main() -> Result<()> {
    let ip = reqwest::get("https://api.ipify.org").await?.text().await?;
    println!("Hello from {}", ip);

    print!("Polars {:?}", polars::VERSION);
    // let data = df!(
    //     "int" => &[1, 2, 3],
    //     "float" => &[4.0, 5.0, 6.0],
    //     "string" => &["a", "b", "c"],
    // )
    // .unwrap();
    // println!("{:?}", data);

    Ok(())
}
