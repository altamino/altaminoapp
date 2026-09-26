package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class m implements com.google.firebase.sessions.api.b {
    private final l appQualitySessionsStore;
    private final x dataCollectionArbiter;

    @Override // com.google.firebase.sessions.api.b
    public boolean a() {
        return this.dataCollectionArbiter.d();
    }

    @Override // com.google.firebase.sessions.api.b
    @NonNull
    public com.google.firebase.sessions.api.b.a b() {
        return com.google.firebase.sessions.api.b.a.CRASHLYTICS;
    }

    @Nullable
    public String d(@NonNull String str) {
        return this.appQualitySessionsStore.c(str);
    }

    public void e(@Nullable String str) {
        this.appQualitySessionsStore.i(str);
    }

    public m(x xVar, e4.f fVar) {
        this.dataCollectionArbiter = xVar;
        this.appQualitySessionsStore = new l(fVar);
    }

    @Override // com.google.firebase.sessions.api.b
    public void c(@NonNull com.google.firebase.sessions.api.b.C0267b c0267b) {
        com.google.firebase.crashlytics.internal.g.f().b("App Quality Sessions session changed: " + c0267b);
        this.appQualitySessionsStore.h(c0267b.a());
    }
}
