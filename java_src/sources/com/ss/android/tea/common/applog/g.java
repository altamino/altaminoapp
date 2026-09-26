package com.ss.android.tea.common.applog;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class g {
    private int aid;
    private String appName;
    private boolean autoActiveUser = true;
    private String channel;
    private Context context;
    private c internationalConfig;
    private h urlConfig;

    public g c(int i10) {
        this.aid = i10;
        return this;
    }

    public g d(String str) {
        this.appName = str;
        return this;
    }

    public g e(String str) {
        this.channel = str;
        return this;
    }

    public g f(c cVar) {
        this.internationalConfig = cVar;
        return this;
    }

    public g g(h hVar) {
        this.urlConfig = hVar;
        return this;
    }

    public static g a(Context context) {
        return new g(context);
    }

    public f b() {
        return new f(this.context, this.autoActiveUser, this.appName, this.channel, this.aid, this.internationalConfig, this.urlConfig);
    }

    public g(Context context) {
        this.context = context;
    }
}
