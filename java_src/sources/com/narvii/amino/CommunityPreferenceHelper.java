package com.narvii.amino;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class CommunityPreferenceHelper {

    @NotNull
    private final String PREFS_JOIN_AMINO_SHOWED;

    @NotNull
    private final SharedPreferences prefs;

    @NotNull
    public final String getPREFS_JOIN_AMINO_SHOWED() {
        return this.PREFS_JOIN_AMINO_SHOWED;
    }

    @NotNull
    public final SharedPreferences getPrefs() {
        return this.prefs;
    }

    public CommunityPreferenceHelper(@NotNull Context context) {
        t.j(context, "context");
        this.PREFS_JOIN_AMINO_SHOWED = "prefs_join_amino_show_before";
        SharedPreferences sharedPreferences = context.getSharedPreferences("amino", 0);
        t.i(sharedPreferences, "getSharedPreferences(...)");
        this.prefs = sharedPreferences;
    }

    public final boolean getJoinAminoShowBefore() {
        return this.prefs.getBoolean(this.PREFS_JOIN_AMINO_SHOWED, false);
    }

    public final void setJoinAminoShowBefore(boolean z6) {
        this.prefs.edit().putBoolean(this.PREFS_JOIN_AMINO_SHOWED, z6).apply();
    }
}
