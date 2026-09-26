package com.narvii.scene.helper;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class ScenePrefsHelper {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String KEY_FIRST_EDIT = "first_edit";

    @NotNull
    public static final String SHARED_PREFS_NAME = "scene";

    @Nullable
    private SharedPreferences sps;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public ScenePrefsHelper(@NotNull Context context) {
        t.j(context, "context");
        this.sps = context.getSharedPreferences(SHARED_PREFS_NAME, 0);
    }

    public final boolean isFirstEdit() {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorPutBoolean;
        SharedPreferences sharedPreferences2 = this.sps;
        Boolean boolValueOf = sharedPreferences2 != null ? Boolean.valueOf(sharedPreferences2.getBoolean(KEY_FIRST_EDIT, true)) : null;
        t.g(boolValueOf);
        if (boolValueOf.booleanValue() && (sharedPreferences = this.sps) != null && (editorEdit = sharedPreferences.edit()) != null && (editorPutBoolean = editorEdit.putBoolean(KEY_FIRST_EDIT, false)) != null) {
            editorPutBoolean.apply();
        }
        return boolValueOf.booleanValue();
    }
}
