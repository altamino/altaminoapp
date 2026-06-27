package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.Utils;
import java.util.List;

/* loaded from: classes.dex */
public class PolystarContent implements PathContent, BaseKeyframeAnimation.AnimationListener {
    private static final float POLYGON_MAGIC_NUMBER = 0.25f;
    private static final float POLYSTAR_MAGIC_NUMBER = 0.47829f;
    private final BaseKeyframeAnimation<?, Float> innerRadiusAnimation;
    private final BaseKeyframeAnimation<?, Float> innerRoundednessAnimation;
    private boolean isPathValid;
    private final LottieDrawable lottieDrawable;
    private final String name;
    private final BaseKeyframeAnimation<?, Float> outerRadiusAnimation;
    private final BaseKeyframeAnimation<?, Float> outerRoundednessAnimation;
    private final Path path = new Path();
    private final BaseKeyframeAnimation<?, Float> pointsAnimation;
    private final BaseKeyframeAnimation<?, PointF> positionAnimation;
    private final BaseKeyframeAnimation<?, Float> rotationAnimation;
    private TrimPathContent trimPath;
    private final PolystarShape.Type type;

    public PolystarContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, PolystarShape polystarShape) {
        this.lottieDrawable = lottieDrawable;
        this.name = polystarShape.getName();
        this.type = polystarShape.getType();
        this.pointsAnimation = polystarShape.getPoints().createAnimation();
        this.positionAnimation = polystarShape.getPosition().createAnimation();
        this.rotationAnimation = polystarShape.getRotation().createAnimation();
        this.outerRadiusAnimation = polystarShape.getOuterRadius().createAnimation();
        this.outerRoundednessAnimation = polystarShape.getOuterRoundedness().createAnimation();
        if (this.type == PolystarShape.Type.Star) {
            this.innerRadiusAnimation = polystarShape.getInnerRadius().createAnimation();
            this.innerRoundednessAnimation = polystarShape.getInnerRoundedness().createAnimation();
        } else {
            this.innerRadiusAnimation = null;
            this.innerRoundednessAnimation = null;
        }
        baseLayer.addAnimation(this.pointsAnimation);
        baseLayer.addAnimation(this.positionAnimation);
        baseLayer.addAnimation(this.rotationAnimation);
        baseLayer.addAnimation(this.outerRadiusAnimation);
        baseLayer.addAnimation(this.outerRoundednessAnimation);
        if (this.type == PolystarShape.Type.Star) {
            baseLayer.addAnimation(this.innerRadiusAnimation);
            baseLayer.addAnimation(this.innerRoundednessAnimation);
        }
        this.pointsAnimation.addUpdateListener(this);
        this.positionAnimation.addUpdateListener(this);
        this.rotationAnimation.addUpdateListener(this);
        this.outerRadiusAnimation.addUpdateListener(this);
        this.outerRoundednessAnimation.addUpdateListener(this);
        if (this.type == PolystarShape.Type.Star) {
            this.outerRadiusAnimation.addUpdateListener(this);
            this.outerRoundednessAnimation.addUpdateListener(this);
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        invalidate();
    }

    private void invalidate() {
        this.isPathValid = false;
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list.size(); i++) {
            Content content = list.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.getType() == ShapeTrimPath.Type.Simultaneously) {
                    this.trimPath = trimPathContent;
                    this.trimPath.addListener(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        if (this.isPathValid) {
            return this.path;
        }
        this.path.reset();
        int i = AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type[this.type.ordinal()];
        if (i == 1) {
            createStarPath();
        } else if (i == 2) {
            createPolygonPath();
        }
        this.path.close();
        Utils.applyTrimPathIfNeeded(this.path, this.trimPath);
        this.isPathValid = true;
        return this.path;
    }

    /* renamed from: com.airbnb.lottie.animation.content.PolystarContent$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type = new int[PolystarShape.Type.values().length];

        static {
            try {
                $SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type[PolystarShape.Type.Star.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type[PolystarShape.Type.Polygon.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.name;
    }

    private void createStarPath() {
        double d;
        float f;
        float f2;
        float f3;
        float f4;
        double d2;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float fFloatValue = this.pointsAnimation.getValue().floatValue();
        double radians = Math.toRadians((this.rotationAnimation == null ? 0.0d : r2.getValue().floatValue()) - 90.0d);
        double d3 = fFloatValue;
        Double.isNaN(d3);
        float f17 = (float) (6.283185307179586d / d3);
        float f18 = f17 / 2.0f;
        float f19 = fFloatValue - ((int) fFloatValue);
        if (f19 != 0.0f) {
            double d4 = (1.0f - f19) * f18;
            Double.isNaN(d4);
            radians += d4;
        }
        float fFloatValue2 = this.outerRadiusAnimation.getValue().floatValue();
        float fFloatValue3 = this.innerRadiusAnimation.getValue().floatValue();
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation = this.innerRoundednessAnimation;
        float fFloatValue4 = baseKeyframeAnimation != null ? baseKeyframeAnimation.getValue().floatValue() / 100.0f : 0.0f;
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation2 = this.outerRoundednessAnimation;
        float fFloatValue5 = baseKeyframeAnimation2 != null ? baseKeyframeAnimation2.getValue().floatValue() / 100.0f : 0.0f;
        if (f19 != 0.0f) {
            float f20 = ((fFloatValue2 - fFloatValue3) * f19) + fFloatValue3;
            double d5 = f20;
            double dCos = Math.cos(radians);
            Double.isNaN(d5);
            d = d3;
            float f21 = (float) (d5 * dCos);
            double dSin = Math.sin(radians);
            Double.isNaN(d5);
            float f22 = (float) (d5 * dSin);
            this.path.moveTo(f21, f22);
            double d6 = (f17 * f19) / 2.0f;
            Double.isNaN(d6);
            d2 = radians + d6;
            f3 = f21;
            f5 = f20;
            f = fFloatValue2;
            f4 = f22;
            f2 = f18;
        } else {
            d = d3;
            f = fFloatValue2;
            double d7 = f;
            double dCos2 = Math.cos(radians);
            Double.isNaN(d7);
            f2 = f18;
            f3 = (float) (d7 * dCos2);
            double dSin2 = Math.sin(radians);
            Double.isNaN(d7);
            f4 = (float) (d7 * dSin2);
            this.path.moveTo(f3, f4);
            double d8 = f2;
            Double.isNaN(d8);
            d2 = radians + d8;
            f5 = 0.0f;
        }
        double dCeil = Math.ceil(d) * 2.0d;
        int i = 0;
        double d9 = d2;
        boolean z = false;
        while (true) {
            double d10 = i;
            if (d10 < dCeil) {
                float f23 = z ? f : fFloatValue3;
                if (f5 == 0.0f || d10 != dCeil - 2.0d) {
                    f6 = f23;
                    f7 = f2;
                } else {
                    f6 = f23;
                    f7 = (f17 * f19) / 2.0f;
                }
                if (f5 == 0.0f || d10 != dCeil - 1.0d) {
                    f8 = f17;
                    f9 = f6;
                    f10 = f;
                } else {
                    f8 = f17;
                    f10 = f;
                    f9 = f5;
                }
                double d11 = f9;
                double dCos3 = Math.cos(d9);
                Double.isNaN(d11);
                float f24 = (float) (d11 * dCos3);
                double dSin3 = Math.sin(d9);
                Double.isNaN(d11);
                float f25 = (float) (d11 * dSin3);
                if (fFloatValue4 == 0.0f && fFloatValue5 == 0.0f) {
                    this.path.lineTo(f24, f25);
                    f15 = f25;
                    f11 = f2;
                    f12 = fFloatValue3;
                    f13 = fFloatValue4;
                    f14 = fFloatValue5;
                    f16 = f7;
                } else {
                    f11 = f2;
                    f12 = fFloatValue3;
                    f13 = fFloatValue4;
                    double dAtan2 = (float) (Math.atan2(f4, f3) - 1.5707963267948966d);
                    float fCos = (float) Math.cos(dAtan2);
                    float fSin = (float) Math.sin(dAtan2);
                    f14 = fFloatValue5;
                    float f26 = f7;
                    f15 = f25;
                    double dAtan22 = (float) (Math.atan2(f25, f24) - 1.5707963267948966d);
                    float fCos2 = (float) Math.cos(dAtan22);
                    float fSin2 = (float) Math.sin(dAtan22);
                    float f27 = z ? f13 : f14;
                    float f28 = z ? f14 : f13;
                    float f29 = z ? f12 : f10;
                    float f30 = z ? f10 : f12;
                    float f31 = f29 * f27 * POLYSTAR_MAGIC_NUMBER;
                    float f32 = fCos * f31;
                    float f33 = f31 * fSin;
                    float f34 = f30 * f28 * POLYSTAR_MAGIC_NUMBER;
                    float f35 = fCos2 * f34;
                    float f36 = f34 * fSin2;
                    if (f19 != 0.0f) {
                        if (i == 0) {
                            f32 *= f19;
                            f33 *= f19;
                        } else if (d10 == dCeil - 1.0d) {
                            f35 *= f19;
                            f36 *= f19;
                        }
                    }
                    this.path.cubicTo(f3 - f32, f4 - f33, f24 + f35, f15 + f36, f24, f15);
                    f16 = f26;
                }
                double d12 = f16;
                Double.isNaN(d12);
                d9 += d12;
                z = !z;
                i++;
                fFloatValue5 = f14;
                f3 = f24;
                f2 = f11;
                f = f10;
                f17 = f8;
                fFloatValue3 = f12;
                fFloatValue4 = f13;
                f4 = f15;
            } else {
                PointF value = this.positionAnimation.getValue();
                this.path.offset(value.x, value.y);
                this.path.close();
                return;
            }
        }
    }

    private void createPolygonPath() {
        double d;
        double d2;
        double d3;
        int i;
        int iFloor = (int) Math.floor(this.pointsAnimation.getValue().floatValue());
        double radians = Math.toRadians((this.rotationAnimation == null ? 0.0d : r2.getValue().floatValue()) - 90.0d);
        double d4 = iFloor;
        Double.isNaN(d4);
        float fFloatValue = this.outerRoundednessAnimation.getValue().floatValue() / 100.0f;
        float fFloatValue2 = this.outerRadiusAnimation.getValue().floatValue();
        double d5 = fFloatValue2;
        double dCos = Math.cos(radians);
        Double.isNaN(d5);
        float f = (float) (dCos * d5);
        double dSin = Math.sin(radians);
        Double.isNaN(d5);
        float f2 = (float) (dSin * d5);
        this.path.moveTo(f, f2);
        double d6 = (float) (6.283185307179586d / d4);
        Double.isNaN(d6);
        double d7 = radians + d6;
        double dCeil = Math.ceil(d4);
        int i2 = 0;
        while (i2 < dCeil) {
            double dCos2 = Math.cos(d7);
            Double.isNaN(d5);
            float f3 = (float) (dCos2 * d5);
            double dSin2 = Math.sin(d7);
            Double.isNaN(d5);
            double d8 = dCeil;
            float f4 = (float) (d5 * dSin2);
            if (fFloatValue != 0.0f) {
                d2 = d5;
                i = i2;
                d = d7;
                double dAtan2 = (float) (Math.atan2(f2, f) - 1.5707963267948966d);
                float fCos = (float) Math.cos(dAtan2);
                float fSin = (float) Math.sin(dAtan2);
                d3 = d6;
                double dAtan22 = (float) (Math.atan2(f4, f3) - 1.5707963267948966d);
                float fCos2 = (float) Math.cos(dAtan22);
                float fSin2 = (float) Math.sin(dAtan22);
                float f5 = fFloatValue2 * fFloatValue * POLYGON_MAGIC_NUMBER;
                this.path.cubicTo(f - (fCos * f5), f2 - (fSin * f5), f3 + (fCos2 * f5), f4 + (f5 * fSin2), f3, f4);
            } else {
                d = d7;
                d2 = d5;
                d3 = d6;
                i = i2;
                this.path.lineTo(f3, f4);
            }
            Double.isNaN(d3);
            d7 = d + d3;
            i2 = i + 1;
            f2 = f4;
            f = f3;
            dCeil = d8;
            d5 = d2;
            d6 = d3;
        }
        PointF value = this.positionAnimation.getValue();
        this.path.offset(value.x, value.y);
        this.path.close();
    }
}
