package com.narvii.list.prefs;

/* loaded from: classes3.dex */
public class PrefsSection extends PrefsItem {
    public boolean isAllCaps = true;
    public String learnMoreUrl;

    public PrefsSection() {
    }

    public PrefsSection(int i) {
        this.id = i;
    }

    public PrefsSection(String str) {
        this.name = str;
    }

    public PrefsSection(int i, String str) {
        this.id = i;
        this.learnMoreUrl = str;
    }
}
