package com.narvii.scene.helper;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ScenePrefsHelper.kt */
/* loaded from: classes3.dex */
public final class ScenePrefsHelper {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_FIRST_EDIT = "first_edit";
    public static final String SHARED_PREFS_NAME = "scene";
    private SharedPreferences sps;

    /* compiled from: ScenePrefsHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public ScenePrefsHelper(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.sps = context.getSharedPreferences(SHARED_PREFS_NAME, 0);
    }

    public final boolean isFirstEdit() {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorPutBoolean;
        SharedPreferences sharedPreferences2 = this.sps;
        Boolean boolValueOf = sharedPreferences2 != null ? Boolean.valueOf(sharedPreferences2.getBoolean(KEY_FIRST_EDIT, true)) : null;
        if (boolValueOf != null) {
            if (boolValueOf.booleanValue() && (sharedPreferences = this.sps) != null && (editorEdit = sharedPreferences.edit()) != null && (editorPutBoolean = editorEdit.putBoolean(KEY_FIRST_EDIT, false)) != null) {
                editorPutBoolean.apply();
            }
            return boolValueOf.booleanValue();
        }
        Intrinsics.throwNpe();
        throw null;
    }
}
