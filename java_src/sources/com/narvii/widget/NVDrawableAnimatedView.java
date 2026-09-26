package com.narvii.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class NVDrawableAnimatedView extends View {
    public static final int ALIGN_BOTTOM = 4;
    public static final int ALIGN_END = 16;
    public static final int ALIGN_START = 8;
    public static final int ALIGN_TOP = 2;
    public static final int CENTER = 32;
    public static final int CENTER_CROP = 3;
    public static final int CENTER_HORIZONTAL = 128;
    public static final int CENTER_INSIDE = 2;
    public static final int CENTER_VERTICAL = 64;
    public static final int FILL_PARENT = 1;
    public static final int FITXY = 1;
    public static final int NO_ANIMATION = 0;
    public static final int NO_SCALE = 4;
    public static final int ROTATE_ANTICLOCKWISE = 6;
    public static final int ROTATE_CLOCKWISE = 5;
    public static final int SCALE = 7;
    public static final int TRANSLATE_DOWN = 4;
    public static final int TRANSLATE_END = 2;
    public static final int TRANSLATE_START = 1;
    public static final int TRANSLATE_UP = 3;
    private ArrayList<Layer> layerInfoList;
    private Paint paint;
    private int vHeight;
    private int vWidth;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AnimationType {
    }

    private static class Layer {
        float animationInterval;
        int animationType;
        int drawableHeight;
        int drawableWidth;
        int duration;
        float fromValue;
        float layerAlpha;
        int layerGravity;
        int layerScaleType;
        BitmapShader layerShader;
        int marginBottom;
        int marginEnd;
        int marginStart;
        int marginTop;
        Matrix matrix;

        @DrawableRes
        int resId;
        long startDelay;
        Rect targetRect;
        ValueAnimator valueAnimator;
        int repeatMode = 1;
        int repeatCount = -1;
        TimeInterpolator interpolator = null;
        boolean configured = false;
        float translateX = 0.0f;
        float translateY = 0.0f;
        float rotateDegree = 0.0f;
        float scaleX = 1.0f;
        float scaleY = 1.0f;
        float baseScaleX = 1.0f;
        float baseScaleY = 1.0f;
        float fromScaleX = 1.0f;
        float fromScaleY = 1.0f;
        float toScaleX = 1.0f;
        float toScaleY = 1.0f;
        float scalePivotX = -1.0f;
        float scalePivotY = -1.0f;

        /* JADX INFO: Access modifiers changed from: private */
        public void destroy() {
            ValueAnimator valueAnimator = this.valueAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.valueAnimator = null;
            }
            this.matrix = null;
            this.layerShader = null;
            this.configured = false;
        }

        public static Layer generate(LayerConfig layerConfig) {
            Layer layer = new Layer();
            layer.animationType = layerConfig.getAnimationType();
            layer.layerGravity = layerConfig.getLayerGravity();
            layer.layerScaleType = layerConfig.getLayerScaleType();
            layer.layerAlpha = layerConfig.getLayerAlpha();
            layer.resId = layerConfig.getDrawableResId();
            layer.marginStart = layerConfig.getMarginStart();
            layer.marginTop = layerConfig.getMarginTop();
            layer.marginEnd = layerConfig.getMarginEnd();
            layer.marginBottom = layerConfig.getMarginBottom();
            layer.scalePivotX = layerConfig.getScalePivotX();
            layer.scalePivotY = layerConfig.getScalePivotY();
            layer.matrix = new Matrix();
            if (layer.animationType != 0) {
                if (layerConfig.getAnimationInterval() != -1.0f) {
                    layer.valueAnimator = ValueAnimator.ofFloat(layerConfig.getFromValue(), layerConfig.getFromValue() + layerConfig.getAnimationInterval());
                    if (layerConfig.getDuration() > 0) {
                        layer.valueAnimator.setDuration(layerConfig.getDuration());
                    }
                    layer.valueAnimator.setRepeatMode(layerConfig.getRepeatMode());
                    layer.valueAnimator.setRepeatCount(layerConfig.getRepeatCount());
                    layer.valueAnimator.setStartDelay(layerConfig.getStartDelay());
                    layer.valueAnimator.setInterpolator(layerConfig.getTimeInterpolator());
                }
                layer.animationInterval = layerConfig.getAnimationInterval();
                layer.fromValue = layerConfig.getFromValue();
                layer.duration = layerConfig.getDuration();
                layer.repeatMode = layerConfig.getRepeatMode();
                layer.repeatCount = layerConfig.getRepeatCount();
                layer.startDelay = layerConfig.getStartDelay();
                layer.interpolator = layerConfig.getTimeInterpolator();
            }
            return layer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Matrix getMatrix() {
            float fWidth;
            float fHeight;
            this.matrix.reset();
            this.matrix.setTranslate(this.translateX, this.translateY);
            if (this.scalePivotX == -1.0f) {
                fWidth = this.targetRect.centerX();
            } else {
                Rect rect = this.targetRect;
                fWidth = (rect.width() * this.scalePivotX) + rect.left;
            }
            if (this.scalePivotY == -1.0f) {
                fHeight = this.targetRect.centerY();
            } else {
                Rect rect2 = this.targetRect;
                fHeight = (rect2.height() * this.scalePivotY) + rect2.top;
            }
            this.matrix.postScale(this.scaleX, this.scaleY, fWidth, fHeight);
            this.matrix.postRotate(this.rotateDegree, this.targetRect.centerX(), this.targetRect.centerY());
            return this.matrix;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean tryEnd() {
            ValueAnimator valueAnimator = this.valueAnimator;
            if (valueAnimator == null || !valueAnimator.isStarted()) {
                return false;
            }
            this.valueAnimator.end();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean tryStart() {
            ValueAnimator valueAnimator = this.valueAnimator;
            if (valueAnimator == null || valueAnimator.isStarted()) {
                return false;
            }
            this.valueAnimator.start();
            return true;
        }

        private Layer() {
        }
    }

    public static class LayerConfig {
        public static final int ANIMATION_INTERVAL_AUTO = -1;
        private Builder builder;

        public static class Builder {
            int animationType;
            int duration;

            @DrawableRes
            int resId;
            int layerScaleType = 4;
            int layerGravity = 1;
            float layerAlpha = 1.0f;
            float scalePivotX = -1.0f;
            float scalePivotY = -1.0f;
            int marginStart = 0;
            int marginTop = 0;
            int marginEnd = 0;
            int marginBottom = 0;
            float fromValue = 0.0f;
            float animationInterval = -1.0f;
            int repeatMode = 1;
            int repeatCount = -1;
            long startDelay = 0;
            TimeInterpolator interpolator = null;

            public Builder animationInterval(float f) {
                this.animationInterval = f;
                return this;
            }

            public Builder duration(@IntRange int i10) {
                this.duration = i10;
                return this;
            }

            public Builder fromValue(float f) {
                this.fromValue = f;
                return this;
            }

            public Builder interpolator(TimeInterpolator timeInterpolator) {
                this.interpolator = timeInterpolator;
                return this;
            }

            public Builder layerAlpha(float f) {
                this.layerAlpha = f;
                return this;
            }

            public Builder layerGravity(int i10) {
                this.layerGravity = i10;
                return this;
            }

            public Builder layerScaleType(int i10) {
                this.layerScaleType = i10;
                return this;
            }

            public Builder margin(int i10, int i11, int i12, int i13) {
                this.marginStart = i10;
                this.marginTop = i11;
                this.marginEnd = i12;
                this.marginBottom = i13;
                return this;
            }

            public Builder repeatCount(int i10) {
                this.repeatCount = i10;
                return this;
            }

            public Builder repeatMode(int i10) {
                if (i10 == 1 || i10 == 2) {
                    this.repeatMode = i10;
                }
                return this;
            }

            public Builder scalePivot(float f, float f6) {
                this.scalePivotX = f;
                this.scalePivotY = f6;
                return this;
            }

            public Builder startDelay(long j6) {
                if (j6 > 0) {
                    this.startDelay = j6;
                }
                return this;
            }

            public LayerConfig build() {
                return new LayerConfig(this);
            }

            public Builder(@DrawableRes int i10, int i11) {
                this.resId = i10;
                this.animationType = i11;
            }
        }

        public float getAnimationInterval() {
            return this.builder.animationInterval;
        }

        public int getAnimationType() {
            return this.builder.animationType;
        }

        @DrawableRes
        public int getDrawableResId() {
            return this.builder.resId;
        }

        public int getDuration() {
            return this.builder.duration;
        }

        public float getFromValue() {
            return this.builder.fromValue;
        }

        public float getLayerAlpha() {
            return this.builder.layerAlpha;
        }

        public int getLayerGravity() {
            return this.builder.layerGravity;
        }

        public int getLayerScaleType() {
            return this.builder.layerScaleType;
        }

        public int getMarginBottom() {
            return this.builder.marginBottom;
        }

        public int getMarginEnd() {
            return this.builder.marginEnd;
        }

        public int getMarginStart() {
            return this.builder.marginStart;
        }

        public int getMarginTop() {
            return this.builder.marginTop;
        }

        public int getRepeatCount() {
            return this.builder.repeatCount;
        }

        public int getRepeatMode() {
            Builder builder = this.builder;
            if (builder.animationType == 7) {
                return 2;
            }
            return builder.repeatMode;
        }

        public float getScalePivotX() {
            return this.builder.scalePivotX;
        }

        public float getScalePivotY() {
            return this.builder.scalePivotY;
        }

        public long getStartDelay() {
            return this.builder.startDelay;
        }

        public TimeInterpolator getTimeInterpolator() {
            return this.builder.interpolator;
        }

        public LayerConfig(Builder builder) {
            this.builder = builder;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LayerScaleType {
    }

    public NVDrawableAnimatedView(Context context) {
        super(context);
        this.layerInfoList = new ArrayList<>();
        init();
    }

    private void configLayerAnimator(final Layer layer) {
        int i10;
        if (layer.animationInterval == -1.0f && (i10 = layer.animationType) != 0) {
            if (i10 == 1 || i10 == 2) {
                int iAbs = Math.abs(layer.drawableWidth - this.vWidth);
                if (iAbs != 0) {
                    layer.valueAnimator = ValueAnimator.ofInt(0, iAbs);
                    layer.animationInterval = iAbs;
                }
            } else if (i10 == 3 || i10 == 4) {
                int iAbs2 = Math.abs(layer.drawableHeight - this.vHeight);
                if (iAbs2 != 0) {
                    layer.valueAnimator = ValueAnimator.ofInt(0, iAbs2);
                    layer.animationInterval = iAbs2;
                }
            } else if (i10 == 5 || i10 == 6) {
                float f = layer.fromValue;
                layer.valueAnimator = ValueAnimator.ofFloat(f, f + 360.0f);
                layer.animationInterval = 360.0f;
            } else if (i10 == 7) {
                layer.valueAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
                layer.animationInterval = 1.0f;
            }
            ValueAnimator valueAnimator = layer.valueAnimator;
            if (valueAnimator != null) {
                valueAnimator.setDuration(layer.duration);
                layer.valueAnimator.setRepeatMode(layer.repeatMode);
                layer.valueAnimator.setRepeatCount(layer.repeatCount);
                layer.valueAnimator.setStartDelay(layer.startDelay);
                layer.valueAnimator.setInterpolator(layer.interpolator);
            }
        }
        ValueAnimator valueAnimator2 = layer.valueAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            layer.valueAnimator.removeAllUpdateListeners();
            if (layer.animationType != 0) {
                layer.valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.NVDrawableAnimatedView.1
                    float lastFraction = 0.0f;

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        float f6;
                        float animatedFraction = valueAnimator3.getAnimatedFraction();
                        if (valueAnimator3.getRepeatMode() == 1) {
                            float f7 = this.lastFraction;
                            if (animatedFraction > f7) {
                                f6 = (animatedFraction - f7) * layer.animationInterval;
                            } else {
                                f6 = layer.animationInterval * animatedFraction;
                            }
                        } else {
                            float f10 = this.lastFraction;
                            Layer layer2 = layer;
                            float f11 = (animatedFraction - f10) * layer2.animationInterval;
                            if (layer2.animationType == 7) {
                                if (animatedFraction < f10) {
                                    float f12 = layer2.toScaleX;
                                    float f13 = layer2.baseScaleX;
                                    float fFloatValue = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                                    Layer layer3 = layer;
                                    layer2.scaleX = f12 + (f13 * (fFloatValue - (layer3.fromValue + layer3.animationInterval)));
                                    float f14 = layer3.toScaleY;
                                    float f15 = layer3.baseScaleY;
                                    float fFloatValue2 = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                                    Layer layer4 = layer;
                                    layer3.scaleY = f14 + (f15 * (fFloatValue2 - (layer4.fromValue + layer4.animationInterval)));
                                } else {
                                    float f16 = layer2.fromScaleX;
                                    float f17 = layer2.baseScaleX;
                                    float fFloatValue3 = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                                    Layer layer5 = layer;
                                    layer2.scaleX = f16 + (f17 * (fFloatValue3 - layer5.fromValue));
                                    layer5.scaleY = layer5.fromScaleY + (layer5.baseScaleY * (((Float) valueAnimator3.getAnimatedValue()).floatValue() - layer.fromValue));
                                }
                            }
                            f6 = f11;
                        }
                        this.lastFraction = animatedFraction;
                        Layer layer6 = layer;
                        int i11 = layer6.animationType;
                        if (i11 == 1) {
                            layer6.translateX -= f6;
                        } else if (i11 == 2) {
                            layer6.translateX += f6;
                        } else if (i11 == 3) {
                            layer6.translateY -= f6;
                        } else if (i11 == 4) {
                            layer6.translateY += f6;
                        } else if (i11 == 5) {
                            layer6.rotateDegree += f6;
                        } else if (i11 == 6) {
                            layer6.rotateDegree -= f6;
                        }
                        NVDrawableAnimatedView.this.invalidate();
                    }
                });
                layer.valueAnimator.start();
            }
        }
    }

    private void configLayerInfo(@NonNull Layer layer) {
        float fMax;
        if (layer.layerShader == null) {
            Bitmap bitmap = ((BitmapDrawable) getResources().getDrawable(layer.resId)).getBitmap();
            layer.drawableWidth = bitmap.getWidth();
            int height = bitmap.getHeight();
            layer.drawableHeight = height;
            int i10 = layer.animationType;
            layer.layerShader = new BitmapShader(bitmap, ((i10 == 1 || i10 == 2) && layer.drawableWidth >= this.vWidth) ? Shader.TileMode.REPEAT : Shader.TileMode.CLAMP, ((i10 == 3 || i10 == 4) && height >= this.vHeight) ? Shader.TileMode.REPEAT : Shader.TileMode.CLAMP);
        }
        int i11 = layer.animationType;
        float fMax2 = 1.0f;
        if (i11 == 5 || i11 == 6) {
            float f = layer.fromValue;
            if (f != 0.0f) {
                layer.rotateDegree += f;
            }
        } else if (i11 == 1 || i11 == 2) {
            float f6 = layer.fromValue;
            if (f6 != 0.0f) {
                layer.translateX += f6;
            }
        } else {
            if (i11 != 3 && i11 != 4) {
                if (i11 == 7) {
                    float f7 = layer.scaleX;
                    layer.baseScaleX = f7;
                    float f10 = layer.scaleY;
                    layer.baseScaleY = f10;
                    float f11 = layer.fromValue;
                    float f12 = f7 * f11;
                    layer.fromScaleX = f12;
                    layer.fromScaleY = f10 * f11;
                    float f13 = layer.animationInterval;
                    float f14 = f7 * (f11 + f13);
                    layer.toScaleX = f14;
                    layer.toScaleY = f10 * (f11 + f13);
                    fMax2 = Math.max(1.0f, Math.max(f12, f14));
                    fMax = Math.max(1.0f, Math.max(layer.fromScaleY, layer.toScaleY));
                }
                layoutLayer(layer, fMax2, fMax);
                configLayerAnimator(layer);
                layer.configured = true;
            }
            float f15 = layer.fromValue;
            if (f15 != 0.0f) {
                layer.translateY += f15;
            }
        }
        fMax = 1.0f;
        layoutLayer(layer, fMax2, fMax);
        configLayerAnimator(layer);
        layer.configured = true;
    }

    private void destroy() {
        ArrayList<Layer> arrayList = this.layerInfoList;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        for (Layer layer : this.layerInfoList) {
            if (layer != null) {
                layer.destroy();
            }
        }
        this.layerInfoList.clear();
    }

    private void init() {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
    }

    private void layoutLayer(Layer layer, float f, float f6) {
        Rect rect = new Rect(0, 0, this.vWidth, this.vHeight);
        layer.targetRect = rect;
        int i10 = layer.layerGravity;
        if (i10 == 32 || i10 == 1) {
            if (i10 == 32) {
                int i11 = this.vWidth;
                int i12 = layer.drawableWidth;
                int i13 = (i11 - i12) / 2;
                int i14 = this.vHeight;
                int i15 = layer.drawableHeight;
                int i16 = (i14 - i15) / 2;
                int i17 = layer.animationType;
                if (i17 == 5 || i17 == 6) {
                    int i18 = i11 - i12 > 0 ? (i11 - i12) / 2 : 0;
                    int i19 = i14 - i15 > 0 ? (i14 - i15) / 2 : 0;
                    layer.targetRect = new Rect(i18, i19, this.vWidth - i18, this.vHeight - i19);
                }
                float f7 = this.vWidth / (layer.drawableWidth * 1.0f);
                float f10 = this.vHeight / (layer.drawableHeight * 1.0f);
                int i20 = layer.layerScaleType;
                if (i20 == 4) {
                    layer.translateX = i13;
                    layer.translateY = i16;
                } else if (i20 == 1) {
                    layer.scaleX = Math.min(1.0f, f7);
                    layer.scaleY = Math.min(1.0f, f10);
                    layer.translateX = i13;
                    layer.translateY = i16;
                } else {
                    float fMin = Math.min(1.0f, f7);
                    float fMin2 = Math.min(1.0f, f10);
                    float fMin3 = layer.layerScaleType == 2 ? Math.min(fMin, fMin2) : Math.max(fMin, fMin2);
                    layer.scaleX = fMin3;
                    layer.scaleY = fMin3;
                    layer.translateX = i13;
                    layer.translateY = i16;
                }
            } else {
                int i21 = layer.layerScaleType;
                if (i21 != 4) {
                    float f11 = this.vWidth / (layer.drawableWidth * 1.0f);
                    float f12 = this.vHeight / (layer.drawableHeight * 1.0f);
                    if (i21 == 1) {
                        layer.scaleX = f11;
                        layer.scaleY = f12;
                    } else {
                        float fMin4 = i21 == 2 ? Math.min(f11, f12) : Math.max(f11, f12);
                        layer.scaleX = fMin4;
                        layer.scaleY = fMin4;
                    }
                }
            }
            Rect rect2 = layer.targetRect;
            int i22 = rect2.left;
            int i23 = layer.marginStart;
            int i24 = layer.marginEnd;
            rect2.left = i22 + (i23 - i24);
            rect2.right += i23 - i24;
            int i25 = rect2.top;
            int i26 = layer.marginTop;
            int i27 = layer.marginBottom;
            rect2.top = i25 + (i26 - i27);
            rect2.bottom += i26 - i27;
            layer.translateX += i23 - i24;
            layer.translateY += i26 - i27;
            return;
        }
        if ((i10 & 128) == 128) {
            int i28 = this.vWidth;
            int i29 = layer.drawableWidth;
            int i30 = i28 - i29 > 0 ? (i28 - i29) / 2 : 0;
            rect.top = layer.marginTop;
            layer.translateX += i30;
        } else if ((i10 & 64) == 64) {
            int i31 = this.vHeight;
            int i32 = layer.drawableHeight;
            int i33 = i31 - i32 > 0 ? (i31 - i32) / 2 : 0;
            rect.left = layer.marginStart;
            layer.translateY += i33;
        }
        if ((i10 & 2) == 2) {
            int i34 = layer.animationType;
            if (i34 != 3 && i34 != 4) {
                int i35 = layer.marginTop;
                rect.top = i35;
                rect.bottom = (int) Math.min((layer.drawableHeight * f6) + i35, this.vHeight);
            }
            layer.translateY += layer.marginTop;
        } else if ((i10 & 4) == 4) {
            int i36 = this.vHeight;
            int i37 = layer.drawableHeight;
            int i38 = ((float) i36) - (((float) i37) * f6) > 0.0f ? (int) (i36 - (i37 * f6)) : 0;
            int i39 = layer.animationType;
            if (i39 != 3 && i39 != 4) {
                int i40 = layer.marginBottom;
                rect.top = i38 - i40;
                rect.bottom = i36 - i40;
            }
            layer.translateY += (i36 - i37 > 0 ? i36 - i37 : 0) - layer.marginBottom;
        }
        int i41 = layer.layerGravity;
        if ((i41 & 8) == 8) {
            int i42 = layer.animationType;
            if (i42 != 1 && i42 != 2) {
                Rect rect3 = layer.targetRect;
                int i43 = layer.marginStart;
                rect3.left = i43;
                rect3.right = (int) Math.min((layer.drawableWidth * f) + i43, this.vWidth);
            }
            layer.translateX += layer.marginStart;
            return;
        }
        if ((i41 & 16) == 16) {
            int i44 = this.vWidth;
            int i45 = layer.drawableWidth;
            int i46 = ((float) i44) - (((float) i45) * f) > 0.0f ? (int) (i44 - (i45 * f)) : 0;
            int i47 = layer.animationType;
            if (i47 != 1 && i47 != 2) {
                Rect rect4 = layer.targetRect;
                int i48 = layer.marginEnd;
                rect4.left = i46 - i48;
                rect4.right = i44 - i48;
            }
            layer.translateX += (i44 - i45 > 0 ? i44 - i45 : 0) - layer.marginEnd;
        }
    }

    private void reconfiguration(boolean z6) {
        if (this.vWidth <= 0 || this.vHeight <= 0 || this.layerInfoList.isEmpty()) {
            return;
        }
        for (Layer layer : this.layerInfoList) {
            if (layer != null && (!layer.configured || z6)) {
                configLayerInfo(layer);
            }
        }
    }

    public int addLayer(LayerConfig layerConfig) {
        if (layerConfig == null) {
            return -1;
        }
        this.layerInfoList.add(Layer.generate(layerConfig));
        reconfiguration(false);
        return this.layerInfoList.size() - 1;
    }

    public int addLayerList(ArrayList<LayerConfig> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return -1;
        }
        int size = this.layerInfoList.size();
        for (LayerConfig layerConfig : arrayList) {
            if (layerConfig != null) {
                this.layerInfoList.add(Layer.generate(layerConfig));
            }
        }
        reconfiguration(false);
        return size;
    }

    public int getLayerCount() {
        ArrayList<Layer> arrayList = this.layerInfoList;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        ArrayList<Layer> arrayList = this.layerInfoList;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        canvas.save();
        for (Layer layer : this.layerInfoList) {
            if (layer != null && layer.configured) {
                layer.layerShader.setLocalMatrix(layer.getMatrix());
                this.paint.setShader(layer.layerShader);
                this.paint.setAlpha((int) (layer.layerAlpha * 255.0f));
                int i10 = layer.animationType;
                if (i10 == 5 || i10 == 6) {
                    canvas.drawCircle(layer.targetRect.centerX(), layer.targetRect.centerY(), Math.min(layer.targetRect.width(), layer.targetRect.height()) / 2, this.paint);
                } else {
                    canvas.drawRect(layer.targetRect, this.paint);
                }
            }
        }
        canvas.restore();
    }

    public void removeLayer(int i10) {
        ArrayList<Layer> arrayList = this.layerInfoList;
        if (arrayList == null || i10 < 0 || i10 >= arrayList.size()) {
            return;
        }
        this.layerInfoList.remove(i10).destroy();
        invalidate();
    }

    public void replaceLayerList(ArrayList<LayerConfig> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ArrayList<Layer> arrayList2 = this.layerInfoList;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            for (Layer layer : this.layerInfoList) {
                if (layer != null) {
                    layer.destroy();
                }
            }
            this.layerInfoList.clear();
        }
        if (this.layerInfoList == null) {
            this.layerInfoList = new ArrayList<>();
        }
        for (LayerConfig layerConfig : arrayList) {
            if (layerConfig != null) {
                this.layerInfoList.add(Layer.generate(layerConfig));
            }
        }
        reconfiguration(true);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        destroy();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 == i12 && i11 == i13) {
            return;
        }
        this.vWidth = i10;
        this.vHeight = i11;
        reconfiguration(true);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        ArrayList<Layer> arrayList = this.layerInfoList;
        if (arrayList != null && !arrayList.isEmpty()) {
            for (Layer layer : this.layerInfoList) {
                if (layer != null && layer.configured) {
                    if (i10 == 0) {
                        layer.tryStart();
                    } else {
                        layer.tryEnd();
                    }
                }
            }
        }
    }

    public NVDrawableAnimatedView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.layerInfoList = new ArrayList<>();
        init();
    }

    public NVDrawableAnimatedView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.layerInfoList = new ArrayList<>();
        init();
    }

    @TargetApi(21)
    public NVDrawableAnimatedView(Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.layerInfoList = new ArrayList<>();
        init();
    }
}
