package com.airbnb.lottie.model.layer;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.n;
import com.airbnb.lottie.animation.keyframe.p;
import com.airbnb.lottie.model.content.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public abstract class a implements com.airbnb.lottie.animation.content.d, com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a {
    private static final int SAVE_FLAGS = 19;
    private final List<com.airbnb.lottie.animation.keyframe.a<?, ?>> animations;
    final Matrix boundsMatrix;
    private final Paint clearPaint;
    private final String drawTraceName;
    final d layerModel;
    final com.airbnb.lottie.f lottieDrawable;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.g mask;
    private final RectF maskBoundsRect;
    private final Paint maskPaint;
    private final RectF matteBoundsRect;

    @Nullable
    private a matteLayer;
    private final Paint mattePaint;

    @Nullable
    private a parentLayer;
    private List<a> parentLayers;
    private final RectF rect;
    private final RectF tempMaskBoundsRect;
    final p transform;
    private boolean visible;
    private final Path path = new Path();
    private final Matrix matrix = new Matrix();
    private final Paint contentPaint = new Paint(1);

    /* JADX INFO: renamed from: com.airbnb.lottie.model.layer.a$a, reason: collision with other inner class name */
    class C0114a implements com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a {
        final /* synthetic */ com.airbnb.lottie.animation.keyframe.c val$inOutAnimation;

        C0114a(com.airbnb.lottie.animation.keyframe.c cVar) {
            this.val$inOutAnimation = cVar;
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a
        public void e() {
            a.this.w(this.val$inOutAnimation.g().floatValue() == 1.0f);
        }
    }

    @Override // com.airbnb.lottie.animation.content.d
    public void b(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
    }

    @Override // com.airbnb.lottie.animation.content.b
    public void f(List<com.airbnb.lottie.animation.content.b> list, List<com.airbnb.lottie.animation.content.b> list2) {
    }

    abstract void k(Canvas canvas, Matrix matrix, int i10);

    d m() {
        return this.layerModel;
    }

    boolean o() {
        return this.matteLayer != null;
    }

    void t(@Nullable a aVar) {
        this.matteLayer = aVar;
    }

    void u(@Nullable a aVar) {
        this.parentLayer = aVar;
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode;
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType;

        static {
            int[] iArr = new int[com.airbnb.lottie.model.content.g.c.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode = iArr;
            try {
                iArr[com.airbnb.lottie.model.content.g.c.MaskModeSubtract.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[com.airbnb.lottie.model.content.g.c.MaskModeIntersect.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[com.airbnb.lottie.model.content.g.c.MaskModeUnknown.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[com.airbnb.lottie.model.content.g.c.MaskModeAdd.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[d.c.values().length];
            $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType = iArr2;
            try {
                iArr2[d.c.Shape.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[d.c.PreComp.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[d.c.Solid.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[d.c.Image.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[d.c.Null.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[d.c.Text.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[d.c.Unknown.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    @SuppressLint({"WrongConstant"})
    private void h(Canvas canvas, Matrix matrix) {
        com.airbnb.lottie.d.a("Layer#drawMask");
        com.airbnb.lottie.d.a("Layer#saveLayer");
        canvas.saveLayer(this.rect, this.maskPaint, 19);
        com.airbnb.lottie.d.b("Layer#saveLayer");
        j(canvas);
        int size = this.mask.b().size();
        for (int i10 = 0; i10 < size; i10++) {
            com.airbnb.lottie.model.content.g gVar = this.mask.b().get(i10);
            this.path.set(this.mask.a().get(i10).g());
            this.path.transform(matrix);
            if (b.$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[gVar.a().ordinal()] != 1) {
                this.path.setFillType(Path.FillType.WINDING);
            } else {
                this.path.setFillType(Path.FillType.INVERSE_WINDING);
            }
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar = this.mask.c().get(i10);
            int alpha = this.contentPaint.getAlpha();
            this.contentPaint.setAlpha((int) (aVar.g().intValue() * 2.55f));
            canvas.drawPath(this.path, this.contentPaint);
            this.contentPaint.setAlpha(alpha);
        }
        com.airbnb.lottie.d.a("Layer#restoreLayer");
        canvas.restore();
        com.airbnb.lottie.d.b("Layer#restoreLayer");
        com.airbnb.lottie.d.b("Layer#drawMask");
    }

    private void i() {
        if (this.parentLayers != null) {
            return;
        }
        if (this.parentLayer == null) {
            this.parentLayers = Collections.emptyList();
            return;
        }
        this.parentLayers = new ArrayList();
        for (a aVar = this.parentLayer; aVar != null; aVar = aVar.parentLayer) {
            this.parentLayers.add(aVar);
        }
    }

    private void j(Canvas canvas) {
        com.airbnb.lottie.d.a("Layer#clearLayer");
        RectF rectF = this.rect;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.clearPaint);
        com.airbnb.lottie.d.b("Layer#clearLayer");
    }

    @Nullable
    static a l(d dVar, com.airbnb.lottie.f fVar, com.airbnb.lottie.e eVar) {
        switch (b.$SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[dVar.d().ordinal()]) {
            case 1:
                return new f(fVar, dVar);
            case 2:
                return new com.airbnb.lottie.model.layer.b(fVar, dVar, eVar.u(dVar.k()), eVar);
            case 3:
                return new g(fVar, dVar);
            case 4:
                return new c(fVar, dVar, eVar.j());
            case 5:
                return new e(fVar, dVar);
            case 6:
                return new h(fVar, dVar);
            default:
                Log.w(com.airbnb.lottie.d.TAG, "Unknown layer type " + dVar.d());
                return null;
        }
    }

    private void p(RectF rectF, Matrix matrix) {
        this.maskBoundsRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (n()) {
            int size = this.mask.b().size();
            for (int i10 = 0; i10 < size; i10++) {
                com.airbnb.lottie.model.content.g gVar = this.mask.b().get(i10);
                this.path.set(this.mask.a().get(i10).g());
                this.path.transform(matrix);
                int i11 = b.$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[gVar.a().ordinal()];
                if (i11 == 1 || i11 == 2 || i11 == 3) {
                    return;
                }
                this.path.computeBounds(this.tempMaskBoundsRect, false);
                if (i10 == 0) {
                    this.maskBoundsRect.set(this.tempMaskBoundsRect);
                } else {
                    RectF rectF2 = this.maskBoundsRect;
                    rectF2.set(Math.min(rectF2.left, this.tempMaskBoundsRect.left), Math.min(this.maskBoundsRect.top, this.tempMaskBoundsRect.top), Math.max(this.maskBoundsRect.right, this.tempMaskBoundsRect.right), Math.max(this.maskBoundsRect.bottom, this.tempMaskBoundsRect.bottom));
                }
            }
            rectF.set(Math.max(rectF.left, this.maskBoundsRect.left), Math.max(rectF.top, this.maskBoundsRect.top), Math.min(rectF.right, this.maskBoundsRect.right), Math.min(rectF.bottom, this.maskBoundsRect.bottom));
        }
    }

    private void r() {
        this.lottieDrawable.invalidateSelf();
    }

    private void s(float f) {
        this.lottieDrawable.l().t().a(this.layerModel.g(), f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(boolean z6) {
        if (z6 != this.visible) {
            this.visible = z6;
            r();
        }
    }

    private void x() {
        if (this.layerModel.c().isEmpty()) {
            w(true);
            return;
        }
        com.airbnb.lottie.animation.keyframe.c cVar = new com.airbnb.lottie.animation.keyframe.c(this.layerModel.c());
        cVar.i();
        cVar.a(new C0114a(cVar));
        w(cVar.g().floatValue() == 1.0f);
        g(cVar);
    }

    @Override // com.airbnb.lottie.animation.content.d
    @CallSuper
    public void a(RectF rectF, Matrix matrix) {
        this.boundsMatrix.set(matrix);
        this.boundsMatrix.preConcat(this.transform.d());
    }

    @Override // com.airbnb.lottie.animation.content.d
    @SuppressLint({"WrongConstant"})
    public void d(Canvas canvas, Matrix matrix, int i10) {
        com.airbnb.lottie.d.a(this.drawTraceName);
        if (!this.visible) {
            com.airbnb.lottie.d.b(this.drawTraceName);
            return;
        }
        i();
        com.airbnb.lottie.d.a("Layer#parentMatrix");
        this.matrix.reset();
        this.matrix.set(matrix);
        for (int size = this.parentLayers.size() - 1; size >= 0; size--) {
            this.matrix.preConcat(this.parentLayers.get(size).transform.d());
        }
        com.airbnb.lottie.d.b("Layer#parentMatrix");
        int iIntValue = (int) ((((i10 / 255.0f) * this.transform.f().g().intValue()) / 100.0f) * 255.0f);
        if (!o() && !n()) {
            this.matrix.preConcat(this.transform.d());
            com.airbnb.lottie.d.a("Layer#drawLayer");
            k(canvas, this.matrix, iIntValue);
            com.airbnb.lottie.d.b("Layer#drawLayer");
            s(com.airbnb.lottie.d.b(this.drawTraceName));
            return;
        }
        com.airbnb.lottie.d.a("Layer#computeBounds");
        this.rect.set(0.0f, 0.0f, 0.0f, 0.0f);
        a(this.rect, this.matrix);
        q(this.rect, this.matrix);
        this.matrix.preConcat(this.transform.d());
        p(this.rect, this.matrix);
        this.rect.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        com.airbnb.lottie.d.b("Layer#computeBounds");
        com.airbnb.lottie.d.a("Layer#saveLayer");
        canvas.saveLayer(this.rect, this.contentPaint, 31);
        com.airbnb.lottie.d.b("Layer#saveLayer");
        j(canvas);
        com.airbnb.lottie.d.a("Layer#drawLayer");
        k(canvas, this.matrix, iIntValue);
        com.airbnb.lottie.d.b("Layer#drawLayer");
        if (n()) {
            h(canvas, this.matrix);
        }
        if (o()) {
            com.airbnb.lottie.d.a("Layer#drawMatte");
            com.airbnb.lottie.d.a("Layer#saveLayer");
            canvas.saveLayer(this.rect, this.mattePaint, 19);
            com.airbnb.lottie.d.b("Layer#saveLayer");
            j(canvas);
            this.matteLayer.d(canvas, matrix, iIntValue);
            com.airbnb.lottie.d.a("Layer#restoreLayer");
            canvas.restore();
            com.airbnb.lottie.d.b("Layer#restoreLayer");
            com.airbnb.lottie.d.b("Layer#drawMatte");
        }
        com.airbnb.lottie.d.a("Layer#restoreLayer");
        canvas.restore();
        com.airbnb.lottie.d.b("Layer#restoreLayer");
        s(com.airbnb.lottie.d.b(this.drawTraceName));
    }

    public void g(com.airbnb.lottie.animation.keyframe.a<?, ?> aVar) {
        if (aVar instanceof n) {
            return;
        }
        this.animations.add(aVar);
    }

    @Override // com.airbnb.lottie.animation.content.b
    public String getName() {
        return this.layerModel.g();
    }

    boolean n() {
        com.airbnb.lottie.animation.keyframe.g gVar = this.mask;
        return (gVar == null || gVar.a().isEmpty()) ? false : true;
    }

    void v(@FloatRange float f) {
        if (this.layerModel.t() != 0.0f) {
            f /= this.layerModel.t();
        }
        a aVar = this.matteLayer;
        if (aVar != null) {
            aVar.v(f);
        }
        for (int i10 = 0; i10 < this.animations.size(); i10++) {
            this.animations.get(i10).j(f);
        }
    }

    a(com.airbnb.lottie.f fVar, d dVar) {
        Paint paint = new Paint(1);
        this.maskPaint = paint;
        Paint paint2 = new Paint(1);
        this.mattePaint = paint2;
        Paint paint3 = new Paint();
        this.clearPaint = paint3;
        this.rect = new RectF();
        this.maskBoundsRect = new RectF();
        this.matteBoundsRect = new RectF();
        this.tempMaskBoundsRect = new RectF();
        this.boundsMatrix = new Matrix();
        this.animations = new ArrayList();
        this.visible = true;
        this.lottieDrawable = fVar;
        this.layerModel = dVar;
        this.drawTraceName = dVar.g() + "#draw";
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        paint.setXfermode(new PorterDuffXfermode(mode));
        if (dVar.f() == d.EnumC0115d.Invert) {
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            paint2.setXfermode(new PorterDuffXfermode(mode));
        }
        p pVarB = dVar.u().b();
        this.transform = pVarB;
        pVarB.b(this);
        pVarB.a(this);
        if (dVar.e() != null && !dVar.e().isEmpty()) {
            com.airbnb.lottie.animation.keyframe.g gVar = new com.airbnb.lottie.animation.keyframe.g(dVar.e());
            this.mask = gVar;
            for (com.airbnb.lottie.animation.keyframe.a<l, Path> aVar : gVar.a()) {
                g(aVar);
                aVar.a(this);
            }
            for (com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2 : this.mask.c()) {
                g(aVar2);
                aVar2.a(this);
            }
        }
        x();
    }

    private void q(RectF rectF, Matrix matrix) {
        if (!o() || this.layerModel.f() == d.EnumC0115d.Invert) {
            return;
        }
        this.matteLayer.a(this.matteBoundsRect, matrix);
        rectF.set(Math.max(rectF.left, this.matteBoundsRect.left), Math.max(rectF.top, this.matteBoundsRect.top), Math.min(rectF.right, this.matteBoundsRect.right), Math.min(rectF.bottom, this.matteBoundsRect.bottom));
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a
    public void e() {
        r();
    }
}
