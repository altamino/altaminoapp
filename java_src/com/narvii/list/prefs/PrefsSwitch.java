package com.narvii.list.prefs;

import com.narvii.util.Callback;

/* loaded from: classes3.dex */
public class PrefsSwitch extends PrefsItem {
    public static final int SWITCH_MODE_ACTION_SHEET = 0;
    public static final int SWITCH_MODE_DIRECTLY = 1;
    public Callback<PrefsSwitch> callback;
    public boolean on;
    public int switchMode;

    public PrefsSwitch() {
    }

    public PrefsSwitch(int i) {
        this.id = i;
    }

    public PrefsSwitch(String str) {
        this.name = str;
    }

    public PrefsSwitch(int i, int i2) {
        this.id = i;
        this.switchMode = i2;
    }

    public PrefsSwitch(String str, int i) {
        this.name = str;
        this.switchMode = i;
    }
}
