package com.narvii.amino;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CommunityPreferenceHelper.kt */
/* loaded from: classes2.dex */
public final class CommunityPreferenceHelper {
    private final String PREFS_JOIN_AMINO_SHOWED;
    private final SharedPreferences prefs;

    public CommunityPreferenceHelper(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.PREFS_JOIN_AMINO_SHOWED = "prefs_join_amino_show_before";
        SharedPreferences sharedPreferences = context.getSharedPreferences("amino", 0);
        Intrinsics.checkExpressionValueIsNotNull(sharedPreferences, "context.getSharedPrefere…o\", Context.MODE_PRIVATE)");
        this.prefs = sharedPreferences;
    }

    public final String getPREFS_JOIN_AMINO_SHOWED() {
        return this.PREFS_JOIN_AMINO_SHOWED;
    }

    public final SharedPreferences getPrefs() {
        return this.prefs;
    }

    public final boolean getJoinAminoShowBefore() {
        return this.prefs.getBoolean(this.PREFS_JOIN_AMINO_SHOWED, false);
    }

    public final void setJoinAminoShowBefore(boolean z) {
        this.prefs.edit().putBoolean(this.PREFS_JOIN_AMINO_SHOWED, z).apply();
    }
}
