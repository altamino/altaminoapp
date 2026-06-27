package com.narvii.list.prefs;

/* loaded from: classes3.dex */
public class PrefsText extends PrefsEntry {
    public int drawableId;
    public String text;
    public int textColor;

    public PrefsText() {
        this.chevronRight = false;
    }

    public PrefsText(int i) {
        super(i);
        this.chevronRight = false;
    }

    public PrefsText(String str) {
        super(str);
        this.chevronRight = false;
    }

    public PrefsText(int i, String str) {
        this(i);
        this.text = str;
    }
}
