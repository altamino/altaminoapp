package com.narvii.list.prefs;

import android.content.Intent;
import com.narvii.util.Callback;

/* loaded from: classes3.dex */
public class PrefsEntry extends PrefsItem {
    public Callback<PrefsEntry> callback;
    public Intent callbackIntent;
    public int requestCode = -1;

    public PrefsEntry() {
    }

    public PrefsEntry(int i) {
        this.id = i;
    }

    public PrefsEntry(String str) {
        this.name = str;
    }
}
