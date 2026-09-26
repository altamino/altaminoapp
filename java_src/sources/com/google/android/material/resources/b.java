package com.google.android.material.resources;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public class b {
    @Nullable
    public static TypedValue a(@NonNull Context context, @AttrRes int i10) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean b(@NonNull Context context, @AttrRes int i10, boolean z6) {
        TypedValue typedValueA = a(context, i10);
        if (typedValueA != null && typedValueA.type == 18) {
            if (typedValueA.data != 0) {
                return true;
            }
            return false;
        }
        return z6;
    }

    public static int c(@NonNull Context context, @AttrRes int i10, int i11) {
        TypedValue typedValueA = a(context, i10);
        if (typedValueA != null && typedValueA.type == 16) {
            return typedValueA.data;
        }
        return i11;
    }

    public static int d(@NonNull Context context, @AttrRes int i10, @NonNull String str) {
        TypedValue typedValueA = a(context, i10);
        if (typedValueA != null) {
            return typedValueA.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i10)));
    }

    public static int e(@NonNull View view, @AttrRes int i10) {
        return d(view.getContext(), i10, view.getClass().getCanonicalName());
    }
}
