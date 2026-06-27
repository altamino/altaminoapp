package com.narvii.logging;

/* loaded from: classes3.dex */
public class PageRefererInfo {
    public String refererArea;
    public String refererEventId;
    public String refererPage;

    public PageRefererInfo() {
    }

    public PageRefererInfo(String str, String str2, String str3) {
        this.refererEventId = str;
        this.refererPage = str2;
        this.refererArea = str3;
    }

    public PageRefererInfo(String str, String str2) {
        this.refererPage = str;
        this.refererArea = str2;
    }

    public PageRefererInfo(String str) {
        this.refererPage = str;
    }
}
