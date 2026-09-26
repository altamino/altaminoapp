package com.google.android.play.core.integrity;

import android.app.PendingIntent;

/* JADX INFO: loaded from: classes7.dex */
final class f extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f1398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.play.integrity.internal.x f1399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PendingIntent f1400c;

    f() {
    }

    @Override // com.google.android.play.core.integrity.n
    final n a(PendingIntent pendingIntent) {
        this.f1400c = pendingIntent;
        return this;
    }

    @Override // com.google.android.play.core.integrity.n
    final n c(String str) {
        this.f1398a = str;
        return this;
    }

    @Override // com.google.android.play.core.integrity.n
    final n b(com.google.android.play.integrity.internal.x xVar) {
        if (xVar == null) {
            throw new NullPointerException("Null logger");
        }
        this.f1399b = xVar;
        return this;
    }

    @Override // com.google.android.play.core.integrity.n
    final o d() {
        com.google.android.play.integrity.internal.x xVar;
        String str = this.f1398a;
        if (str != null && (xVar = this.f1399b) != null) {
            return new o(str, xVar, this.f1400c);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f1398a == null) {
            sb.append(" token");
        }
        if (this.f1399b == null) {
            sb.append(" logger");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
