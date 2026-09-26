package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes8.dex */
public final class k implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final k f1448a = new k(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f1449b;

    private k(Object obj) {
        this.f1449b = obj;
    }

    @Override // com.google.android.play.integrity.internal.m
    public final Object a() {
        return this.f1449b;
    }

    public static j b(Object obj) {
        if (obj != null) {
            return new k(obj);
        }
        throw new NullPointerException("instance cannot be null");
    }
}
