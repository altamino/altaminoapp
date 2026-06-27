package com.airbnb.lottie.model.content;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.GradientFillContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GradientFill implements ContentModel {
    private final AnimatablePointValue endPoint;
    private final Path.FillType fillType;
    private final AnimatableGradientColorValue gradientColor;
    private final GradientType gradientType;
    private final AnimatableFloatValue highlightAngle;
    private final AnimatableFloatValue highlightLength;
    private final String name;
    private final AnimatableIntegerValue opacity;
    private final AnimatablePointValue startPoint;

    private GradientFill(String str, GradientType gradientType, Path.FillType fillType, AnimatableGradientColorValue animatableGradientColorValue, AnimatableIntegerValue animatableIntegerValue, AnimatablePointValue animatablePointValue, AnimatablePointValue animatablePointValue2, AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2) {
        this.gradientType = gradientType;
        this.fillType = fillType;
        this.gradientColor = animatableGradientColorValue;
        this.opacity = animatableIntegerValue;
        this.startPoint = animatablePointValue;
        this.endPoint = animatablePointValue2;
        this.name = str;
        this.highlightLength = animatableFloatValue;
        this.highlightAngle = animatableFloatValue2;
    }

    public String getName() {
        return this.name;
    }

    public GradientType getGradientType() {
        return this.gradientType;
    }

    public Path.FillType getFillType() {
        return this.fillType;
    }

    public AnimatableGradientColorValue getGradientColor() {
        return this.gradientColor;
    }

    public AnimatableIntegerValue getOpacity() {
        return this.opacity;
    }

    public AnimatablePointValue getStartPoint() {
        return this.startPoint;
    }

    public AnimatablePointValue getEndPoint() {
        return this.endPoint;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new GradientFillContent(lottieDrawable, baseLayer, this);
    }

    static class Factory {
        static GradientFill newInstance(JSONObject jSONObject, LottieComposition lottieComposition) throws JSONException {
            String strOptString = jSONObject.optString("nm");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("g");
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has("k")) {
                int iOptInt = jSONObjectOptJSONObject.optInt(TtmlNode.TAG_P);
                jSONObjectOptJSONObject = jSONObjectOptJSONObject.optJSONObject("k");
                try {
                    jSONObjectOptJSONObject.put(TtmlNode.TAG_P, iOptInt);
                } catch (JSONException unused) {
                }
            }
            AnimatableGradientColorValue animatableGradientColorValueNewInstance = jSONObjectOptJSONObject != null ? AnimatableGradientColorValue.Factory.newInstance(jSONObjectOptJSONObject, lottieComposition) : null;
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("o");
            AnimatableIntegerValue animatableIntegerValueNewInstance = jSONObjectOptJSONObject2 != null ? AnimatableIntegerValue.Factory.newInstance(jSONObjectOptJSONObject2, lottieComposition) : null;
            Path.FillType fillType = jSONObject.optInt("r", 1) == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
            GradientType gradientType = jSONObject.optInt("t", 1) == 1 ? GradientType.Linear : GradientType.Radial;
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("s");
            AnimatablePointValue animatablePointValueNewInstance = jSONObjectOptJSONObject3 != null ? AnimatablePointValue.Factory.newInstance(jSONObjectOptJSONObject3, lottieComposition) : null;
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("e");
            return new GradientFill(strOptString, gradientType, fillType, animatableGradientColorValueNewInstance, animatableIntegerValueNewInstance, animatablePointValueNewInstance, jSONObjectOptJSONObject4 != null ? AnimatablePointValue.Factory.newInstance(jSONObjectOptJSONObject4, lottieComposition) : null, null, null);
        }
    }
}
