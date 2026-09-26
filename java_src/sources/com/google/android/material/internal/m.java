package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class m extends FrameLayout {
    private boolean drawBottomInsetForeground;
    private boolean drawTopInsetForeground;

    @Nullable
    Drawable insetForeground;
    Rect insets;
    private Rect tempRect;

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            m mVar = m.this;
            if (mVar.insets == null) {
                mVar.insets = new Rect();
            }
            m.this.insets.set(windowInsetsCompat.k(), windowInsetsCompat.m(), windowInsetsCompat.l(), windowInsetsCompat.j());
            m.this.a(windowInsetsCompat);
            m.this.setWillNotDraw(!windowInsetsCompat.n() || m.this.insetForeground == null);
            ViewCompat.k0(m.this);
            return windowInsetsCompat.c();
        }
    }

    public m(@NonNull Context context) {
        this(context, null);
    }

    protected void a(WindowInsetsCompat windowInsetsCompat) {
    }

    public void setDrawBottomInsetForeground(boolean z6) {
        this.drawBottomInsetForeground = z6;
    }

    public void setDrawTopInsetForeground(boolean z6) {
        this.drawTopInsetForeground = z6;
    }

    public void setScrimInsetForeground(@Nullable Drawable drawable) {
        this.insetForeground = drawable;
    }

    public m(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public m(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.tempRect = new Rect();
        this.drawTopInsetForeground = true;
        this.drawBottomInsetForeground = true;
        TypedArray typedArrayH = s.h(context, attributeSet, d3.l.ScrimInsetsFrameLayout, i10, d3.k.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.insetForeground = typedArrayH.getDrawable(d3.l.ScrimInsetsFrameLayout_insetForeground);
        typedArrayH.recycle();
        setWillNotDraw(true);
        ViewCompat.L0(this, new a());
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.insets != null && this.insetForeground != null) {
            int iSave = canvas.save();
            canvas.translate(getScrollX(), getScrollY());
            if (this.drawTopInsetForeground) {
                this.tempRect.set(0, 0, width, this.insets.top);
                this.insetForeground.setBounds(this.tempRect);
                this.insetForeground.draw(canvas);
            }
            if (this.drawBottomInsetForeground) {
                this.tempRect.set(0, height - this.insets.bottom, width, height);
                this.insetForeground.setBounds(this.tempRect);
                this.insetForeground.draw(canvas);
            }
            Rect rect = this.tempRect;
            Rect rect2 = this.insets;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            this.insetForeground.setBounds(this.tempRect);
            this.insetForeground.draw(canvas);
            Rect rect3 = this.tempRect;
            Rect rect4 = this.insets;
            rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
            this.insetForeground.setBounds(this.tempRect);
            this.insetForeground.draw(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.insetForeground;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.insetForeground;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }
}
