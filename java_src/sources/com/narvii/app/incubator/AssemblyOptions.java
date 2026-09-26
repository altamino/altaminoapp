package com.narvii.app.incubator;

import ai.medialab.medialabads2.ui.sdk.options.DebugOptionsDelegate;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.PreferenceManager;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class AssemblyOptions {
    public final void setHeaders(@NotNull Context applicationContext, @Nullable String str) {
        t.j(applicationContext, "applicationContext");
        SharedPreferences sharedPreferencesB = PreferenceManager.b(applicationContext);
        t.g(sharedPreferencesB);
        DebugOptionsDelegate debugOptionsDelegate = new DebugOptionsDelegate(sharedPreferencesB);
        debugOptionsDelegate.setLoggingEnable(true);
        debugOptionsDelegate.setTestHeaders("X-Whisper-Testyoself:" + str);
    }
}
