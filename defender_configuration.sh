#!/bin/bash

# Enable real-time protection
mdatp config real_time_protection --value enabled

# Disable automatic sample submissions
mdatp config automatic_sample_submission --value disabled

# Enable cloud-delivered protection
mdatp config cloud_delivered_protection --value enabled

# Disable diagnostic data submissions
mdatp config diagnostic_data --value disabled

# Enable EDR block at first sight feature
mdatp config edr_block_at_first_sight --value enabled

# Enable EDR automatic exclusions feature
mdatp config edr_enable_automatic_exclusions --value enabled

# Enable EDR file hash reporting feature
mdatp config edr_enable_file_hash_reporting --value enabled

# Enable EDR memory integrity feature
mdatp config edr_enable_memory_integrity --value enabled

# Enable EDR network protection feature
mdatp config edr_enable_network_protection --value enabled

# Enable EDR process creation feature
mdatp config edr_enable_process_creation --value enabled

# Enable EDR sensor
mdatp config enable_edr --value enabled

# Enable Tamper Protection in audit mode
sudo mdatp config tamper-protection --value audit-mode
