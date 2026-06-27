package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.RepeaterContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.layer.BaseLayer;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Repeater implements ContentModel {
    private final AnimatableFloatValue copies;
    private final String name;
    private final AnimatableFloatValue offset;
    private final AnimatableTransform transform;

    Repeater(String str, AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2, AnimatableTransform animatableTransform) {
        this.name = str;
        this.copies = animatableFloatValue;
        this.offset = animatableFloatValue2;
        this.transform = animatableTransform;
    }

    public String getName() {
        return this.name;
    }

    public AnimatableFloatValue getCopies() {
        return this.copies;
    }

    public AnimatableFloatValue getOffset() {
        return this.offset;
    }

    public AnimatableTransform getTransform() {
        return this.transform;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new RepeaterContent(lottieDrawable, baseLayer, this);
    }

    static final class Factory {
        static Repeater newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            return new Repeater(jSONObject.optString("nm"), AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("c"), lottieComposition, false), AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("o"), lottieComposition, false), AnimatableTransform.Factory.newInstance(jSONObject.optJSONObject("tr"), lottieComposition));
        }
    }
}
