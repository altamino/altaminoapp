package com.google.firebase.crashlytics.internal;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    private static final String FLUTTER_ASSET_FILE = "flutter_assets/NOTICES.Z";
    private static final String FLUTTER_PLATFORM = "Flutter";
    private static final String UNITY_PLATFORM = "Unity";
    private static final String UNITY_VERSION_FIELD = "com.google.firebase.crashlytics.unity_version";
    private final Context context;

    @Nullable
    private b developmentPlatform = null;

    private class b {

        @Nullable
        private final String developmentPlatform;

        @Nullable
        private final String developmentPlatformVersion;

        private b() {
            int iP = com.google.firebase.crashlytics.internal.common.i.p(f.this.context, f.UNITY_VERSION_FIELD, TypedValues.Custom.S_STRING);
            if (iP == 0) {
                if (!f.this.c(f.FLUTTER_ASSET_FILE)) {
                    this.developmentPlatform = null;
                    this.developmentPlatformVersion = null;
                    return;
                } else {
                    this.developmentPlatform = f.FLUTTER_PLATFORM;
                    this.developmentPlatformVersion = null;
                    g.f().i("Development platform is: Flutter");
                    return;
                }
            }
            this.developmentPlatform = f.UNITY_PLATFORM;
            String string = f.this.context.getResources().getString(iP);
            this.developmentPlatformVersion = string;
            g.f().i("Unity Editor version is: " + string);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(String str) {
        if (this.context.getAssets() == null) {
            return false;
        }
        try {
            InputStream inputStreamOpen = this.context.getAssets().open(str);
            if (inputStreamOpen == null) {
                return true;
            }
            inputStreamOpen.close();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private b f() {
        if (this.developmentPlatform == null) {
            this.developmentPlatform = new b();
        }
        return this.developmentPlatform;
    }

    public f(Context context) {
        this.context = context;
    }

    @Nullable
    public String d() {
        return f().developmentPlatform;
    }

    @Nullable
    public String e() {
        return f().developmentPlatformVersion;
    }
}
