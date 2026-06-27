package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ShapeGroup implements ContentModel {
    private final List<ContentModel> items;
    private final String name;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.airbnb.lottie.model.content.ContentModel shapeItemWithJson(org.json.JSONObject r2, com.airbnb.lottie.LottieComposition r3) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.content.ShapeGroup.shapeItemWithJson(org.json.JSONObject, com.airbnb.lottie.LottieComposition):com.airbnb.lottie.model.content.ContentModel");
    }

    public ShapeGroup(String str, List<ContentModel> list) {
        this.name = str;
        this.items = list;
    }

    static class Factory {
        /* JADX INFO: Access modifiers changed from: private */
        public static ShapeGroup newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("it");
            String strOptString = jSONObject.optString("nm");
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                ContentModel contentModelShapeItemWithJson = ShapeGroup.shapeItemWithJson(jSONArrayOptJSONArray.optJSONObject(i), lottieComposition);
                if (contentModelShapeItemWithJson != null) {
                    arrayList.add(contentModelShapeItemWithJson);
                }
            }
            return new ShapeGroup(strOptString, arrayList);
        }
    }

    public String getName() {
        return this.name;
    }

    public List<ContentModel> getItems() {
        return this.items;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new ContentGroup(lottieDrawable, baseLayer, this);
    }

    public String toString() {
        return "ShapeGroup{name='" + this.name + "' Shapes: " + Arrays.toString(this.items.toArray()) + '}';
    }
}
