package com.narvii.app.theme.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.app.theme.NVThemeObserver;
import com.narvii.app.theme.view.NVThemeView;
import com.narvii.lib.R;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NVThemeFrameLayout.kt */
/* loaded from: classes2.dex */
public class NVThemeFrameLayout extends FrameLayout implements NVThemeObserver, NVDarkBackground {
    private HashMap _$_findViewCache;
    private Drawable darkBackgroundDrawable;
    private Drawable lightBackgroundDrawable;
    private int nvThemeValue;

    public NVThemeFrameLayout(Context context) {
        this(context, null, 0, 6, null);
    }

    public NVThemeFrameLayout(Context context, AttributeSet attributeSet) {
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
    public NVThemeFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.nvThemeValue = 1;
        TypedArray a = context.obtainStyledAttributes(attributeSet, R.styleable.NVDarkTheme);
        NVThemeView.Companion companion = NVThemeView.Companion;
        Intrinsics.checkExpressionValueIsNotNull(a, "a");
        this.darkBackgroundDrawable = companion.getDarkBackgroundDrawable(a, context);
        a.recycle();
        this.lightBackgroundDrawable = getBackground();
    }

    public /* synthetic */ NVThemeFrameLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // com.narvii.app.theme.NVThemeObserver
    public void onThemeChange(int i) {
        Drawable drawable;
        this.nvThemeValue = i;
        if (i != 1) {
            if (i == 2 && (drawable = this.darkBackgroundDrawable) != null) {
                setBackground(drawable);
                return;
            }
            return;
        }
        Drawable drawable2 = this.lightBackgroundDrawable;
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

    public boolean isDarkNvTheme() {
        return this.nvThemeValue == 2;
    }
}
