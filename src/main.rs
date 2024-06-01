use anyhow::Result;

#[tokio::main]
async fn main() -> Result<()> {
    let ip = reqwest::get("https://api.ipify.org").await?.text().await?;
    println!("Hello from {}", ip);

    use polars::prelude::*;

    let q = LazyCsvReader::new("docs/data/iris.csv")
        .with_has_header(true)
        .finish()?
        .filter(col("sepal_length").gt(lit(5)))
        .group_by(vec![col("species")])
        .agg([col("*").sum()]);
    let df = q.collect()?;
    println!("{:?}", df);

    Ok(())
}
