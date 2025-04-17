Write-Host "Disabling Microsoft Defender..." -ForegroundColor Cyan

# real-time protection
Set-MpPreference -DisableRealtimeMonitoring $true
Set-MpPreference -DisableBehaviorMonitoring $true
Set-MpPreference -DisableOnAccessProtection $true
Set-MpPreference -DisableScriptScanning $true
Set-MpPreference -DisableIOAVProtection $true
Set-MpPreference -DisableEmailScanning $true
Set-MpPreference -DisableRemovableDriveScanning $true
Set-MpPreference -DisableIntrusionPreventionSystem $true
Set-MpPreference -DisableBlockAtFirstSeen $true

# scan behaviors and scheduling
Set-MpPreference -DisableArchiveScanning $true
Set-MpPreference -DisableCatchupFullScan $true
Set-MpPreference -DisableCatchupQuickScan $true
Set-MpPreference -DisableScanningMappedNetworkDrivesForFullScan $true
Set-MpPreference -DisableScanningNetworkFiles $true

# other protocol/file parsing
Set-MpPreference -DisableDnsParsing $true
Set-MpPreference -DisableDnsOverTcpParsing $true
Set-MpPreference -DisableFtpParsing $true
Set-MpPreference -DisableHttpParsing $true
Set-MpPreference -DisableRdpParsing $true
Set-MpPreference -DisableSmtpParsing $true
Set-MpPreference -DisableSshParsing $true
Set-MpPreference -DisableTlsParsing $true
Set-MpPreference -DisableDatagramProcessing $true

Set-MpPreference -MAPSReporting 0
Set-MpPreference -SubmitSamplesConsent 2
Set-MpPreference -DisableNetworkProtectionPerfTelemetry $true
Set-MpPreference -DisablePrivacyMode $true

Set-MpPreference -DisableAutoExclusions $true
Set-MpPreference -DisableTamperProtection $true
Set-MpPreference -DisableRestorePoint $true
Set-MpPreference -DisableGradualRelease $true
Set-MpPreference -DisableCacheMaintenance $true
Set-MpPreference -DisableCpuThrottleOnIdleScans $true

# PUA
Set-MpPreference -PUAProtection Disabled

Set-MpPreference -EnableControlledFolderAccess Disabled

# Threat Responses
Set-MpPreference -HighThreatDefaultAction 6
Set-MpPreference -ModerateThreatDefaultAction 6
Set-MpPreference -LowThreatDefaultAction 6
Set-MpPreference -SevereThreatDefaultAction 6
Set-MpPreference -UnknownThreatDefaultAction 6

# Disable Defender completely
Set-MpPreference -DisableAntiSpyware $true

Write-Host "All Defender protections have been disabled." -ForegroundColor Green
