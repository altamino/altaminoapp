package com.google.firebase.sessions.settings;

import android.content.Context;
import android.os.Bundle;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements h {

    @NotNull
    private static final a Companion = new a(null);

    @Deprecated
    @NotNull
    public static final String SAMPLING_RATE = "firebase_sessions_sampling_rate";

    @Deprecated
    @NotNull
    public static final String SESSIONS_ENABLED = "firebase_sessions_enabled";

    @Deprecated
    @NotNull
    public static final String SESSION_RESTART_TIMEOUT = "firebase_sessions_sessions_restart_timeout";
    private final Bundle metadata;

    private static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    public b(@NotNull Context context) {
        t.j(context, "context");
        Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        this.metadata = bundle == null ? Bundle.EMPTY : bundle;
    }

    @Override // com.google.firebase.sessions.settings.h
    @Nullable
    public Double a() {
        if (this.metadata.containsKey(SAMPLING_RATE)) {
            return Double.valueOf(this.metadata.getDouble(SAMPLING_RATE));
        }
        return null;
    }

    @Override // com.google.firebase.sessions.settings.h
    @Nullable
    public Boolean c() {
        if (this.metadata.containsKey(SESSIONS_ENABLED)) {
            return Boolean.valueOf(this.metadata.getBoolean(SESSIONS_ENABLED));
        }
        return null;
    }

    @Override // com.google.firebase.sessions.settings.h
    @Nullable
    public k8.b d() {
        if (this.metadata.containsKey(SESSION_RESTART_TIMEOUT)) {
            return k8.b.f(k8.d.s(this.metadata.getInt(SESSION_RESTART_TIMEOUT), k8.e.SECONDS));
        }
        return null;
    }

    @Override // com.google.firebase.sessions.settings.h
    @Nullable
    public Object b(@NotNull kotlin.coroutines.d<? super l0> dVar) {
        return h.a.a(this, dVar);
    }
}
