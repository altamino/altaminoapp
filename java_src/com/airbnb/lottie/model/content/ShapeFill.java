package com.airbnb.lottie.model.content;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.FillContent;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.narvii.pushservice.PushNotificationService;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ShapeFill implements ContentModel {
    private final AnimatableColorValue color;
    private final boolean fillEnabled;
    private final Path.FillType fillType;
    private final String name;
    private final AnimatableIntegerValue opacity;

    private ShapeFill(String str, boolean z, Path.FillType fillType, AnimatableColorValue animatableColorValue, AnimatableIntegerValue animatableIntegerValue) {
        this.name = str;
        this.fillEnabled = z;
        this.fillType = fillType;
        this.color = animatableColorValue;
        this.opacity = animatableIntegerValue;
    }

    static class Factory {
        static ShapeFill newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            String strOptString = jSONObject.optString("nm");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("c");
            AnimatableColorValue animatableColorValueNewInstance = jSONObjectOptJSONObject != null ? AnimatableColorValue.Factory.newInstance(jSONObjectOptJSONObject, lottieComposition) : null;
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("o");
            return new ShapeFill(strOptString, jSONObject.optBoolean("fillEnabled"), jSONObject.optInt("r", 1) == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, animatableColorValueNewInstance, jSONObjectOptJSONObject2 != null ? AnimatableIntegerValue.Factory.newInstance(jSONObjectOptJSONObject2, lottieComposition) : null);
        }
    }

    public String getName() {
        return this.name;
    }

    public AnimatableColorValue getColor() {
        return this.color;
    }

    public AnimatableIntegerValue getOpacity() {
        return this.opacity;
    }

    public Path.FillType getFillType() {
        return this.fillType;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new FillContent(lottieDrawable, baseLayer, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ShapeFill{color=");
        AnimatableColorValue animatableColorValue = this.color;
        Object initialValue = PushNotificationService.NO_GROUP;
        sb.append(animatableColorValue == null ? PushNotificationService.NO_GROUP : Integer.toHexString(animatableColorValue.getInitialValue().intValue()));
        sb.append(", fillEnabled=");
        sb.append(this.fillEnabled);
        sb.append(", opacity=");
        AnimatableIntegerValue animatableIntegerValue = this.opacity;
        if (animatableIntegerValue != null) {
            initialValue = animatableIntegerValue.getInitialValue();
        }
        sb.append(initialValue);
        sb.append('}');
        return sb.toString();
    }
}
