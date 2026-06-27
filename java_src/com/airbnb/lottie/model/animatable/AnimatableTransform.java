package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import android.util.Log;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ModifierContent;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.ScaleXY;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatableScaleValue;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Collections;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AnimatableTransform implements ModifierContent, ContentModel {
    private final AnimatablePathValue anchorPoint;
    private final AnimatableFloatValue endOpacity;
    private final AnimatableIntegerValue opacity;
    private final AnimatableValue<PointF, PointF> position;
    private final AnimatableFloatValue rotation;
    private final AnimatableScaleValue scale;
    private final AnimatableFloatValue startOpacity;

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return null;
    }

    private AnimatableTransform(AnimatablePathValue animatablePathValue, AnimatableValue<PointF, PointF> animatableValue, AnimatableScaleValue animatableScaleValue, AnimatableFloatValue animatableFloatValue, AnimatableIntegerValue animatableIntegerValue, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3) {
        this.anchorPoint = animatablePathValue;
        this.position = animatableValue;
        this.scale = animatableScaleValue;
        this.rotation = animatableFloatValue;
        this.opacity = animatableIntegerValue;
        this.startOpacity = animatableFloatValue2;
        this.endOpacity = animatableFloatValue3;
    }

    public AnimatablePathValue getAnchorPoint() {
        return this.anchorPoint;
    }

    public AnimatableValue<PointF, PointF> getPosition() {
        return this.position;
    }

    public AnimatableScaleValue getScale() {
        return this.scale;
    }

    public AnimatableFloatValue getRotation() {
        return this.rotation;
    }

    public AnimatableIntegerValue getOpacity() {
        return this.opacity;
    }

    public AnimatableFloatValue getStartOpacity() {
        return this.startOpacity;
    }

    public AnimatableFloatValue getEndOpacity() {
        return this.endOpacity;
    }

    public TransformKeyframeAnimation createAnimation() {
        return new TransformKeyframeAnimation(this);
    }

    public static class Factory {
        public static AnimatableTransform newInstance() {
            return new AnimatableTransform(new AnimatablePathValue(), new AnimatablePathValue(), AnimatableScaleValue.Factory.newInstance(), AnimatableFloatValue.Factory.newInstance(), AnimatableIntegerValue.Factory.newInstance(), AnimatableFloatValue.Factory.newInstance(), AnimatableFloatValue.Factory.newInstance());
        }

        public static AnimatableTransform newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            AnimatablePathValue animatablePathValue;
            AnimatableScaleValue animatableScaleValue;
            AnimatableIntegerValue animatableIntegerValue;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("a");
            if (jSONObjectOptJSONObject != null) {
                animatablePathValue = new AnimatablePathValue(jSONObjectOptJSONObject.opt("k"), lottieComposition);
            } else {
                Log.w(L.TAG, "Layer has no transform property. You may be using an unsupported layer type such as a camera.");
                animatablePathValue = new AnimatablePathValue();
            }
            AnimatablePathValue animatablePathValue2 = animatablePathValue;
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(TtmlNode.TAG_P);
            if (jSONObjectOptJSONObject2 != null) {
                AnimatableValue<PointF, PointF> animatableValueCreateAnimatablePathOrSplitDimensionPath = AnimatablePathValue.createAnimatablePathOrSplitDimensionPath(jSONObjectOptJSONObject2, lottieComposition);
                JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("s");
                if (jSONObjectOptJSONObject3 != null) {
                    animatableScaleValue = AnimatableScaleValue.Factory.newInstance(jSONObjectOptJSONObject3, lottieComposition);
                } else {
                    animatableScaleValue = new AnimatableScaleValue(Collections.emptyList(), new ScaleXY());
                }
                AnimatableScaleValue animatableScaleValue2 = animatableScaleValue;
                JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("r");
                if (jSONObjectOptJSONObject4 == null) {
                    jSONObjectOptJSONObject4 = jSONObject.optJSONObject("rz");
                }
                if (jSONObjectOptJSONObject4 != null) {
                    AnimatableFloatValue animatableFloatValueNewInstance = AnimatableFloatValue.Factory.newInstance(jSONObjectOptJSONObject4, lottieComposition, false);
                    JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("o");
                    if (jSONObjectOptJSONObject5 != null) {
                        animatableIntegerValue = AnimatableIntegerValue.Factory.newInstance(jSONObjectOptJSONObject5, lottieComposition);
                    } else {
                        animatableIntegerValue = new AnimatableIntegerValue(Collections.emptyList(), 100);
                    }
                    AnimatableIntegerValue animatableIntegerValue2 = animatableIntegerValue;
                    JSONObject jSONObjectOptJSONObject6 = jSONObject.optJSONObject("so");
                    AnimatableFloatValue animatableFloatValueNewInstance2 = jSONObjectOptJSONObject6 != null ? AnimatableFloatValue.Factory.newInstance(jSONObjectOptJSONObject6, lottieComposition, false) : null;
                    JSONObject jSONObjectOptJSONObject7 = jSONObject.optJSONObject("eo");
                    return new AnimatableTransform(animatablePathValue2, animatableValueCreateAnimatablePathOrSplitDimensionPath, animatableScaleValue2, animatableFloatValueNewInstance, animatableIntegerValue2, animatableFloatValueNewInstance2, jSONObjectOptJSONObject7 != null ? AnimatableFloatValue.Factory.newInstance(jSONObjectOptJSONObject7, lottieComposition, false) : null);
                }
                throwMissingTransform("rotation");
                throw null;
            }
            throwMissingTransform("position");
            throw null;
        }

        private static void throwMissingTransform(String str) {
            throw new IllegalArgumentException("Missing transform for " + str);
        }
    }
}
