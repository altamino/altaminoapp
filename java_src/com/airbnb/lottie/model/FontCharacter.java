package com.airbnb.lottie.model;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FontCharacter {
    private final char character;
    private final String fontFamily;
    private final List<ShapeGroup> shapes;
    private final int size;
    private final String style;
    private final double width;

    public static int hashFor(char c, String str, String str2) {
        return ((((0 + c) * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    FontCharacter(List<ShapeGroup> list, char c, int i, double d, String str, String str2) {
        this.shapes = list;
        this.character = c;
        this.size = i;
        this.width = d;
        this.style = str;
        this.fontFamily = str2;
    }

    public List<ShapeGroup> getShapes() {
        return this.shapes;
    }

    public double getWidth() {
        return this.width;
    }

    public static class Factory {
        public static FontCharacter newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            JSONArray jSONArrayOptJSONArray;
            char cCharAt = jSONObject.optString("ch").charAt(0);
            int iOptInt = jSONObject.optInt("size");
            double dOptDouble = jSONObject.optDouble("w");
            String strOptString = jSONObject.optString(TtmlNode.TAG_STYLE);
            String strOptString2 = jSONObject.optString("fFamily");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            List listEmptyList = Collections.emptyList();
            if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("shapes")) != null) {
                listEmptyList = new ArrayList(jSONArrayOptJSONArray.length());
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    listEmptyList.add((ShapeGroup) ShapeGroup.shapeItemWithJson(jSONArrayOptJSONArray.optJSONObject(i), lottieComposition));
                }
            }
            return new FontCharacter(listEmptyList, cCharAt, iOptInt, dOptDouble, strOptString, strOptString2);
        }
    }

    public int hashCode() {
        return hashFor(this.character, this.fontFamily, this.style);
    }
}
