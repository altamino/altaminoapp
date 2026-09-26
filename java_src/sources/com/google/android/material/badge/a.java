package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.p;
import com.google.android.material.internal.s;
import com.google.android.material.resources.d;
import com.google.android.material.shape.g;
import d3.f;
import d3.j;
import d3.k;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;

/* JADX INFO: loaded from: classes5.dex */
public class a extends Drawable implements p.b {
    public static final int BOTTOM_END = 8388693;
    public static final int BOTTOM_START = 8388691;
    static final String DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX = "+";

    @StyleRes
    private static final int DEFAULT_STYLE = k.Widget_MaterialComponents_Badge;

    @AttrRes
    private static final int DEFAULT_THEME_ATTR = d3.b.badgeStyle;
    private static final int MAX_CIRCULAR_BADGE_NUMBER_COUNT = 9;
    public static final int TOP_END = 8388661;
    public static final int TOP_START = 8388659;

    @Nullable
    private WeakReference<View> anchorViewRef;

    @NonNull
    private final Rect badgeBounds;
    private float badgeCenterX;
    private float badgeCenterY;

    @NonNull
    private final WeakReference<Context> contextRef;
    private float cornerRadius;

    @Nullable
    private WeakReference<FrameLayout> customBadgeParentRef;
    private float halfBadgeHeight;
    private float halfBadgeWidth;
    private int maxBadgeNumber;

    @NonNull
    private final g shapeDrawable;

    @NonNull
    private final BadgeState state;

    @NonNull
    private final p textDrawableHelper;

    /* JADX INFO: renamed from: com.google.android.material.badge.a$a, reason: collision with other inner class name */
    class RunnableC0196a implements Runnable {
        final /* synthetic */ View val$anchorView;
        final /* synthetic */ FrameLayout val$frameLayout;

        RunnableC0196a(View view, FrameLayout frameLayout) {
            this.val$anchorView = view;
            this.val$frameLayout = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.A(this.val$anchorView, this.val$frameLayout);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    private void B() {
        Context context = this.contextRef.get();
        WeakReference<View> weakReference = this.anchorViewRef;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.badgeBounds);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.customBadgeParentRef;
        FrameLayout frameLayout = weakReference2 != null ? weakReference2.get() : null;
        if (frameLayout != null || c.USE_COMPAT_PARENT) {
            if (frameLayout == null) {
                frameLayout = (ViewGroup) view.getParent();
            }
            frameLayout.offsetDescendantRectToMyCoords(view, rect2);
        }
        b(context, rect2, view);
        c.f(this.badgeBounds, this.badgeCenterX, this.badgeCenterY, this.halfBadgeWidth, this.halfBadgeHeight);
        this.shapeDrawable.W(this.cornerRadius);
        if (rect.equals(this.badgeBounds)) {
            return;
        }
        this.shapeDrawable.setBounds(this.badgeBounds);
    }

    @NonNull
    static a c(@NonNull Context context, @NonNull BadgeState.State state) {
        return new a(context, 0, DEFAULT_THEME_ATTR, DEFAULT_STYLE, state);
    }

    private void d(Canvas canvas) {
        Rect rect = new Rect();
        String strE = e();
        this.textDrawableHelper.e().getTextBounds(strE, 0, strE.length(), rect);
        canvas.drawText(strE, this.badgeCenterX, this.badgeCenterY + (rect.height() / 2), this.textDrawableHelper.e());
    }

    private void o() {
        this.textDrawableHelper.e().setAlpha(getAlpha());
        invalidateSelf();
    }

    private void p() {
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(this.state.e());
        if (this.shapeDrawable.x() != colorStateListValueOf) {
            this.shapeDrawable.Z(colorStateListValueOf);
            invalidateSelf();
        }
    }

    private void q() {
        WeakReference<View> weakReference = this.anchorViewRef;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = this.anchorViewRef.get();
        WeakReference<FrameLayout> weakReference2 = this.customBadgeParentRef;
        A(view, weakReference2 != null ? weakReference2.get() : null);
    }

    private void r() {
        this.textDrawableHelper.e().setColor(this.state.g());
        invalidateSelf();
    }

    private void t() {
        this.textDrawableHelper.i(true);
        B();
        invalidateSelf();
    }

    private void u() {
        boolean zT = this.state.t();
        setVisible(zT, false);
        if (!c.USE_COMPAT_PARENT || g() == null || zT) {
            return;
        }
        ((ViewGroup) g().getParent()).invalidate();
    }

    private void w(@Nullable d dVar) {
        Context context;
        if (this.textDrawableHelper.d() == dVar || (context = this.contextRef.get()) == null) {
            return;
        }
        this.textDrawableHelper.h(dVar, context);
        B();
    }

    private void x(@StyleRes int i10) {
        Context context = this.contextRef.get();
        if (context == null) {
            return;
        }
        w(new d(context, i10));
    }

    public void A(@NonNull View view, @Nullable FrameLayout frameLayout) {
        this.anchorViewRef = new WeakReference<>(view);
        boolean z6 = c.USE_COMPAT_PARENT;
        if (z6 && frameLayout == null) {
            y(view);
        } else {
            this.customBadgeParentRef = new WeakReference<>(frameLayout);
        }
        if (!z6) {
            z(view);
        }
        B();
        invalidateSelf();
    }

    @Nullable
    public FrameLayout g() {
        WeakReference<FrameLayout> weakReference = this.customBadgeParentRef;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.state.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.badgeBounds.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.badgeBounds.width();
    }

    public int h() {
        return this.state.l();
    }

    public int i() {
        return this.state.m();
    }

