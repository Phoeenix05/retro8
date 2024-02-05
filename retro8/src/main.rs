use retro8_utils::{Result, Retro8Error};

#[async_std::main]
async fn main() -> Result<(), Retro8Error> {
    retro8_core::retro_init()?;

    Ok(())
}
