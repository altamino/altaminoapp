package com.narvii.master.launch;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class FirstLaunchRepository {

    @NotNull
    private final Context context;
    private final SharedPreferences preferences;

    public FirstLaunchRepository(@NotNull Context context) {
        t.j(context, "context");
        this.context = context;
        this.preferences = context.getSharedPreferences("com.aminapps.master.launch.first_launch", 0);
    }

    public final int getVersionCode() {
        return this.preferences.getInt("com.aminapps.master.launch.first_launch", -1);
    }

    public final void saveVersionCode(int i10) {
        this.preferences.edit().putInt("com.aminapps.master.launch.first_launch", i10).apply();
    }
}
