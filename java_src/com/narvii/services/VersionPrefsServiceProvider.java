package com.narvii.services;

import android.content.SharedPreferences;
import com.narvii.app.NVContext;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;

/* loaded from: classes.dex */
public class VersionPrefsServiceProvider implements AutostartServiceProvider<SharedPreferences> {
    public static final String KEY_FIRST_LAUNCH_TIME = "firstLaunchTime";
    public static final String KEY_LAUNCH_COUNT = "launchCount";

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, SharedPreferences sharedPreferences) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, SharedPreferences sharedPreferences) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, SharedPreferences sharedPreferences) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, SharedPreferences sharedPreferences) {
    }

    @Override // com.narvii.services.ServiceProvider
    public SharedPreferences create(NVContext nVContext) {
        SharedPreferences sharedPreferences = nVContext.getContext().getSharedPreferences("versionPrefs", 0);
        String versionName = new PackageUtils(nVContext.getContext()).getVersionName();
        if (!Utils.isEquals(sharedPreferences.getString("_version", null), versionName)) {
            sharedPreferences.edit().clear().putString("_version", versionName).commit();
        }
        return sharedPreferences;
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, SharedPreferences sharedPreferences) {
        int i = sharedPreferences.getInt(KEY_LAUNCH_COUNT, 0);
        long j = sharedPreferences.getLong(KEY_FIRST_LAUNCH_TIME, 0L);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putInt(KEY_LAUNCH_COUNT, i + 1);
        if (j == 0) {
            editorEdit.putLong(KEY_FIRST_LAUNCH_TIME, System.currentTimeMillis());
        }
        editorEdit.commit();
    }
}
