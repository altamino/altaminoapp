package com.linkedin.urls;

/* JADX INFO: loaded from: classes8.dex */
public class a {
    private int end;
    private int start;
    private final EnumC0279a type;
    private String value;

    /* JADX INFO: renamed from: com.linkedin.urls.a$a, reason: collision with other inner class name */
    public enum EnumC0279a {
        URL,
        HASHTAG,
        CASHTAG
    }

    public int a() {
        return this.end;
    }

    public int b() {
        return this.start;
    }

    public EnumC0279a c() {
        return this.type;
    }

    public String d() {
        return this.value;
    }

    public a(int i10, int i11, String str, EnumC0279a enumC0279a) {
        this.start = i10;
        this.end = i11;
        this.value = str;
        this.type = enumC0279a;
    }
}
