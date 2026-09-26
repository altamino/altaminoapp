package com.narvii.list.prefs;

import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes6.dex */
public class PrefsSwitch extends PrefsItem {
    public static final int SWITCH_MODE_ACTION_SHEET = 0;
    public static final int SWITCH_MODE_DIRECTLY = 1;
    public Callback<PrefsSwitch> callback;
    public boolean on;
    public int switchMode;

    public PrefsSwitch() {
    }

    public PrefsSwitch(int i10) {
        this.id = i10;
    }

    public PrefsSwitch(String str) {
        this.name = str;
    }

    public PrefsSwitch(int i10, int i11) {
        this.id = i10;
        this.switchMode = i11;
    }

    public PrefsSwitch(String str, int i10) {
        this.name = str;
        this.switchMode = i10;
    }
}
