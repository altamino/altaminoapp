package com.airbnb.lottie.model;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class d {

    @ColorInt
    public int color;
    public String fontName;
    int justification;
    double lineHeight;
    public int size;

    @ColorInt
    public int strokeColor;
    public boolean strokeOverFill;
    public int strokeWidth;
    public String text;
    public int tracking;

    public static final class a {
        public static d a(JSONObject jSONObject) {
            String strOptString = jSONObject.optString("t");
            String strOptString2 = jSONObject.optString("f");
            int iOptInt = jSONObject.optInt(CmcdHeadersFactory.STREAMING_FORMAT_SS);
            int iOptInt2 = jSONObject.optInt("j");
            int iOptInt3 = jSONObject.optInt("tr");
            double dOptDouble = jSONObject.optDouble("lh");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("fc");
            int iArgb = Color.argb(255, (int) (jSONArrayOptJSONArray.optDouble(0) * 255.0d), (int) (jSONArrayOptJSONArray.optDouble(1) * 255.0d), (int) (jSONArrayOptJSONArray.optDouble(2) * 255.0d));
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("sc");
            return new d(strOptString, strOptString2, iOptInt, iOptInt2, iOptInt3, dOptDouble, iArgb, jSONArrayOptJSONArray2 != null ? Color.argb(255, (int) (jSONArrayOptJSONArray2.optDouble(0) * 255.0d), (int) (jSONArrayOptJSONArray2.optDouble(1) * 255.0d), (int) (jSONArrayOptJSONArray2.optDouble(2) * 255.0d)) : 0, jSONObject.optInt("sw"), jSONObject.optBoolean("of"));
        }
    }

    public int hashCode() {
        int iHashCode = (((((((this.text.hashCode() * 31) + this.fontName.hashCode()) * 31) + this.size) * 31) + this.justification) * 31) + this.tracking;
        long jDoubleToLongBits = Double.doubleToLongBits(this.lineHeight);
        return (((iHashCode * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)))) * 31) + this.color;
    }

    d(String str, String str2, int i10, int i11, int i12, double d, @ColorInt int i13, @ColorInt int i14, int i15, boolean z6) {
        this.text = str;
        this.fontName = str2;
        this.size = i10;
        this.justification = i11;
        this.tracking = i12;
        this.lineHeight = d;
        this.color = i13;
        this.strokeColor = i14;
        this.strokeWidth = i15;
        this.strokeOverFill = z6;
    }
}
