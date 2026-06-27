package com.airbnb.lottie.model;

import android.graphics.Color;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DocumentData {
    public int color;
    public String fontName;
    int justification;
    double lineHeight;
    public int size;
    public int strokeColor;
    public boolean strokeOverFill;
    public int strokeWidth;
    public String text;
    public int tracking;

    DocumentData(String str, String str2, int i, int i2, int i3, double d, int i4, int i5, int i6, boolean z) {
        this.text = str;
        this.fontName = str2;
        this.size = i;
        this.justification = i2;
        this.tracking = i3;
        this.lineHeight = d;
        this.color = i4;
        this.strokeColor = i5;
        this.strokeWidth = i6;
        this.strokeOverFill = z;
    }

    public static final class Factory {
        public static DocumentData newInstance(JSONObject jSONObject) {
            String str;
            int i;
            int iArgb;
            String strOptString = jSONObject.optString("t");
            String strOptString2 = jSONObject.optString("f");
            int iOptInt = jSONObject.optInt("s");
            int iOptInt2 = jSONObject.optInt("j");
            int iOptInt3 = jSONObject.optInt("tr");
            double dOptDouble = jSONObject.optDouble("lh");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("fc");
            int iArgb2 = Color.argb(255, (int) (jSONArrayOptJSONArray.optDouble(0) * 255.0d), (int) (jSONArrayOptJSONArray.optDouble(1) * 255.0d), (int) (jSONArrayOptJSONArray.optDouble(2) * 255.0d));
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("sc");
            if (jSONArrayOptJSONArray2 != null) {
                str = strOptString2;
                i = iArgb2;
                iArgb = Color.argb(255, (int) (jSONArrayOptJSONArray2.optDouble(0) * 255.0d), (int) (jSONArrayOptJSONArray2.optDouble(1) * 255.0d), (int) (jSONArrayOptJSONArray2.optDouble(2) * 255.0d));
            } else {
                str = strOptString2;
                i = iArgb2;
                iArgb = 0;
            }
            return new DocumentData(strOptString, str, iOptInt, iOptInt2, iOptInt3, dOptDouble, i, iArgb, jSONObject.optInt("sw"), jSONObject.optBoolean("of"));
        }
    }

    public int hashCode() {
        int iHashCode = (((((((this.text.hashCode() * 31) + this.fontName.hashCode()) * 31) + this.size) * 31) + this.justification) * 31) + this.tracking;
        long jDoubleToLongBits = Double.doubleToLongBits(this.lineHeight);
        return (((iHashCode * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)))) * 31) + this.color;
    }
}
