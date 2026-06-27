package com.narvii.app.theme.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.narvii.app.theme.NVThemeObserver;
import com.narvii.lib.R;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NVThemeTextView.kt */
/* loaded from: classes2.dex */
public final class NVThemeTextView extends TextView implements NVThemeObserver, NVDarkBackground {
    public static final Companion Companion = new Companion(null);
    private HashMap _$_findViewCache;
    private Drawable darkBackgroundDrawable;
    private ColorStateList darkTextColor;
    private Drawable lightBackgroundDrawable;
    private ColorStateList lightTextColor;
    private int nvThemeValue;

    public NVThemeTextView(Context context) {
        this(context, null, 0, 6, null);
    }

    public NVThemeTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

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
    public NVThemeTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.nvThemeValue = 1;
        TypedArray a = context.obtainStyledAttributes(attributeSet, R.styleable.NVDarkTheme);
        Companion companion = Companion;
        Intrinsics.checkExpressionValueIsNotNull(a, "a");
        this.darkTextColor = companion.getDarkTextColor(a, context);
        this.darkBackgroundDrawable = NVThemeView.Companion.getDarkBackgroundDrawable(a, context);
        a.recycle();
        this.lightTextColor = getTextColors();
        this.lightBackgroundDrawable = getBackground();
    }

    public /* synthetic */ NVThemeTextView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* compiled from: NVThemeTextView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ColorStateList getDarkTextColor(TypedArray a, Context context) {
            Intrinsics.checkParameterIsNotNull(a, "a");
            Intrinsics.checkParameterIsNotNull(context, "context");
            return a.getColorStateList(R.styleable.NVDarkTheme_nv_dark_textColor);
        }
    }

    @Override // com.narvii.app.theme.NVThemeObserver
    public void onThemeChange(int i) {
        if (i == 1) {
            ColorStateList colorStateList = this.lightTextColor;
            if (colorStateList != null) {
                setTextColor(colorStateList);
            }
            Drawable drawable = this.lightBackgroundDrawable;
            if (drawable != null) {
                setBackground(drawable);
                return;
            }
            return;
        }
        if (i != 2) {
            return;
        }
        ColorStateList colorStateList2 = this.darkTextColor;
        if (colorStateList2 != null) {
            setTextColor(colorStateList2);
        }
        Drawable drawable2 = this.darkBackgroundDrawable;
        if (drawable2 != null) {
            setBackground(drawable2);
        }
    }

    @Override // com.narvii.app.theme.view.NVDarkBackground
    public void setDarkBackgroundDrawable(Drawable drawable) {
        this.darkBackgroundDrawable = drawable;
        if (isDarkNvTheme()) {
            setBackground(this.darkBackgroundDrawable);
        }
    }

    private final boolean isDarkNvTheme() {
        return this.nvThemeValue == 2;
    }
}
