package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.PolystarContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatablePathValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class PolystarShape implements ContentModel {
    private final AnimatableFloatValue innerRadius;
    private final AnimatableFloatValue innerRoundedness;
    private final String name;
    private final AnimatableFloatValue outerRadius;
    private final AnimatableFloatValue outerRoundedness;
    private final AnimatableFloatValue points;
    private final AnimatableValue<PointF, PointF> position;
    private final AnimatableFloatValue rotation;
    private final Type type;

    public enum Type {
        Star(1),
        Polygon(2);

        private final int value;

        Type(int i) {
            this.value = i;
        }

        static Type forValue(int i) {
            for (Type type : values()) {
                if (type.value == i) {
                    return type;
                }
            }
            return null;
        }
    }

    private PolystarShape(String str, Type type, AnimatableFloatValue animatableFloatValue, AnimatableValue<PointF, PointF> animatableValue, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3, AnimatableFloatValue animatableFloatValue4, AnimatableFloatValue animatableFloatValue5, AnimatableFloatValue animatableFloatValue6) {
        this.name = str;
        this.type = type;
        this.points = animatableFloatValue;
        this.position = animatableValue;
        this.rotation = animatableFloatValue2;
        this.innerRadius = animatableFloatValue3;
        this.outerRadius = animatableFloatValue4;
        this.innerRoundedness = animatableFloatValue5;
        this.outerRoundedness = animatableFloatValue6;
    }

    public String getName() {
        return this.name;
    }

    public Type getType() {
        return this.type;
    }

    public AnimatableFloatValue getPoints() {
        return this.points;
    }

    public AnimatableValue<PointF, PointF> getPosition() {
        return this.position;
    }

    public AnimatableFloatValue getRotation() {
        return this.rotation;
    }

    public AnimatableFloatValue getInnerRadius() {
        return this.innerRadius;
    }

    public AnimatableFloatValue getOuterRadius() {
        return this.outerRadius;
    }

    public AnimatableFloatValue getInnerRoundedness() {
        return this.innerRoundedness;
    }

    public AnimatableFloatValue getOuterRoundedness() {
        return this.outerRoundedness;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new PolystarContent(lottieDrawable, baseLayer, this);
    }

    static class Factory {
        static PolystarShape newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            AnimatableFloatValue animatableFloatValueNewInstance;
            String strOptString = jSONObject.optString("nm");
            Type typeForValue = Type.forValue(jSONObject.optInt("sy"));
            AnimatableFloatValue animatableFloatValueNewInstance2 = AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("pt"), lottieComposition, false);
            AnimatableValue<PointF, PointF> animatableValueCreateAnimatablePathOrSplitDimensionPath = AnimatablePathValue.createAnimatablePathOrSplitDimensionPath(jSONObject.optJSONObject(TtmlNode.TAG_P), lottieComposition);
            AnimatableFloatValue animatableFloatValueNewInstance3 = AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("r"), lottieComposition, false);
            AnimatableFloatValue animatableFloatValueNewInstance4 = AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("or"), lottieComposition);
            AnimatableFloatValue animatableFloatValueNewInstance5 = AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("os"), lottieComposition, false);
            AnimatableFloatValue animatableFloatValue = null;
            if (typeForValue == Type.Star) {
                AnimatableFloatValue animatableFloatValueNewInstance6 = AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("ir"), lottieComposition);
                animatableFloatValueNewInstance = AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("is"), lottieComposition, false);
                animatableFloatValue = animatableFloatValueNewInstance6;
            } else {
                animatableFloatValueNewInstance = null;
            }
            return new PolystarShape(strOptString, typeForValue, animatableFloatValueNewInstance2, animatableValueCreateAnimatablePathOrSplitDimensionPath, animatableFloatValueNewInstance3, animatableFloatValue, animatableFloatValueNewInstance4, animatableFloatValueNewInstance, animatableFloatValueNewInstance5);
        }
    }
}
