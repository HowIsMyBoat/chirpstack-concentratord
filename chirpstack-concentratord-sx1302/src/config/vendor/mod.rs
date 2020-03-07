use libloragw_sx1302::hal;

pub mod semtech;

#[derive(Default, Clone)]
pub struct Configuration {
    pub radio_count: usize,
    pub clock_source: u8,
    pub full_duplex: bool,
    pub lora_multi_sf_bandwidth: u32,
    pub radio_config: Vec<RadioConfig>,
    pub gps_tty_path: String,
    pub spidev_path: String,
}

#[derive(Clone)]
pub struct RadioConfig {
    pub enable: bool,
    pub radio_type: hal::RadioType,
    pub single_input_mode: bool,
    pub rssi_offset: f32,
    pub rssi_temp_compensation: hal::RssiTempCompensationConfig,
    pub tx_enable: bool,
    pub tx_freq_min: u32,
    pub tx_freq_max: u32,
    pub tx_gain_table: Vec<hal::TxGainConfig>,
}
