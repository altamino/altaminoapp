package com.airbnb.lottie;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public class f extends Drawable implements Drawable.Callback {
    private static final String TAG = "f";
    private int alpha;
    private final com.airbnb.lottie.utils.c animator;
    private final Set<e> colorFilterData;
    private com.airbnb.lottie.e composition;

    @Nullable
    private com.airbnb.lottie.model.layer.b compositionLayer;
    private boolean enableMergePaths;

    @Nullable
    com.airbnb.lottie.b fontAssetDelegate;

    @Nullable
    private i0.a fontAssetManager;

    @Nullable
    private com.airbnb.lottie.c imageAssetDelegate;

    @Nullable
    private i0.b imageAssetManager;

    @Nullable
    private String imageAssetsFolder;
    private final ArrayList<InterfaceC0109f> lazyCompositionTasks;
    private final Matrix matrix = new Matrix();
    private boolean performanceTrackingEnabled;
    private float scale;
    private float speed;
    private boolean systemAnimationsAreDisabled;

    @Nullable
    l textDelegate;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (f.this.compositionLayer != null) {
                f.this.compositionLayer.v(f.this.animator.i());
            }
        }
    }

    class b implements InterfaceC0109f {
        final /* synthetic */ boolean val$resetProgress;

        b(boolean z6) {
            this.val$resetProgress = z6;
        }

        @Override // com.airbnb.lottie.f.InterfaceC0109f
        public void a(com.airbnb.lottie.e eVar) {
            f.this.B(this.val$resetProgress);
        }
    }

    class c implements InterfaceC0109f {
        final /* synthetic */ int val$minFrame;

        c(int i10) {
            this.val$minFrame = i10;
        }

        @Override // com.airbnb.lottie.f.InterfaceC0109f
        public void a(com.airbnb.lottie.e eVar) {
            f.this.K(this.val$minFrame);
        }
    }

    class d implements InterfaceC0109f {
        final /* synthetic */ int val$maxFrame;

        d(int i10) {
            this.val$maxFrame = i10;
        }

        @Override // com.airbnb.lottie.f.InterfaceC0109f
        public void a(com.airbnb.lottie.e eVar) {
            f.this.I(this.val$maxFrame);
        }
    }

    private static class e {

        @Nullable
        final ColorFilter colorFilter;

        @Nullable
        final String contentName;
        final String layerName;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return hashCode() == eVar.hashCode() && this.colorFilter == eVar.colorFilter;
        }

        public int hashCode() {
            String str = this.layerName;
            int iHashCode = str != null ? 527 * str.hashCode() : 17;
            String str2 = this.contentName;
            return str2 != null ? iHashCode * 31 * str2.hashCode() : iHashCode;
        }

        e(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
            this.layerName = str;
            this.contentName = str2;
            this.colorFilter = colorFilter;
        }
    }

    /* JADX INFO: renamed from: com.airbnb.lottie.f$f, reason: collision with other inner class name */
    private interface InterfaceC0109f {
        void a(com.airbnb.lottie.e eVar);
    }

    public void A() {
        B(true);
    }

    public void H(@Nullable String str) {
        this.imageAssetsFolder = str;
    }

    public void Q(l lVar) {
        this.textDelegate = lVar;
    }

    void R() {
        this.systemAnimationsAreDisabled = true;
        this.animator.p();
    }

    public void d(ColorFilter colorFilter) {
        e(null, null, colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.alpha;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public boolean k() {
        return this.enableMergePaths;
    }

    public com.airbnb.lottie.e l() {
        return this.composition;
    }

    @Nullable
    public String q() {
        return this.imageAssetsFolder;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange int i10) {
        this.alpha = i10;
    }

    public float u() {
        return this.scale;
    }

    @Nullable
    public l v() {
        return this.textDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(boolean z6) {
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new b(z6));
        } else if (z6) {
            this.animator.start();
        } else {
            this.animator.j();
        }
    }

    private void S() {
        if (this.composition == null) {
            return;
        }
        float fU = u();
        setBounds(0, 0, (int) (this.composition.h().width() * fU), (int) (this.composition.h().height() * fU));
    }

    private void e(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        e eVar = new e(str, str2, colorFilter);
        if (colorFilter == null && this.colorFilterData.contains(eVar)) {
            this.colorFilterData.remove(eVar);
        } else {
            this.colorFilterData.add(new e(str, str2, colorFilter));
        }
        com.airbnb.lottie.model.layer.b bVar = this.compositionLayer;
        if (bVar == null) {
            return;
        }
        bVar.b(str, str2, colorFilter);
    }

    private void f() {
        if (this.compositionLayer == null) {
            return;
        }
        for (e eVar : this.colorFilterData) {
            this.compositionLayer.b(eVar.layerName, eVar.contentName, eVar.colorFilter);
        }
    }

    private void g() {
        this.compositionLayer = new com.airbnb.lottie.model.layer.b(this, com.airbnb.lottie.model.layer.d.b.a(this.composition), this.composition.p(), this.composition);
    }

    public void C() {
        i0.b bVar = this.imageAssetManager;
        if (bVar != null) {
            bVar.c();
        }
    }

    public void D() {
        B(this.animator.getAnimatedFraction() == this.animator.g() || this.systemAnimationsAreDisabled);
    }

    public boolean E(com.airbnb.lottie.e eVar) {
        if (this.composition == eVar) {
            return false;
        }
        i();
        this.composition = eVar;
        P(this.speed);
        O(this.scale);
        S();
        g();
        f();
        Iterator it = new ArrayList(this.lazyCompositionTasks).iterator();
        while (it.hasNext()) {
            ((InterfaceC0109f) it.next()).a(eVar);
            it.remove();
        }
        this.lazyCompositionTasks.clear();
        eVar.x(this.performanceTrackingEnabled);
        this.animator.f();
        return true;
    }

    public void F(com.airbnb.lottie.b bVar) {
        this.fontAssetDelegate = bVar;
        i0.a aVar = this.fontAssetManager;
        if (aVar != null) {
            aVar.c(bVar);
        }
    }

    public void G(com.airbnb.lottie.c cVar) {
        i0.b bVar = this.imageAssetManager;
        if (bVar != null) {
            bVar.d(cVar);
        }
    }

    public void I(int i10) {
        com.airbnb.lottie.e eVar = this.composition;
        if (eVar == null) {
            this.lazyCompositionTasks.add(new d(i10));
        } else {
            J(i10 / eVar.l());
        }
    }

    public void J(float f) {
        this.animator.l(f);
    }

    public void K(int i10) {
        com.airbnb.lottie.e eVar = this.composition;
        if (eVar == null) {
            this.lazyCompositionTasks.add(new c(i10));
        } else {
            L(i10 / eVar.l());
        }
    }

    public void L(float f) {
        this.animator.m(f);
    }

    public void M(boolean z6) {
        this.performanceTrackingEnabled = z6;
        com.airbnb.lottie.e eVar = this.composition;
        if (eVar != null) {
            eVar.x(z6);
        }
    }

    public void N(@FloatRange float f) {
        this.animator.n(f);
        com.airbnb.lottie.model.layer.b bVar = this.compositionLayer;
        if (bVar != null) {
            bVar.v(f);
        }
    }

    public void O(float f) {
        this.scale = f;
        S();
    }

    public void P(float f) {
        this.speed = f;
        this.animator.k(f < 0.0f);
        com.airbnb.lottie.e eVar = this.composition;
        if (eVar != null) {
            this.animator.setDuration((long) (eVar.k() / Math.abs(f)));
        }
    }

    public boolean T() {
        return this.textDelegate == null && this.composition.i().r() > 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        float f;
        com.airbnb.lottie.d.a("Drawable#draw");
        if (this.compositionLayer == null) {
            return;
        }
        float f6 = this.scale;
        float fR = r(canvas);
        if (f6 > fR) {
            f = this.scale / fR;
        } else {
            fR = f6;
            f = 1.0f;
        }
        if (f > 1.0f) {
            canvas.save();
            float fWidth = this.composition.h().width() / 2.0f;
            float fHeight = this.composition.h().height() / 2.0f;
            float f7 = fWidth * fR;
            float f10 = fHeight * fR;
            canvas.translate((u() * fWidth) - f7, (u() * fHeight) - f10);
            canvas.scale(f, f, f7, f10);
        }
        this.matrix.reset();
        this.matrix.preScale(fR, fR);
        this.compositionLayer.d(canvas, this.matrix, this.alpha);
        com.airbnb.lottie.d.b("Drawable#draw");
        if (f > 1.0f) {
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        com.airbnb.lottie.e eVar = this.composition;
        if (eVar == null) {
            return -1;
        }
        return (int) (eVar.h().height() * u());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        com.airbnb.lottie.e eVar = this.composition;
        if (eVar == null) {
            return -1;
        }
        return (int) (eVar.h().width() * u());
    }

    public void h() {
        this.lazyCompositionTasks.clear();
        this.animator.cancel();
    }

    public void j(boolean z6) {
        this.enableMergePaths = z6;
        if (this.composition != null) {
            g();
        }
    }

    @Nullable
    public i s() {
        com.airbnb.lottie.e eVar = this.composition;
        if (eVar != null) {
            return eVar.t();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        throw new UnsupportedOperationException("Use addColorFilter instead.");
    }

    public float t() {
        return this.animator.i();
    }

    public boolean x() {
        return this.animator.isRunning();
    }

    public boolean y() {
        return this.animator.getRepeatCount() == -1;
    }

    public void z(boolean z6) {
        this.animator.setRepeatCount(z6 ? -1 : 0);
    }

    public f() {
        com.airbnb.lottie.utils.c cVar = new com.airbnb.lottie.utils.c();
        this.animator = cVar;
        this.speed = 1.0f;
        this.scale = 1.0f;
        this.colorFilterData = new HashSet();
        this.lazyCompositionTasks = new ArrayList<>();
        this.alpha = 255;
        cVar.setRepeatCount(0);
        cVar.setInterpolator(new LinearInterpolator());
        cVar.addUpdateListener(new a());
    }

    private void i() {
        C();
        this.compositionLayer = null;
        this.imageAssetManager = null;
        invalidateSelf();
    }

    @Nullable
    private Context m() {
        Drawable.Callback callback = getCallback();
        if (callback == null || !(callback instanceof View)) {
            return null;
        }
        return ((View) callback).getContext();
    }

    private i0.a n() {
        if (getCallback() == null) {
            return null;
        }
        if (this.fontAssetManager == null) {
            this.fontAssetManager = new i0.a(getCallback(), this.fontAssetDelegate);
        }
        return this.fontAssetManager;
    }

    private i0.b p() {
        if (getCallback() == null) {
            return null;
        }
        i0.b bVar = this.imageAssetManager;
        if (bVar != null && !bVar.b(m())) {
            this.imageAssetManager.c();
            this.imageAssetManager = null;
        }
        if (this.imageAssetManager == null) {
            this.imageAssetManager = new i0.b(getCallback(), this.imageAssetsFolder, null, this.composition.o());
        }
        return this.imageAssetManager;
    }

    private float r(@NonNull Canvas canvas) {
        return Math.min(canvas.getWidth() / this.composition.h().width(), canvas.getHeight() / this.composition.h().height());
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Nullable
    public Bitmap o(String str) {
        i0.b bVarP = p();
        if (bVarP != null) {
            return bVarP.a(str);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j6) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j6);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    @Nullable
    public Typeface w(String str, String str2) {
        i0.a aVarN = n();
        if (aVarN != null) {
            return aVarN.b(str, str2);
        }
        return null;
    }
}
