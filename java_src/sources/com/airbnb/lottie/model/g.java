package com.airbnb.lottie.model;

import com.airbnb.lottie.model.content.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class g {
    private final char character;
    private final String fontFamily;
    private final List<n> shapes;
    private final int size;
    private final String style;
    private final double width;

    public static class a {
        public static g a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            JSONArray jSONArrayOptJSONArray;
            char cCharAt = jSONObject.optString("ch").charAt(0);
            int iOptInt = jSONObject.optInt("size");
            double dOptDouble = jSONObject.optDouble("w");
            String strOptString = jSONObject.optString("style");
            String strOptString2 = jSONObject.optString("fFamily");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            List listEmptyList = Collections.emptyList();
            if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("shapes")) != null) {
                listEmptyList = new ArrayList(jSONArrayOptJSONArray.length());
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    listEmptyList.add((n) n.d(jSONArrayOptJSONArray.optJSONObject(i10), eVar));
                }
            }
            return new g(listEmptyList, cCharAt, iOptInt, dOptDouble, strOptString, strOptString2);
        }
    }

    public List<n> a() {
        return this.shapes;
    }

    public double b() {
        return this.width;
    }

    public static int c(char c7, String str, String str2) {
        return (((c7 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public int hashCode() {
        return c(this.character, this.fontFamily, this.style);
    }

    g(List<n> list, char c7, int i10, double d, String str, String str2) {
        this.shapes = list;
        this.character = c7;
        this.size = i10;
        this.width = d;
        this.style = str;
        this.fontFamily = str2;
    }
}
