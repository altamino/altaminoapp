package com.narvii.util.badge;

import android.content.SharedPreferences;
import com.narvii.app.NVContext;

/* loaded from: classes3.dex */
public abstract class BadgeService {
    protected final NVContext context;
    SharedPreferences prefs;
    int value;

    public abstract boolean isBadgeAvailable();

    protected abstract void setLauncherBadge(int i);

    public BadgeService(NVContext nVContext) {
        this.context = nVContext;
        this.prefs = (SharedPreferences) this.context.getService("prefs");
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            this.value = sharedPreferences.getInt("badge", 0);
        }
    }

    public void setBadge(int i) {
        this.value = i;
        setLauncherBadge(i);
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putInt("badge", i).apply();
        }
    }

    public void flushBadge() {
        setLauncherBadge(this.value);
    }
}
