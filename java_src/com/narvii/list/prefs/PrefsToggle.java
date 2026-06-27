package com.narvii.list.prefs;

import com.narvii.util.Callback;

/* loaded from: classes3.dex */
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

    public PrefsToggle(int i) {
        this.textSingleLine = true;
        this.id = i;
    }

    public PrefsToggle(String str) {
        this.textSingleLine = true;
        this.name = str;
    }

    public PrefsToggle(int i, String str) {
        this(i, str, 0);
    }

    public PrefsToggle(int i, String str, int i2) {
        this.textSingleLine = true;
        this.id = i;
        this.name = str;
        this.mode = i2;
    }

    public void setTextSingleLine(boolean z) {
        this.textSingleLine = z;
    }
}
