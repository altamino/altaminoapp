package com.narvii.scene.model;

/* loaded from: classes3.dex */
public class SceneCoverImageInfo {
    public static final int FROM_CUSTOM = 2;
    public static final int FROM_NET = 3;
    public static final int FROM_SCENE = 0;
    public static final int FROM_SCREEN_SHOT = 1;
    public String customUrl;
    public String defaultUrl;
    public int from;
    public String netUrl;
    public String screenshotUrl;

    public SceneCoverImageInfo() {
        this("", 0);
    }

    public SceneCoverImageInfo(String str, int i) {
        this.from = i;
        this.defaultUrl = "";
        this.screenshotUrl = "";
        this.customUrl = "";
        this.netUrl = "";
        if (str != null) {
            if (i == 0) {
                this.defaultUrl = str;
                return;
            }
            if (i == 1) {
                this.screenshotUrl = str;
            } else if (i == 2) {
                this.customUrl = str;
            } else {
                if (i != 3) {
                    return;
                }
                this.netUrl = str;
            }
        }
    }

    public String getCoverImage() {
        int i = this.from;
        if (i == 0) {
            return this.defaultUrl;
        }
        if (i == 1) {
            return this.screenshotUrl;
        }
        if (i == 2) {
            return this.customUrl;
        }
        return i == 3 ? this.netUrl : "";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SceneCoverImageInfo.class != obj.getClass()) {
            return false;
        }
        SceneCoverImageInfo sceneCoverImageInfo = (SceneCoverImageInfo) obj;
        String str = this.defaultUrl;
        if (str == null ? sceneCoverImageInfo.defaultUrl != null : !str.equals(sceneCoverImageInfo.defaultUrl)) {
            return false;
        }
        String str2 = this.screenshotUrl;
        if (str2 == null ? sceneCoverImageInfo.screenshotUrl != null : !str2.equals(sceneCoverImageInfo.screenshotUrl)) {
            return false;
        }
        String str3 = this.customUrl;
        if (str3 == null ? sceneCoverImageInfo.customUrl != null : !str3.equals(sceneCoverImageInfo.customUrl)) {
            return false;
        }
        String str4 = this.netUrl;
        if (str4 == null ? sceneCoverImageInfo.netUrl == null : str4.equals(sceneCoverImageInfo.netUrl)) {
            return this.from == sceneCoverImageInfo.from;
        }
        return false;
    }

    public int hashCode() {
        int i = this.from * 31;
        String str = this.defaultUrl;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.screenshotUrl;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.customUrl;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.netUrl;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }
}
