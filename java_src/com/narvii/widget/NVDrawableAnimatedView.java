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
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
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
    /* loaded from: classes.dex */
    public @interface AnimationType {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface LayerScaleType {
    }

    public NVDrawableAnimatedView(Context context) {
        super(context);
        this.layerInfoList = new ArrayList<>();
        init();
    }

    public NVDrawableAnimatedView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.layerInfoList = new ArrayList<>();
        init();
    }

    public NVDrawableAnimatedView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.layerInfoList = new ArrayList<>();
        init();
    }

    @TargetApi(21)
    public NVDrawableAnimatedView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.layerInfoList = new ArrayList<>();
        init();
    }

    private void init() {
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
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
        Iterator<LayerConfig> it = arrayList.iterator();
        while (it.hasNext()) {
            LayerConfig next = it.next();
            if (next != null) {
                this.layerInfoList.add(Layer.generate(next));
            }
        }
        reconfiguration(false);
        return size;
    }

    public void replaceLayerList(ArrayList<LayerConfig> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ArrayList<Layer> arrayList2 = this.layerInfoList;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            Iterator<Layer> it = this.layerInfoList.iterator();
            while (it.hasNext()) {
                Layer next = it.next();
                if (next != null) {
                    next.destroy();
                }
            }
            this.layerInfoList.clear();
        }
        if (this.layerInfoList == null) {
            this.layerInfoList = new ArrayList<>();
        }
        Iterator<LayerConfig> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            LayerConfig next2 = it2.next();
            if (next2 != null) {
                this.layerInfoList.add(Layer.generate(next2));
            }
        }
        reconfiguration(true);
    }

    public void removeLayer(int i) {
        ArrayList<Layer> arrayList = this.layerInfoList;
        if (arrayList == null || i < 0 || i >= arrayList.size()) {
            return;
        }
        this.layerInfoList.remove(i).destroy();
        invalidate();
    }

    public int getLayerCount() {
        ArrayList<Layer> arrayList = this.layerInfoList;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        this.vWidth = i;
        this.vHeight = i2;
        reconfiguration(true);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        ArrayList<Layer> arrayList = this.layerInfoList;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        canvas.save();
        Iterator<Layer> it = this.layerInfoList.iterator();
        while (it.hasNext()) {
            Layer next = it.next();
            if (next != null && next.configured) {
                next.layerShader.setLocalMatrix(next.getMatrix());
                this.paint.setShader(next.layerShader);
                this.paint.setAlpha((int) (next.layerAlpha * 255.0f));
                int i = next.animationType;
                if (i == 5 || i == 6) {
                    canvas.drawCircle(next.targetRect.centerX(), next.targetRect.centerY(), Math.min(next.targetRect.width(), next.targetRect.height()) / 2, this.paint);
                } else {
                    canvas.drawRect(next.targetRect, this.paint);
                }
            }
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        ArrayList<Layer> arrayList = this.layerInfoList;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        Iterator<Layer> it = this.layerInfoList.iterator();
        while (it.hasNext()) {
            Layer next = it.next();
            if (next != null && next.configured) {
                if (i == 0) {
                    next.tryStart();
                } else {
                    next.tryEnd();
                }
            }
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        destroy();
    }

    private void destroy() {
        ArrayList<Layer> arrayList = this.layerInfoList;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        Iterator<Layer> it = this.layerInfoList.iterator();
        while (it.hasNext()) {
            Layer next = it.next();
            if (next != null) {
                next.destroy();
            }
        }
        this.layerInfoList.clear();
    }

    private void layoutLayer(Layer layer, float f, float f2) {
        layer.targetRect = new Rect(0, 0, this.vWidth, this.vHeight);
        int i = layer.layerGravity;
        if (i == 32 || i == 1) {
            if (layer.layerGravity == 32) {
                int i2 = (this.vWidth - layer.drawableWidth) / 2;
                int i3 = (this.vHeight - layer.drawableHeight) / 2;
                int i4 = layer.animationType;
                if (i4 == 5 || i4 == 6) {
                    int i5 = this.vWidth;
                    int i6 = layer.drawableWidth;
                    int i7 = i5 - i6 > 0 ? (i5 - i6) / 2 : 0;
                    int i8 = this.vHeight;
                    int i9 = layer.drawableHeight;
                    int i10 = i8 - i9 > 0 ? (i8 - i9) / 2 : 0;
                    layer.targetRect = new Rect(i7, i10, this.vWidth - i7, this.vHeight - i10);
                }
                float f3 = this.vWidth / (layer.drawableWidth * 1.0f);
                float f4 = this.vHeight / (layer.drawableHeight * 1.0f);
                int i11 = layer.layerScaleType;
                if (i11 == 4) {
                    layer.translateX = i2;
                    layer.translateY = i3;
                } else if (i11 == 1) {
                    layer.scaleX = Math.min(1.0f, f3);
                    layer.scaleY = Math.min(1.0f, f4);
                    layer.translateX = i2;
                    layer.translateY = i3;
                } else {
                    float fMin = Math.min(1.0f, f3);
                    float fMin2 = Math.min(1.0f, f4);
                    float fMin3 = layer.layerScaleType == 2 ? Math.min(fMin, fMin2) : Math.max(fMin, fMin2);
                    layer.scaleX = fMin3;
                    layer.scaleY = fMin3;
                    layer.translateX = i2;
                    layer.translateY = i3;
                }
            } else {
                int i12 = layer.layerScaleType;
                if (i12 != 4) {
                    float f5 = this.vWidth / (layer.drawableWidth * 1.0f);
                    float f6 = this.vHeight / (layer.drawableHeight * 1.0f);
                    if (i12 == 1) {
                        layer.scaleX = f5;
                        layer.scaleY = f6;
                    } else {
                        float fMin4 = i12 == 2 ? Math.min(f5, f6) : Math.max(f5, f6);
                        layer.scaleX = fMin4;
                        layer.scaleY = fMin4;
                    }
                }
            }
            Rect rect = layer.targetRect;
            int i13 = rect.left;
            int i14 = layer.marginStart;
            int i15 = layer.marginEnd;
            rect.left = i13 + (i14 - i15);
            rect.right += i14 - i15;
            int i16 = rect.top;
            int i17 = layer.marginTop;
            int i18 = layer.marginBottom;
            rect.top = i16 + (i17 - i18);
            rect.bottom += i17 - i18;
            layer.translateX += i14 - i15;
            layer.translateY += i17 - i18;
            return;
        }
        if ((i & 128) == 128) {
            int i19 = this.vWidth;
            int i20 = layer.drawableWidth;
            int i21 = i19 - i20 > 0 ? (i19 - i20) / 2 : 0;
            layer.targetRect.top = layer.marginTop;
            layer.translateX += i21;
        } else if ((i & 64) == 64) {
            int i22 = this.vHeight;
            int i23 = layer.drawableHeight;
            int i24 = i22 - i23 > 0 ? (i22 - i23) / 2 : 0;
            layer.targetRect.left = layer.marginStart;
            layer.translateY += i24;
        }
        int i25 = layer.layerGravity;
        if ((i25 & 2) == 2) {
            int i26 = layer.animationType;
            if (i26 != 3 && i26 != 4) {
                Rect rect2 = layer.targetRect;
                int i27 = layer.marginTop;
                rect2.top = i27;
                rect2.bottom = (int) Math.min((layer.drawableHeight * f2) + i27, this.vHeight);
            }
            layer.translateY += layer.marginTop;
        } else if ((i25 & 4) == 4) {
            int i28 = this.vHeight;
            int i29 = layer.drawableHeight;
            int i30 = ((float) i28) - (((float) i29) * f2) > 0.0f ? (int) (i28 - (i29 * f2)) : 0;
            int i31 = layer.animationType;
            if (i31 != 3 && i31 != 4) {
                Rect rect3 = layer.targetRect;
                int i32 = layer.marginBottom;
                rect3.top = i30 - i32;
                rect3.bottom = this.vHeight - i32;
            }
            layer.translateY += (this.vHeight - layer.drawableHeight > 0 ? r13 - r0 : 0) - layer.marginBottom;
        }
        int i33 = layer.layerGravity;
        if ((i33 & 8) == 8) {
            int i34 = layer.animationType;
            if (i34 != 1 && i34 != 2) {
                Rect rect4 = layer.targetRect;
                int i35 = layer.marginStart;
                rect4.left = i35;
                rect4.right = (int) Math.min((layer.drawableWidth * f) + i35, this.vWidth);
            }
            layer.translateX += layer.marginStart;
            return;
        }
        if ((i33 & 16) == 16) {
            int i36 = this.vWidth;
            int i37 = layer.drawableWidth;
            int i38 = ((float) i36) - (((float) i37) * f) > 0.0f ? (int) (i36 - (i37 * f)) : 0;
            int i39 = layer.animationType;
            if (i39 != 1 && i39 != 2) {
                Rect rect5 = layer.targetRect;
                int i40 = layer.marginEnd;
                rect5.left = i38 - i40;
                rect5.right = this.vWidth - i40;
            }
            layer.translateX += (this.vWidth - layer.drawableWidth > 0 ? r12 - r13 : 0) - layer.marginEnd;
        }
    }

    private void configLayerAnimator(final Layer layer) {
        int i;
        if (layer.animationInterval == -1.0f && (i = layer.animationType) != 0) {
            if (i == 1 || i == 2) {
                int iAbs = Math.abs(layer.drawableWidth - this.vWidth);
                if (iAbs != 0) {
                    layer.valueAnimator = ValueAnimator.ofInt(0, iAbs);
                    layer.animationInterval = iAbs;
                }
            } else if (i == 3 || i == 4) {
                int iAbs2 = Math.abs(layer.drawableHeight - this.vHeight);
                if (iAbs2 != 0) {
                    layer.valueAnimator = ValueAnimator.ofInt(0, iAbs2);
                    layer.animationInterval = iAbs2;
                }
            } else if (i == 5 || i == 6) {
                float f = layer.fromValue;
                layer.valueAnimator = ValueAnimator.ofFloat(f, f + 360.0f);
                layer.animationInterval = 360.0f;
            } else if (i == 7) {
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
                        float f2;
                        float animatedFraction = valueAnimator3.getAnimatedFraction();
                        if (valueAnimator3.getRepeatMode() == 1) {
                            float f3 = this.lastFraction;
                            if (animatedFraction > f3) {
                                f2 = (animatedFraction - f3) * layer.animationInterval;
                            } else {
                                f2 = layer.animationInterval * animatedFraction;
                            }
                        } else {
                            float f4 = this.lastFraction;
                            Layer layer2 = layer;
                            float f5 = (animatedFraction - f4) * layer2.animationInterval;
                            if (layer2.animationType == 7) {
                                if (animatedFraction < f4) {
                                    float f6 = layer2.toScaleX;
                                    float f7 = layer2.baseScaleX;
                                    float fFloatValue = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                                    Layer layer3 = layer;
                                    layer2.scaleX = f6 + (f7 * (fFloatValue - (layer3.fromValue + layer3.animationInterval)));
                                    float f8 = layer3.toScaleY;
                                    float f9 = layer3.baseScaleY;
                                    float fFloatValue2 = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                                    Layer layer4 = layer;
                                    layer3.scaleY = f8 + (f9 * (fFloatValue2 - (layer4.fromValue + layer4.animationInterval)));
                                } else {
                                    float f10 = layer2.fromScaleX;
                                    float f11 = layer2.baseScaleX;
                                    float fFloatValue3 = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                                    Layer layer5 = layer;
                                    layer2.scaleX = f10 + (f11 * (fFloatValue3 - layer5.fromValue));
                                    layer5.scaleY = layer5.fromScaleY + (layer5.baseScaleY * (((Float) valueAnimator3.getAnimatedValue()).floatValue() - layer.fromValue));
                                }
                            }
                            f2 = f5;
                        }
                        this.lastFraction = animatedFraction;
                        Layer layer6 = layer;
                        int i2 = layer6.animationType;
                        if (i2 == 1) {
                            layer6.translateX -= f2;
                        } else if (i2 == 2) {
                            layer6.translateX += f2;
                        } else if (i2 == 3) {
                            layer6.translateY -= f2;
                        } else if (i2 == 4) {
                            layer6.translateY += f2;
                        } else if (i2 == 5) {
                            layer6.rotateDegree += f2;
                        } else if (i2 == 6) {
                            layer6.rotateDegree -= f2;
                        }
                        NVDrawableAnimatedView.this.invalidate();
                    }
                });
                layer.valueAnimator.start();
            }
        }
    }

    private void configLayerInfo(Layer layer) {
        float fMax;
        if (layer.layerShader == null) {
            Bitmap bitmap = ((BitmapDrawable) getResources().getDrawable(layer.resId)).getBitmap();
            layer.drawableWidth = bitmap.getWidth();
            layer.drawableHeight = bitmap.getHeight();
            int i = layer.animationType;
            Shader.TileMode tileMode = ((i == 1 || i == 2) && layer.drawableWidth >= this.vWidth) ? Shader.TileMode.REPEAT : Shader.TileMode.CLAMP;
            int i2 = layer.animationType;
            layer.layerShader = new BitmapShader(bitmap, tileMode, ((i2 == 3 || i2 == 4) && layer.drawableHeight >= this.vHeight) ? Shader.TileMode.REPEAT : Shader.TileMode.CLAMP);
        }
        int i3 = layer.animationType;
        float fMax2 = 1.0f;
        if (i3 == 5 || i3 == 6) {
            float f = layer.fromValue;
            if (f != 0.0f) {
                layer.rotateDegree += f;
            }
        } else if (i3 == 1 || i3 == 2) {
            float f2 = layer.fromValue;
            if (f2 != 0.0f) {
                layer.translateX += f2;
            }
        } else if (i3 == 3 || i3 == 4) {
            float f3 = layer.fromValue;
            if (f3 != 0.0f) {
                layer.translateY += f3;
            }
        } else {
            if (i3 == 7) {
                float f4 = layer.scaleX;
                layer.baseScaleX = f4;
                float f5 = layer.scaleY;
                layer.baseScaleY = f5;
                float f6 = layer.fromValue;
                layer.fromScaleX = f4 * f6;
                layer.fromScaleY = f5 * f6;
                float f7 = layer.animationInterval;
                layer.toScaleX = f4 * (f6 + f7);
                layer.toScaleY = f5 * (f6 + f7);
                fMax = Math.max(1.0f, Math.max(layer.fromScaleX, layer.toScaleX));
                fMax2 = Math.max(1.0f, Math.max(layer.fromScaleY, layer.toScaleY));
            }
            layoutLayer(layer, fMax, fMax2);
            configLayerAnimator(layer);
            layer.configured = true;
        }
        fMax = 1.0f;
        layoutLayer(layer, fMax, fMax2);
        configLayerAnimator(layer);
        layer.configured = true;
    }

    private void reconfiguration(boolean z) {
        if (this.vWidth <= 0 || this.vHeight <= 0 || this.layerInfoList.isEmpty()) {
            return;
        }
        Iterator<Layer> it = this.layerInfoList.iterator();
        while (it.hasNext()) {
            Layer next = it.next();
            if (next != null && (!next.configured || z)) {
                configLayerInfo(next);
            }
        }
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

        private Layer() {
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
        public boolean tryStart() {
            ValueAnimator valueAnimator = this.valueAnimator;
            if (valueAnimator == null || valueAnimator.isStarted()) {
                return false;
            }
            this.valueAnimator.start();
            return true;
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
    }

    public static class LayerConfig {
        public static final int ANIMATION_INTERVAL_AUTO = -1;
        private Builder builder;

        public LayerConfig(Builder builder) {
            this.builder = builder;
        }

        public int getDrawableResId() {
            return this.builder.resId;
        }

        public int getAnimationType() {
            return this.builder.animationType;
        }

        public int getLayerScaleType() {
            return this.builder.layerScaleType;
        }

        public int getLayerGravity() {
            return this.builder.layerGravity;
        }

        public float getLayerAlpha() {
            return this.builder.layerAlpha;
        }

        public int getMarginStart() {
            return this.builder.marginStart;
        }

        public int getMarginTop() {
            return this.builder.marginTop;
        }

        public int getMarginEnd() {
            return this.builder.marginEnd;
        }

        public int getMarginBottom() {
            return this.builder.marginBottom;
        }

        public float getFromValue() {
            return this.builder.fromValue;
        }

        public float getScalePivotX() {
            return this.builder.scalePivotX;
        }

        public float getScalePivotY() {
            return this.builder.scalePivotY;
        }

        public float getAnimationInterval() {
            return this.builder.animationInterval;
        }

        public int getDuration() {
            return this.builder.duration;
        }

        public int getRepeatMode() {
            Builder builder = this.builder;
            if (builder.animationType == 7) {
                return 2;
            }
            return builder.repeatMode;
        }

        public int getRepeatCount() {
            return this.builder.repeatCount;
        }

        public long getStartDelay() {
            return this.builder.startDelay;
        }

        public TimeInterpolator getTimeInterpolator() {
            return this.builder.interpolator;
        }

        public static class Builder {
            int animationType;
            int duration;
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

            public Builder(int i, int i2) {
                this.resId = -1;
                this.resId = i;
                this.animationType = i2;
            }

            public Builder fromValue(float f) {
                this.fromValue = f;
                return this;
            }

            public Builder animationInterval(float f) {
                this.animationInterval = f;
                return this;
            }

            public Builder layerGravity(int i) {
                this.layerGravity = i;
                return this;
            }

            public Builder layerScaleType(int i) {
                this.layerScaleType = i;
                return this;
            }

            public Builder layerAlpha(float f) {
                this.layerAlpha = f;
                return this;
            }

            public Builder duration(int i) {
                this.duration = i;
                return this;
            }

            public Builder repeatMode(int i) {
                if (i == 1 || i == 2) {
                    this.repeatMode = i;
                }
                return this;
            }

            public Builder repeatCount(int i) {
                this.repeatCount = i;
                return this;
            }

            public Builder interpolator(TimeInterpolator timeInterpolator) {
                this.interpolator = timeInterpolator;
                return this;
            }

            public Builder margin(int i, int i2, int i3, int i4) {
                this.marginStart = i;
                this.marginTop = i2;
                this.marginEnd = i3;
                this.marginBottom = i4;
                return this;
            }

            public Builder scalePivot(float f, float f2) {
                this.scalePivotX = f;
                this.scalePivotY = f2;
                return this;
            }

            public Builder startDelay(long j) {
                if (j > 0) {
                    this.startDelay = j;
                }
                return this;
            }

            public LayerConfig build() {
                return new LayerConfig(this);
            }
        }
    }
}
