package com.narvii.list.prefs;

import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes3.dex */
public class PrefsToggle extends PrefsItem {
    public static final int MODE_NORMAL = 0;
    public static final int MODE_SMALL = 1;
    public Callback<PrefsToggle> callback;
    public int mode;
    public boolean on;
    public boolean textSingleLine;

    public PrefsToggle() {
        this.textSingleLine = true;
    }

    public void setTextSingleLine(boolean z6) {
        this.textSingleLine = z6;
    }

    public PrefsToggle(int i10) {
        this.textSingleLine = true;
        this.id = i10;
    }

    public PrefsToggle(String str) {
        this.textSingleLine = true;
        this.name = str;
    }

    public PrefsToggle(int i10, String str) {
        this(i10, str, 0);
    }

    public PrefsToggle(int i10, String str, int i11) {
        this.textSingleLine = true;
        this.id = i10;
        this.name = str;
        this.mode = i11;
    }
}
