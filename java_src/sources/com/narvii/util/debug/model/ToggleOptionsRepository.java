package com.narvii.util.debug.model;

import android.content.Context;
import android.content.SharedPreferences;
import com.narvii.security.KeyStoreService;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ToggleOptionsRepository {
    private final SharedPreferences preferences;

    public ToggleOptionsRepository(@NotNull Context context) {
        t.j(context, "context");
        this.preferences = context.getSharedPreferences(KeyStoreService.TOGGLE_OPTIONS_PREF_KEY, 0);
    }

    public final boolean shouldAttestationFailure() {
        return this.preferences.getBoolean(KeyStoreService.ATTESTATION_FAILURE_KEY, false);
    }

    public final void updateAttestationFailure(boolean z6) {
        this.preferences.edit().putBoolean(KeyStoreService.ATTESTATION_FAILURE_KEY, z6).apply();
    }
}
