package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: loaded from: classes7.dex */
public final class m implements com.google.android.play.integrity.internal.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.play.integrity.internal.m f1412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.play.integrity.internal.m f1413b;

    public m(com.google.android.play.integrity.internal.m mVar, com.google.android.play.integrity.internal.m mVar2) {
        this.f1412a = mVar;
        this.f1413b = mVar2;
    }

    @Override // com.google.android.play.integrity.internal.m
    public final /* bridge */ /* synthetic */ Object a() {
        return new k((Context) this.f1412a.a(), (com.google.android.play.integrity.internal.x) this.f1413b.a());
    }
}
