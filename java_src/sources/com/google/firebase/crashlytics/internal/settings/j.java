package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.c0;

/* JADX INFO: loaded from: classes9.dex */
class j {
    public final String buildVersion;
    public final String deviceModel;
    public final String displayVersion;
    public final String googleAppId;
    public final c0 installIdProvider;
    public final String instanceId;
    public final String osBuildVersion;
    public final String osDisplayVersion;
    public final int source;

    public j(String str, String str2, String str3, String str4, c0 c0Var, String str5, String str6, String str7, int i10) {
        this.googleAppId = str;
        this.deviceModel = str2;
        this.osBuildVersion = str3;
        this.osDisplayVersion = str4;
        this.installIdProvider = c0Var;
        this.instanceId = str5;
        this.displayVersion = str6;
        this.buildVersion = str7;
        this.source = i10;
    }
}
