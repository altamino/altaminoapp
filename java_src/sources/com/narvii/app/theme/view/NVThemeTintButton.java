package com.narvii.app.theme.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.narvii.app.theme.NVThemeObserver;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class NVThemeTintButton extends TintButton implements NVThemeObserver {

    @Nullable
    private ColorStateList darkTintColor;

    @Nullable
    private ColorStateList lightTintColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NVThemeTintButton(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        t.j(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVDarkTheme);
        t.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.darkTintColor = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.NVDarkTheme_nv_dark_tintColor);
        typedArrayObtainStyledAttributes.recycle();
        this.lightTintColor = getTintColorStateList();
    }

    @Override // com.narvii.app.theme.NVThemeObserver
    public void onThemeChange(int i10) {
        ColorStateList colorStateList;
        if (i10 != 1) {
            if (i10 == 2 && (colorStateList = this.darkTintColor) != null) {
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NVThemeTintButton(@NotNull Context context) {
        this(context, null);
        t.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NVThemeTintButton(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        t.j(context, "context");
    }
}
