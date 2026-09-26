package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class l implements k, com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a {
    private static final float POLYGON_MAGIC_NUMBER = 0.25f;
    private static final float POLYSTAR_MAGIC_NUMBER = 0.47829f;

    @Nullable
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> innerRadiusAnimation;

    @Nullable
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> innerRoundednessAnimation;
    private boolean isPathValid;
    private final com.airbnb.lottie.f lottieDrawable;
    private final String name;
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> outerRadiusAnimation;
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> outerRoundednessAnimation;
    private final Path path = new Path();
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> pointsAnimation;
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> positionAnimation;
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> rotationAnimation;

    @Nullable
    private q trimPath;
    private final com.airbnb.lottie.model.content.i.c type;

    private void h() {
        this.isPathValid = false;
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.b
    public void f(List<b> list, List<b> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            b bVar = list.get(i10);
            if (bVar instanceof q) {
                q qVar = (q) bVar;
                if (qVar.j() == com.airbnb.lottie.model.content.q.c.Simultaneously) {
                    this.trimPath = qVar;
                    qVar.c(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.b
    public String getName() {
        return this.name;
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type;

        static {
            int[] iArr = new int[com.airbnb.lottie.model.content.i.c.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type = iArr;
            try {
                iArr[com.airbnb.lottie.model.content.i.c.Star.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type[com.airbnb.lottie.model.content.i.c.Polygon.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void c() {
        int iFloor = (int) Math.floor(this.pointsAnimation.g().floatValue());
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar = this.rotationAnimation;
        double radians = Math.toRadians((aVar == null ? com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE : aVar.g().floatValue()) - 90.0d);
        double d = iFloor;
        float fFloatValue = this.outerRoundednessAnimation.g().floatValue() / 100.0f;
        float fFloatValue2 = this.outerRadiusAnimation.g().floatValue();
        double d2 = fFloatValue2;
        float fCos = (float) (Math.cos(radians) * d2);
        float fSin = (float) (Math.sin(radians) * d2);
        this.path.moveTo(fCos, fSin);
        double d6 = (float) (6.283185307179586d / d);
        double d7 = radians + d6;
        double dCeil = Math.ceil(d);
        int i10 = 0;
        while (i10 < dCeil) {
            float fCos2 = (float) (Math.cos(d7) * d2);
            double d10 = dCeil;
            float fSin2 = (float) (d2 * Math.sin(d7));
            if (fFloatValue != 0.0f) {
                double dAtan2 = (float) (Math.atan2(fSin, fCos) - 1.5707963267948966d);
                float fCos3 = (float) Math.cos(dAtan2);
                float fSin3 = (float) Math.sin(dAtan2);
                double dAtan3 = (float) (Math.atan2(fSin2, fCos2) - 1.5707963267948966d);
                float fCos4 = (float) Math.cos(dAtan3);
                float fSin4 = (float) Math.sin(dAtan3);
                float f = fFloatValue2 * fFloatValue * POLYGON_MAGIC_NUMBER;
                this.path.cubicTo(fCos - (fCos3 * f), fSin - (fSin3 * f), fCos2 + (fCos4 * f), fSin2 + (f * fSin4), fCos2, fSin2);
            } else {
                this.path.lineTo(fCos2, fSin2);
            }
            d7 += d6;
            i10++;
            fSin = fSin2;
            fCos = fCos2;
            dCeil = d10;
            d2 = d2;
            d6 = d6;
        }
        PointF pointFG = this.positionAnimation.g();
        this.path.offset(pointFG.x, pointFG.y);
        this.path.close();
    }

    private void g() {
        float f;
        float f6;
        double d;
        float fSin;
        float f7;
        float f10;
        float f11;
        float fFloatValue = this.pointsAnimation.g().floatValue();
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar = this.rotationAnimation;
        double radians = Math.toRadians((aVar == null ? com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE : aVar.g().floatValue()) - 90.0d);
        double d2 = fFloatValue;
        float f12 = (float) (6.283185307179586d / d2);
        float f13 = f12 / 2.0f;
        float f14 = fFloatValue - ((int) fFloatValue);
        if (f14 != 0.0f) {
            radians += (double) ((1.0f - f14) * f13);
        }
        float fFloatValue2 = this.outerRadiusAnimation.g().floatValue();
        float fFloatValue3 = this.innerRadiusAnimation.g().floatValue();
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar2 = this.innerRoundednessAnimation;
        float fFloatValue4 = aVar2 != null ? aVar2.g().floatValue() / 100.0f : 0.0f;
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar3 = this.outerRoundednessAnimation;
        float fFloatValue5 = aVar3 != null ? aVar3.g().floatValue() / 100.0f : 0.0f;
        if (f14 != 0.0f) {
            f7 = ((fFloatValue2 - fFloatValue3) * f14) + fFloatValue3;
            double d6 = f7;
            float fCos = (float) (d6 * Math.cos(radians));
            fSin = (float) (d6 * Math.sin(radians));
            this.path.moveTo(fCos, fSin);
            d = radians + ((double) ((f12 * f14) / 2.0f));
            f = fCos;
            f6 = f13;
        } else {
            double d7 = fFloatValue2;
            float fCos2 = (float) (Math.cos(radians) * d7);
            float fSin2 = (float) (d7 * Math.sin(radians));
            this.path.moveTo(fCos2, fSin2);
            f = fCos2;
            f6 = f13;
            d = radians + ((double) f6);
            fSin = fSin2;
            f7 = 0.0f;
        }
        double dCeil = Math.ceil(d2) * 2.0d;
        int i10 = 0;
        float f15 = f6;
        float f16 = f;
        boolean z6 = false;
        while (true) {
            double d10 = i10;
            if (d10 >= dCeil) {
                PointF pointFG = this.positionAnimation.g();
                this.path.offset(pointFG.x, pointFG.y);
                this.path.close();
                return;
            }
            float f17 = z6 ? fFloatValue2 : fFloatValue3;
            float f18 = (f7 == 0.0f || d10 != dCeil - 2.0d) ? f15 : (f12 * f14) / 2.0f;
            if (f7 == 0.0f || d10 != dCeil - 1.0d) {
                f7 = f17;
            }
            double d11 = f7;
            double d12 = dCeil;
            float fCos3 = (float) (d11 * Math.cos(d));
            float fSin3 = (float) (d11 * Math.sin(d));
            if (fFloatValue4 == 0.0f && fFloatValue5 == 0.0f) {
                this.path.lineTo(fCos3, fSin3);
                f10 = fFloatValue4;
                f11 = fFloatValue5;
            } else {
                f10 = fFloatValue4;
                double dAtan2 = (float) (Math.atan2(fSin, f16) - 1.5707963267948966d);
                float fCos4 = (float) Math.cos(dAtan2);
                float fSin4 = (float) Math.sin(dAtan2);
                f11 = fFloatValue5;
                double dAtan3 = (float) (Math.atan2(fSin3, fCos3) - 1.5707963267948966d);
                float fCos5 = (float) Math.cos(dAtan3);
                float fSin5 = (float) Math.sin(dAtan3);
                float f19 = z6 ? f10 : f11;
                float f20 = z6 ? f11 : f10;
                float f21 = z6 ? fFloatValue3 : fFloatValue2;
                float f22 = z6 ? fFloatValue2 : fFloatValue3;
                float f23 = f21 * f19 * POLYSTAR_MAGIC_NUMBER;
                float f24 = fCos4 * f23;
                float f25 = f23 * fSin4;
                float f26 = f22 * f20 * POLYSTAR_MAGIC_NUMBER;
                float f27 = fCos5 * f26;
                float f28 = f26 * fSin5;
                if (f14 != 0.0f) {
                    if (i10 == 0) {
                        f24 *= f14;
                        f25 *= f14;
                    } else if (d10 == d12 - 1.0d) {
                        f27 *= f14;
                        f28 *= f14;
                    }
                }
                this.path.cubicTo(f16 - f24, fSin - f25, fCos3 + f27, fSin3 + f28, fCos3, fSin3);
            }
            d += (double) f18;
            z6 = !z6;
            i10++;
            f16 = fCos3;
            fSin = fSin3;
            fFloatValue5 = f11;
            fFloatValue4 = f10;
            f7 = f7;
            f12 = f12;
            dCeil = d12;
        }
    }

    @Override // com.airbnb.lottie.animation.content.k
    public Path getPath() {
        if (this.isPathValid) {
            return this.path;
        }
        this.path.reset();
        int i10 = a.$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type[this.type.ordinal()];
        if (i10 == 1) {
            g();
        } else if (i10 == 2) {
            c();
        }
        this.path.close();
        com.airbnb.lottie.utils.f.b(this.path, this.trimPath);
        this.isPathValid = true;
        return this.path;
    }

    public l(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.i iVar) {
        this.lottieDrawable = fVar;
        this.name = iVar.d();
        com.airbnb.lottie.model.content.i.c cVarJ = iVar.j();
        this.type = cVarJ;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA = iVar.g().a();
        this.pointsAnimation = aVarA;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA2 = iVar.h().a();
        this.positionAnimation = aVarA2;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA3 = iVar.i().a();
        this.rotationAnimation = aVarA3;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA4 = iVar.e().a();
        this.outerRadiusAnimation = aVarA4;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA5 = iVar.f().a();
        this.outerRoundednessAnimation = aVarA5;
        com.airbnb.lottie.model.content.i.c cVar = com.airbnb.lottie.model.content.i.c.Star;
        if (cVarJ == cVar) {
            this.innerRadiusAnimation = iVar.b().a();
            this.innerRoundednessAnimation = iVar.c().a();
        } else {
            this.innerRadiusAnimation = null;
            this.innerRoundednessAnimation = null;
        }
        aVar.g(aVarA);
        aVar.g(aVarA2);
        aVar.g(aVarA3);
        aVar.g(aVarA4);
        aVar.g(aVarA5);
        if (cVarJ == cVar) {
            aVar.g(this.innerRadiusAnimation);
            aVar.g(this.innerRoundednessAnimation);
        }
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
        aVarA4.a(this);
        aVarA5.a(this);
        if (cVarJ == cVar) {
            aVarA4.a(this);
            aVarA5.a(this);
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0108a
    public void e() {
        h();
    }
}
