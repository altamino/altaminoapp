package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.TintTypedArray;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public final class s {
    private static final String APPCOMPAT_THEME_NAME = "Theme.AppCompat";
    private static final String MATERIAL_THEME_NAME = "Theme.MaterialComponents";
    private static final int[] APPCOMPAT_CHECK_ATTRS = {d3.b.colorPrimary};
    private static final int[] MATERIAL_CHECK_ATTRS = {d3.b.colorPrimaryVariant};

    public static void a(@NonNull Context context) {
        e(context, APPCOMPAT_CHECK_ATTRS, APPCOMPAT_THEME_NAME);
    }

    private static void b(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d3.l.ThemeEnforcement, i10, i11);
        boolean z6 = typedArrayObtainStyledAttributes.getBoolean(d3.l.ThemeEnforcement_enforceMaterialTheme, false);
        typedArrayObtainStyledAttributes.recycle();
        if (z6) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(d3.b.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                c(context);
            }
        }
        a(context);
    }

    public static void c(@NonNull Context context) {
        e(context, MATERIAL_CHECK_ATTRS, MATERIAL_THEME_NAME);
    }

    private static void d(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i10, @StyleRes int i11, @Nullable @StyleableRes int... iArr2) {
        boolean zF;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d3.l.ThemeEnforcement, i10, i11);
        if (!typedArrayObtainStyledAttributes.getBoolean(d3.l.ThemeEnforcement_enforceTextAppearance, false)) {
            typedArrayObtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 == null || iArr2.length == 0) {
            zF = typedArrayObtainStyledAttributes.getResourceId(d3.l.ThemeEnforcement_android_textAppearance, -1) != -1;
        } else {
            zF = f(context, attributeSet, iArr, i10, i11, iArr2);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!zF) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    private static void e(@NonNull Context context, @NonNull int[] iArr, String str) {
        if (g(context, iArr)) {
            return;
        }
        throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
    }

    private static boolean f(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i10, @StyleRes int i11, @NonNull @StyleableRes int... iArr2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, i11);
        for (int i12 : iArr2) {
            if (typedArrayObtainStyledAttributes.getResourceId(i12, -1) == -1) {
                typedArrayObtainStyledAttributes.recycle();
                return false;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return true;
    }

    private static boolean g(@NonNull Context context, @NonNull int[] iArr) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (!typedArrayObtainStyledAttributes.hasValue(i10)) {
                typedArrayObtainStyledAttributes.recycle();
                return false;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return true;
    }

    @NonNull
    public static TypedArray h(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i10, @StyleRes int i11, @StyleableRes int... iArr2) {
        b(context, attributeSet, i10, i11);
        d(context, attributeSet, iArr, i10, i11, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i10, i11);
    }

    public static TintTypedArray i(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i10, @StyleRes int i11, @StyleableRes int... iArr2) {
        b(context, attributeSet, i10, i11);
        d(context, attributeSet, iArr, i10, i11, iArr2);
        return TintTypedArray.v(context, attributeSet, iArr, i10, i11);
    }
}
