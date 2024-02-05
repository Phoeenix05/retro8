use retro8_utils::{Result, Retro8Error};

pub fn retro_init() -> Result<(), Retro8Error> {
    env_logger::builder().init();

    Ok(())
}
