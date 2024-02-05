#[derive(Debug, thiserror::Error)]
pub enum Retro8Error {}

pub type Result<T, E = Retro8Error> = std::result::Result<T, E>;
