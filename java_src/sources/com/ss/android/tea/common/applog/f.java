package com.ss.android.tea.common.applog;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public class f {
    private int aid;
    private String appName;
    private boolean autoActiveUser;
    private String channel;
    private Context context;
    private c internationalConfig;

    @NonNull
    private h urlConfig;

    public int b() {
        return this.aid;
    }

    public String c() {
        return this.appName;
    }

    public String d() {
        return this.channel;
    }

    public Context e() {
        return this.context;
    }

    public c f() {
        return this.internationalConfig;
    }

    @NonNull
    public h g() {
        return this.urlConfig;
    }

    public boolean h() {
        return this.autoActiveUser;
    }

    public void a() {
        z.a(this.context, "context");
        if (TextUtils.isEmpty(this.appName)) {
            throw new IllegalArgumentException("appName is empty");
        }
        if (TextUtils.isEmpty(this.channel)) {
            throw new IllegalArgumentException("channel is empty");
        }
    }

    public f(Context context, boolean z6, String str, String str2, int i10, c cVar, h hVar) {
        this.context = context;
        this.autoActiveUser = z6;
        this.appName = str;
        this.channel = str2;
        this.aid = i10;
        this.internationalConfig = cVar;
        this.urlConfig = hVar;
    }
}
