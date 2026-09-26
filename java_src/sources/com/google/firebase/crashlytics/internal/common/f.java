package com.google.firebase.crashlytics.internal.common;

/* JADX INFO: loaded from: classes7.dex */
public class f {
    private final String arch;
    private final String buildId;
    private final String libraryName;

    public String a() {
        return this.arch;
    }

    public String b() {
        return this.buildId;
    }

    public String c() {
        return this.libraryName;
    }

    public f(String str, String str2, String str3) {
        this.libraryName = str;
        this.arch = str2;
        this.buildId = str3;
    }
}