    @NonNull
    BadgeState.State k() {
        return this.state.p();
    }

    public boolean n() {
        return this.state.s();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.state.v(i10);
        o();
    }

    private a(@NonNull Context context, @XmlRes int i10, @AttrRes int i11, @StyleRes int i12, @Nullable BadgeState.State state) {
        this.contextRef = new WeakReference<>(context);
        s.c(context);
        this.badgeBounds = new Rect();
        this.shapeDrawable = new g();
        p pVar = new p(this);
        this.textDrawableHelper = pVar;
        pVar.e().setTextAlign(Paint.Align.CENTER);
        x(k.TextAppearance_MaterialComponents_Badge);
        this.state = new BadgeState(context, i10, i11, i12, state);
        v();
    }

    private void C() {
        this.maxBadgeNumber = ((int) Math.pow(10.0d, ((double) i()) - 1.0d)) - 1;
    }

    private void b(@NonNull Context context, @NonNull Rect rect, @NonNull View view) {
        int i10;
        float f;
        float f6;
        float f7;
        int iM = m();
        int iF = this.state.f();
        if (iF != 8388691 && iF != 8388693) {
            this.badgeCenterY = rect.top + iM;
        } else {
            this.badgeCenterY = rect.bottom - iM;
        }
        if (j() <= 9) {
            if (!n()) {
                f7 = this.state.badgeRadius;
            } else {
                f7 = this.state.badgeWithTextRadius;
            }
            this.cornerRadius = f7;
            this.halfBadgeHeight = f7;
            this.halfBadgeWidth = f7;
        } else {
            float f10 = this.state.badgeWithTextRadius;
            this.cornerRadius = f10;
            this.halfBadgeHeight = f10;
            this.halfBadgeWidth = (this.textDrawableHelper.f(e()) / 2.0f) + this.state.badgeWidePadding;
        }
        Resources resources = context.getResources();
        if (n()) {
            i10 = d3.d.mtrl_badge_text_horizontal_edge_offset;
        } else {
            i10 = d3.d.mtrl_badge_horizontal_edge_offset;
        }
        int dimensionPixelSize = resources.getDimensionPixelSize(i10);
        int iL = l();
        int iF2 = this.state.f();
        if (iF2 != 8388659 && iF2 != 8388691) {
            if (ViewCompat.D(view) == 0) {
                f6 = ((rect.right + this.halfBadgeWidth) - dimensionPixelSize) - iL;
            } else {
                f6 = (rect.left - this.halfBadgeWidth) + dimensionPixelSize + iL;
            }
            this.badgeCenterX = f6;
            return;
        }
        if (ViewCompat.D(view) == 0) {
            f = (rect.left - this.halfBadgeWidth) + dimensionPixelSize + iL;
        } else {
            f = ((rect.right + this.halfBadgeWidth) - dimensionPixelSize) - iL;
        }
        this.badgeCenterX = f;
    }

    @NonNull
    private String e() {
        if (j() <= this.maxBadgeNumber) {
            return NumberFormat.getInstance(this.state.o()).format(j());
        }
        Context context = this.contextRef.get();
        if (context == null) {
            return "";
        }
        return String.format(this.state.o(), context.getString(j.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(this.maxBadgeNumber), "+");
    }

    private int l() {
        int iL;
        if (n()) {
            iL = this.state.k();
        } else {
            iL = this.state.l();
        }
        return iL + this.state.b();
    }

    private int m() {
        int iR;
        if (n()) {
            iR = this.state.q();
        } else {
            iR = this.state.r();
        }
        return iR + this.state.c();
    }

    private void s() {
        C();
        this.textDrawableHelper.i(true);
        B();
        invalidateSelf();
    }

    private void v() {
        s();
        t();
        o();
        p();
        r();
        q();
        B();
        u();
    }

    private void y(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != f.mtrl_anchor_parent) {
            WeakReference<FrameLayout> weakReference = this.customBadgeParentRef;
            if (weakReference != null && weakReference.get() == viewGroup) {
                return;
            }
            z(view);
            FrameLayout frameLayout = new FrameLayout(view.getContext());
            frameLayout.setId(f.mtrl_anchor_parent);
            frameLayout.setClipChildren(false);
            frameLayout.setClipToPadding(false);
            frameLayout.setLayoutParams(view.getLayoutParams());
            frameLayout.setMinimumWidth(view.getWidth());
            frameLayout.setMinimumHeight(view.getHeight());
            int iIndexOfChild = viewGroup.indexOfChild(view);
            viewGroup.removeViewAt(iIndexOfChild);
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            frameLayout.addView(view);
            viewGroup.addView(frameLayout, iIndexOfChild);
            this.customBadgeParentRef = new WeakReference<>(frameLayout);
            frameLayout.post(new RunnableC0196a(view, frameLayout));
        }
    }

    private static void z(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    @Override // com.google.android.material.internal.p.b
    @RestrictTo
    public void a() {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (!getBounds().isEmpty() && getAlpha() != 0 && isVisible()) {
            this.shapeDrawable.draw(canvas);
            if (n()) {
                d(canvas);
            }
        }
    }

    @Nullable
    public CharSequence f() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        if (n()) {
            if (this.state.j() == 0 || (context = this.contextRef.get()) == null) {
                return null;
            }
            if (j() <= this.maxBadgeNumber) {
                return context.getResources().getQuantityString(this.state.j(), j(), Integer.valueOf(j()));
            }
            return context.getString(this.state.h(), Integer.valueOf(this.maxBadgeNumber));
        }
        return this.state.i();
    }

    public int j() {
        if (n()) {
            return this.state.n();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.p.b
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }
}
