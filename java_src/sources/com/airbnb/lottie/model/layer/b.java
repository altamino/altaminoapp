package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class b extends com.airbnb.lottie.model.layer.a {

    @Nullable
    private Boolean hasMasks;

    @Nullable
    private Boolean hasMatte;
    private final List<com.airbnb.lottie.model.layer.a> layers;
    private final RectF newClipRect;
    private final RectF rect;

    @Nullable
    private final com.airbnb.lottie.animation.keyframe.a<Float, Float> timeRemapping;

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.d
    public void b(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        for (int i10 = 0; i10 < this.layers.size(); i10++) {
            com.airbnb.lottie.model.layer.a aVar = this.layers.get(i10);
            String strG = aVar.m().g();
            if (str == null) {
                aVar.b(null, null, colorFilter);
            } else if (strG.equals(str)) {
                aVar.b(str, str2, colorFilter);
            }
        }
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType;

        static {
            int[] iArr = new int[d.EnumC0115d.values().length];
            $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType = iArr;
            try {
                iArr[d.EnumC0115d.Add.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[d.EnumC0115d.Invert.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    void k(Canvas canvas, Matrix matrix, int i10) {
        com.airbnb.lottie.d.a("CompositionLayer#draw");
        canvas.save();
        this.newClipRect.set(0.0f, 0.0f, this.layerModel.j(), this.layerModel.i());
        matrix.mapRect(this.newClipRect);
        for (int size = this.layers.size() - 1; size >= 0; size--) {
            if (this.newClipRect.isEmpty() || canvas.clipRect(this.newClipRect)) {
                this.layers.get(size).d(canvas, matrix, i10);
            }
        }
        canvas.restore();
        com.airbnb.lottie.d.b("CompositionLayer#draw");
    }

    public b(com.airbnb.lottie.f fVar, d dVar, List<d> list, com.airbnb.lottie.e eVar) {
        int i10;
        super(fVar, dVar);
        this.layers = new ArrayList();
        this.rect = new RectF();
        this.newClipRect = new RectF();
        com.airbnb.lottie.model.animatable.b bVarS = dVar.s();
        if (bVarS != null) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA = bVarS.a();
            this.timeRemapping = aVarA;
            g(aVarA);
            aVarA.a(this);
        } else {
            this.timeRemapping = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(eVar.p().size());
        int size = list.size() - 1;
        com.airbnb.lottie.model.layer.a aVar = null;
        while (true) {
            if (size < 0) {
                break;
            }
            d dVar2 = list.get(size);
            com.airbnb.lottie.model.layer.a aVarL = com.airbnb.lottie.model.layer.a.l(dVar2, fVar, eVar);
            if (aVarL != null) {
                longSparseArray.m(aVarL.m().b(), aVarL);
                if (aVar != null) {
                    aVar.t(aVarL);
                    aVar = null;
                } else {
                    this.layers.add(0, aVarL);
                    int i11 = a.$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[dVar2.f().ordinal()];
                    if (i11 == 1 || i11 == 2) {
                        aVar = aVarL;
                    }
                }
            }
            size--;
        }
        for (i10 = 0; i10 < longSparseArray.p(); i10++) {
            com.airbnb.lottie.model.layer.a aVar2 = (com.airbnb.lottie.model.layer.a) longSparseArray.h(longSparseArray.l(i10));
            com.airbnb.lottie.model.layer.a aVar3 = (com.airbnb.lottie.model.layer.a) longSparseArray.h(aVar2.m().h());
            if (aVar3 != null) {
                aVar2.u(aVar3);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.d
    public void a(RectF rectF, Matrix matrix) {
        super.a(rectF, matrix);
        this.rect.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.layers.size() - 1; size >= 0; size--) {
            this.layers.get(size).a(this.rect, this.boundsMatrix);
            if (rectF.isEmpty()) {
                rectF.set(this.rect);
            } else {
                rectF.set(Math.min(rectF.left, this.rect.left), Math.min(rectF.top, this.rect.top), Math.max(rectF.right, this.rect.right), Math.max(rectF.bottom, this.rect.bottom));
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void v(@FloatRange float f) {
        super.v(f);
        if (this.timeRemapping != null) {
            f = ((long) (this.timeRemapping.g().floatValue() * 1000.0f)) / this.lottieDrawable.l().k();
        }
        if (this.layerModel.t() != 0.0f) {
            f /= this.layerModel.t();
        }
        float fP = f - this.layerModel.p();
        for (int size = this.layers.size() - 1; size >= 0; size--) {
            this.layers.get(size).v(fP);
        }
    }
}
