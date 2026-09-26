package com.narvii.list.prefs;

import android.content.Intent;
import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes9.dex */
public class PrefsEntry extends PrefsItem {
    public Callback<PrefsEntry> callback;
    public Intent callbackIntent;
    public int requestCode = -1;

    public PrefsEntry() {
    }

    public PrefsEntry(int i10) {
        this.id = i10;
    }

    public PrefsEntry(String str) {
        this.name = str;
    }
}
