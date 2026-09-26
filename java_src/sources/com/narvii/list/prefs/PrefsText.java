package com.narvii.list.prefs;

/* JADX INFO: loaded from: classes11.dex */
public class PrefsText extends PrefsEntry {
    public int drawableId;
    public String text;
    public int textColor;

    public PrefsText() {
        this.chevronRight = false;
    }

    public PrefsText(int i10) {
        super(i10);
        this.chevronRight = false;
    }

    public PrefsText(String str) {
        super(str);
        this.chevronRight = false;
    }

    public PrefsText(int i10, String str) {
        this(i10);
        this.text = str;
    }
}
