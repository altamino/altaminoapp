package com.narvii.app.theme.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import com.narvii.app.theme.NVThemeObserver;
import com.narvii.lib.R;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class NVThemeButton extends Button implements NVThemeObserver {

    @Nullable
    private Drawable darkBackgroundDrawable;

    @Nullable
    private ColorStateList darkTextColor;

    @Nullable
    private Drawable lightBackgroundDrawable;

    @Nullable
    private ColorStateList lightTextColor;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NVThemeButton(@NotNull Context context) {
        this(context, null, 0, 6, null);
        t.j(context, "context");
    }

    @Override // com.narvii.app.theme.NVThemeObserver
    public void onThemeChange(int i10) {
        if (i10 == 1) {
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
        if (i10 != 2) {
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NVThemeButton(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NVThemeButton(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVDarkTheme);
        t.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.darkTextColor = NVThemeTextView.Companion.getDarkTextColor(typedArrayObtainStyledAttributes, context);
        this.darkBackgroundDrawable = NVThemeView.Companion.getDarkBackgroundDrawable(typedArrayObtainStyledAttributes, context);
        typedArrayObtainStyledAttributes.recycle();
        this.lightTextColor = getTextColors();
        this.lightBackgroundDrawable = getBackground();
    }

    public /* synthetic */ NVThemeButton(Context context, AttributeSet attributeSet, int i10, int i11, k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
