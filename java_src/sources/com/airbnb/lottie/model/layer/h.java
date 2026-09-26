package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.o;
import com.airbnb.lottie.l;
import com.airbnb.lottie.model.animatable.k;
import com.airbnb.lottie.model.content.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class h extends com.airbnb.lottie.model.layer.a {

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Integer, Integer> colorAnimation;
    private final com.airbnb.lottie.e composition;
    private final Map<com.airbnb.lottie.model.g, List<com.airbnb.lottie.animation.content.c>> contentsForCharacter;
    private final Paint fillPaint;
    private final com.airbnb.lottie.f lottieDrawable;
    private final Matrix matrix;
    private final RectF rectF;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Integer, Integer> strokeAnimation;
    private final Paint strokePaint;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> strokeWidthAnimation;
    private final char[] tempCharArray;
    private final o textAnimation;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> trackingAnimation;

    class a extends Paint {
        a(int i10) {
            super(i10);
            setStyle(Paint.Style.FILL);
        }
    }

    class b extends Paint {
        b(int i10) {
            super(i10);
            setStyle(Paint.Style.STROKE);
        }
    }

    private void A(char c7, com.airbnb.lottie.model.d dVar, Canvas canvas) {
        char[] cArr = this.tempCharArray;
        cArr[0] = c7;
        if (dVar.strokeOverFill) {
            y(cArr, this.fillPaint, canvas);
            y(this.tempCharArray, this.strokePaint, canvas);
        } else {
            y(cArr, this.strokePaint, canvas);
            y(this.tempCharArray, this.fillPaint, canvas);
        }
    }

    private void C(com.airbnb.lottie.model.d dVar, Matrix matrix, com.airbnb.lottie.model.f fVar, Canvas canvas) {
        float f = dVar.size / 100.0f;
        float f6 = com.airbnb.lottie.utils.f.f(matrix);
        String str = dVar.text;
        for (int i10 = 0; i10 < str.length(); i10++) {
            com.airbnb.lottie.model.g gVarJ = this.composition.i().j(com.airbnb.lottie.model.g.c(str.charAt(i10), fVar.a(), fVar.c()));
            if (gVarJ != null) {
                z(gVarJ, matrix, f, dVar, canvas);
                float fB = ((float) gVarJ.b()) * f * this.composition.j() * f6;
                float fFloatValue = dVar.tracking / 10.0f;
                com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar = this.trackingAnimation;
                if (aVar != null) {
                    fFloatValue += aVar.g().floatValue();
                }
                canvas.translate(fB + (fFloatValue * f6), 0.0f);
            }
        }
    }

    private List<com.airbnb.lottie.animation.content.c> E(com.airbnb.lottie.model.g gVar) {
        if (this.contentsForCharacter.containsKey(gVar)) {
            return this.contentsForCharacter.get(gVar);
        }
        List<n> listA = gVar.a();
        int size = listA.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new com.airbnb.lottie.animation.content.c(this.lottieDrawable, this, listA.get(i10)));
        }
        this.contentsForCharacter.put(gVar, arrayList);
        return arrayList;
    }

    h(com.airbnb.lottie.f fVar, d dVar) {
        com.airbnb.lottie.model.animatable.b bVar;
        com.airbnb.lottie.model.animatable.b bVar2;
        com.airbnb.lottie.model.animatable.a aVar;
        com.airbnb.lottie.model.animatable.a aVar2;
        super(fVar, dVar);
        this.tempCharArray = new char[1];
        this.rectF = new RectF();
        this.matrix = new Matrix();
        this.fillPaint = new a(1);
        this.strokePaint = new b(1);
        this.contentsForCharacter = new HashMap();
        this.lottieDrawable = fVar;
        this.composition = dVar.a();
        o oVarA = dVar.q().a();
        this.textAnimation = oVarA;
        oVarA.a(this);
        g(oVarA);
        k kVarR = dVar.r();
        if (kVarR != null && (aVar2 = kVarR.color) != null) {
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA = aVar2.a();
            this.colorAnimation = aVarA;
            aVarA.a(this);
            g(this.colorAnimation);
        }
        if (kVarR != null && (aVar = kVarR.stroke) != null) {
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA2 = aVar.a();
            this.strokeAnimation = aVarA2;
            aVarA2.a(this);
            g(this.strokeAnimation);
        }
        if (kVarR != null && (bVar2 = kVarR.strokeWidth) != null) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA3 = bVar2.a();
            this.strokeWidthAnimation = aVarA3;
            aVarA3.a(this);
            g(this.strokeWidthAnimation);
        }
        if (kVarR != null && (bVar = kVarR.tracking) != null) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA4 = bVar.a();
            this.trackingAnimation = aVarA4;
            aVarA4.a(this);
            g(this.trackingAnimation);
        }
    }

    private void B(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void D(com.airbnb.lottie.model.d dVar, com.airbnb.lottie.model.f fVar, Matrix matrix, Canvas canvas) {
        float f = com.airbnb.lottie.utils.f.f(matrix);
        Typeface typefaceW = this.lottieDrawable.w(fVar.a(), fVar.c());
        if (typefaceW == null) {
            return;
        }
        String strB = dVar.text;
        l lVarV = this.lottieDrawable.v();
        if (lVarV != null) {
            strB = lVarV.b(strB);
        }
        this.fillPaint.setTypeface(typefaceW);
        this.fillPaint.setTextSize(dVar.size * this.composition.j());
        this.strokePaint.setTypeface(this.fillPaint.getTypeface());
        this.strokePaint.setTextSize(this.fillPaint.getTextSize());
        for (int i10 = 0; i10 < strB.length(); i10++) {
            char cCharAt = strB.charAt(i10);
            A(cCharAt, dVar, canvas);
            char[] cArr = this.tempCharArray;
            cArr[0] = cCharAt;
            float fMeasureText = this.fillPaint.measureText(cArr, 0, 1);
            float fFloatValue = dVar.tracking / 10.0f;
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar = this.trackingAnimation;
            if (aVar != null) {
                fFloatValue += aVar.g().floatValue();
            }
            canvas.translate(fMeasureText + (fFloatValue * f), 0.0f);
        }
    }

    private void y(char[] cArr, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(cArr, 0, 1, 0.0f, 0.0f, paint);
    }

    private void z(com.airbnb.lottie.model.g gVar, Matrix matrix, float f, com.airbnb.lottie.model.d dVar, Canvas canvas) {
        List<com.airbnb.lottie.animation.content.c> listE = E(gVar);
        for (int i10 = 0; i10 < listE.size(); i10++) {
            Path path = listE.get(i10).getPath();
            path.computeBounds(this.rectF, false);
            this.matrix.set(matrix);
            this.matrix.preScale(f, f);
            path.transform(this.matrix);
            if (dVar.strokeOverFill) {
                B(path, this.fillPaint, canvas);
                B(path, this.strokePaint, canvas);
            } else {
                B(path, this.strokePaint, canvas);
                B(path, this.fillPaint, canvas);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    void k(Canvas canvas, Matrix matrix, int i10) {
        canvas.save();
        if (!this.lottieDrawable.T()) {
            canvas.setMatrix(matrix);
        }
        com.airbnb.lottie.model.d dVarG = this.textAnimation.g();
        com.airbnb.lottie.model.f fVar = this.composition.n().get(dVarG.fontName);
        if (fVar == null) {
            canvas.restore();
            return;
        }
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar = this.colorAnimation;
        if (aVar != null) {
            this.fillPaint.setColor(aVar.g().intValue());
        } else {
            this.fillPaint.setColor(dVarG.color);
        }
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2 = this.strokeAnimation;
        if (aVar2 != null) {
            this.strokePaint.setColor(aVar2.g().intValue());
        } else {
            this.strokePaint.setColor(dVarG.strokeColor);
        }
        int iIntValue = (this.transform.f().g().intValue() * 255) / 100;
        this.fillPaint.setAlpha(iIntValue);
        this.strokePaint.setAlpha(iIntValue);
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar3 = this.strokeWidthAnimation;
        if (aVar3 != null) {
            this.strokePaint.setStrokeWidth(aVar3.g().floatValue());
        } else {
            this.strokePaint.setStrokeWidth(dVarG.strokeWidth * this.composition.j() * com.airbnb.lottie.utils.f.f(matrix));
        }
        if (this.lottieDrawable.T()) {
            C(dVarG, matrix, fVar, canvas);
        } else {
            D(dVarG, fVar, matrix, canvas);
        }
        canvas.restore();
    }
}
