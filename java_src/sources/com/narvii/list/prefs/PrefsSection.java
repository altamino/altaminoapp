package com.narvii.list.prefs;

/* JADX INFO: loaded from: classes5.dex */
public class PrefsSection extends PrefsItem {
    public boolean isAllCaps = true;
    public String learnMoreUrl;

    public PrefsSection() {
    }

    public PrefsSection(int i10) {
        this.id = i10;
    }

    public PrefsSection(String str) {
        this.name = str;
    }

    public PrefsSection(int i10, String str) {
        this.id = i10;
        this.learnMoreUrl = str;
    }
}
