package com.google.firebase.sessions;

import android.util.Base64;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class v {

    @NotNull
    public static final v INSTANCE = new v();
    private static final String PROCESS_NAME;

    @NotNull
    private static final String SESSIONS_CONFIG_NAME;

    @NotNull
    private static final String SETTINGS_CONFIG_NAME;

    @NotNull
    public final String a() {
        return SESSIONS_CONFIG_NAME;
    }

    @NotNull
    public final String b() {
        return SETTINGS_CONFIG_NAME;
    }

    static {
        String strEncodeToString = Base64.encodeToString(kotlin.text.t.t(u.INSTANCE.e()), 10);
        PROCESS_NAME = strEncodeToString;
        SESSIONS_CONFIG_NAME = "firebase_session_" + strEncodeToString + "_data";
        SETTINGS_CONFIG_NAME = "firebase_session_" + strEncodeToString + "_settings";
    }

    private v() {
    }
}
