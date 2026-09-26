package com.narvii.app.theme.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.app.theme.NVThemeObserver;
import com.narvii.lib.R;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class NVThemeView extends View implements NVThemeObserver, NVDarkBackground {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private Drawable darkBackgroundDrawable;

    @Nullable
    private Drawable lightBackgroundDrawable;
    private int nvThemeValue;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @Nullable
        public final Drawable getDarkBackgroundDrawable(@NotNull TypedArray a7, @NotNull Context context) {
            t.j(a7, "a");
            t.j(context, "context");
            return a7.getDrawable(R.styleable.NVDarkTheme_nv_dark_background);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NVThemeView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        t.j(context, "context");
    }

    private final boolean isDarkNvTheme() {
        return this.nvThemeValue == 2;
    }

    @Override // com.narvii.app.theme.NVThemeObserver
    public void onThemeChange(int i10) {
        Drawable drawable;
        if (i10 != 1) {
            if (i10 == 2 && (drawable = this.darkBackgroundDrawable) != null) {
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NVThemeView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    @Override // com.narvii.app.theme.view.NVDarkBackground
    public void setDarkBackgroundDrawable(@Nullable Drawable drawable) {
        this.darkBackgroundDrawable = drawable;
        if (isDarkNvTheme()) {
            setBackground(this.darkBackgroundDrawable);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NVThemeView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.nvThemeValue = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVDarkTheme);
        t.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.darkBackgroundDrawable = Companion.getDarkBackgroundDrawable(typedArrayObtainStyledAttributes, context);
        typedArrayObtainStyledAttributes.recycle();
        this.lightBackgroundDrawable = getBackground();
    }

    public /* synthetic */ NVThemeView(Context context, AttributeSet attributeSet, int i10, int i11, k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
