package com.google.firebase.crashlytics.internal.common;

/* JADX INFO: loaded from: classes7.dex */
public enum y {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);

    private final int id;

    public static y a(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }

    public int b() {
        return this.id;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.id);
    }

    y(int i10) {
        this.id = i10;
    }
}
