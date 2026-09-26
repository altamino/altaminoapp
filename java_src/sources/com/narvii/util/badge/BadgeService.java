package com.narvii.util.badge;

import android.content.SharedPreferences;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;

/* JADX INFO: loaded from: classes9.dex */
public abstract class BadgeService {
    protected final NVContext context;
    SharedPreferences prefs;
    int value;

    public abstract boolean isBadgeAvailable();

    protected abstract void setLauncherBadge(int i10);

    public void flushBadge() {
        setLauncherBadge(this.value);
    }

    public void setBadge(int i10) {
        this.value = i10;
        setLauncherBadge(i10);
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putInt("badge", i10).apply();
        }
    }

    public BadgeService(NVContext nVContext) {
        this.context = nVContext;
        SharedPreferences sharedPreferences = (SharedPreferences) nVContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
        this.prefs = sharedPreferences;
        if (sharedPreferences != null) {
            this.value = sharedPreferences.getInt("badge", 0);
        }
    }
}
