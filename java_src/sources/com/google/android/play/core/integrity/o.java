package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class o extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x f1415b;

    o(String str, com.google.android.play.integrity.internal.x xVar, @Nullable PendingIntent pendingIntent) {
        this.f1414a = str;
        this.f1415b = new x(xVar, pendingIntent);
    }

    @Override // com.google.android.play.core.integrity.e
    public final String a() {
        return this.f1414a;
    }
}
