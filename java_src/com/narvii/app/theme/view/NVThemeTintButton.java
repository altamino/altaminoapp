package com.narvii.app.theme.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.app.theme.NVThemeObserver;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NVThemeTintButton.kt */
/* loaded from: classes2.dex */
public final class NVThemeTintButton extends TintButton implements NVThemeObserver {
    private HashMap _$_findViewCache;
    private ColorStateList darkTintColor;
    private ColorStateList lightTintColor;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NVThemeTintButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVDarkTheme);
        this.darkTintColor = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.NVDarkTheme_nv_dark_tintColor);
        typedArrayObtainStyledAttributes.recycle();
        this.lightTintColor = getTintColorStateList();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NVThemeTintButton(Context context) {
        this(context, null);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NVThemeTintButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    @Override // com.narvii.app.theme.NVThemeObserver
    public void onThemeChange(int i) {
        ColorStateList colorStateList;
        if (i != 1) {
            if (i == 2 && (colorStateList = this.darkTintColor) != null) {
                setTintColor(colorStateList);
                return;
            }
            return;
        }
        ColorStateList colorStateList2 = this.lightTintColor;
        if (colorStateList2 != null) {
            setTintColor(colorStateList2);
        }
    }
}
