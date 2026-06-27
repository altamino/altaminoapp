package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.RectangleContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatablePathValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RectangleShape implements ContentModel {
    private final AnimatableFloatValue cornerRadius;
    private final String name;
    private final AnimatableValue<PointF, PointF> position;
    private final AnimatablePointValue size;

    private RectangleShape(String str, AnimatableValue<PointF, PointF> animatableValue, AnimatablePointValue animatablePointValue, AnimatableFloatValue animatableFloatValue) {
        this.name = str;
        this.position = animatableValue;
        this.size = animatablePointValue;
        this.cornerRadius = animatableFloatValue;
    }

    static class Factory {
        static RectangleShape newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            return new RectangleShape(jSONObject.optString("nm"), AnimatablePathValue.createAnimatablePathOrSplitDimensionPath(jSONObject.optJSONObject(TtmlNode.TAG_P), lottieComposition), AnimatablePointValue.Factory.newInstance(jSONObject.optJSONObject("s"), lottieComposition), AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("r"), lottieComposition));
        }
    }

    public String getName() {
        return this.name;
    }

    public AnimatableFloatValue getCornerRadius() {
        return this.cornerRadius;
    }

    public AnimatablePointValue getSize() {
        return this.size;
    }

    public AnimatableValue<PointF, PointF> getPosition() {
        return this.position;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new RectangleContent(lottieDrawable, baseLayer, this);
    }

    public String toString() {
        return "RectangleShape{cornerRadius=" + this.cornerRadius.getInitialValue() + ", position=" + this.position + ", size=" + this.size + '}';
    }
}
