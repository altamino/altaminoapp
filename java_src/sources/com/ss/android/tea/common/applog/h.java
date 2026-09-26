package com.ss.android.tea.common.applog;

/* JADX INFO: loaded from: classes5.dex */
public class h {
    final String mAbConfigUrl;
    final String mAppActiveUrl;
    final String mApplogFallbackUrl;
    final String mApplogSettingsFallbackUrl;
    final String mApplogSettingsUrl;
    final String mApplogTimelyUrl;
    final String mApplogURL;
    final String[] mDeviceRegisterUrl;
    final String mUserProfileUrl;
    public static final h CHINA = new h("http://toblog.snssdk.com/service/2/app_log/", "http://rtlog.snssdk.com/service/2/app_log/", new String[]{"http://toblog.snssdk.com/service/2/device_register/"}, "http://ichannel.snssdk.com/service/2/app_alert_check/", "http://toblog.snssdk.com/service/2/log_settings/", "http://toblog.snssdk.com/service/2/app_log/", "http://toblog.snssdk.com/service/2/log_settings/", qa.y.HTTP, "http://toblog.snssdk.com/service/2/ab_test_config/");
    public static final h AMERICA = new h("http://log.isnssdk.com/service/2/app_log/", "http://rtlog.isnssdk.com/service/2/app_log/", new String[]{"http://log.isnssdk.com/service/2/device_register/"}, "http://ichannel.isnssdk.com/service/2/app_alert_check/", "http://log.isnssdk.com/service/2/log_settings/", "http://log.isnssdk.com/service/2/app_log/", "http://log.isnssdk.com/service/2/log_settings/", qa.y.HTTP, "http://log-tb.isnssdk.com/service/2/ab_test_config/");
    public static final h SIG_ALI = new h("http://log.byteoversea.com/service/2/app_log/", "http://rtlog.byteoversea.com/service/2/app_log/", new String[]{"http://toblog.byteoversea.com/service/2/device_register/"}, "http://i.byteoversea.com/service/2/app_alert_check/", "http://log.byteoversea.com/service/2/log_settings/", "http://log.byteoversea.com/service/2/app_log/", "http://log.byteoversea.com/service/2/log_settings/", "", "");

    public String toString() {
        return super.toString() + ":\nmApplogURL : " + this.mApplogURL + "\nmApplogTimelyUrl : " + this.mApplogTimelyUrl + "\nmDeviceRegisterUrl : " + this.mDeviceRegisterUrl + "\nmAppActiveUrl : " + this.mAppActiveUrl + "\nmApplogSettingsUrl : " + this.mApplogSettingsUrl + "\n\nmApplogFallbackUrl : " + this.mApplogFallbackUrl + "\nmApplogSettingsFallbackUrl : " + this.mApplogSettingsFallbackUrl + "\nmUserProfileUrl : " + this.mUserProfileUrl + "\nmAbConfigUrl : " + this.mAbConfigUrl + "\n\n\n\n";
    }

    private h(String str, String str2, String[] strArr, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.mApplogURL = str;
        this.mApplogSettingsUrl = str4;
        this.mApplogTimelyUrl = str2;
        this.mAppActiveUrl = str3;
        this.mDeviceRegisterUrl = strArr;
        this.mApplogFallbackUrl = str5;
        this.mApplogSettingsFallbackUrl = str6;
        this.mUserProfileUrl = str7;
        this.mAbConfigUrl = str8;
    }
}
