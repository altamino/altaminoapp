package com.narvii.util.text;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.StyleSpan;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes.dex */
public class TextUtils {
    public static NumberFormat numberFormat;

    static {
        setUpNumberFormat();
    }

    public static void setUpNumberFormat() {
        numberFormat = NumberFormat.getInstance();
    }

    public static SpannableStringBuilder appendImage(Context context, SpannableStringBuilder spannableStringBuilder, int i) {
        spannableStringBuilder.append(" ");
        Drawable drawable = ContextCompat.getDrawable(context, i);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        spannableStringBuilder.setSpan(new ImageSpan(drawable, 0), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
        return spannableStringBuilder;
    }

    public static String addColon(Context context, int i) {
        return context.getString(i) + ":";
    }

    public static String segmentStrings(Context context, ArrayList<Integer> arrayList) {
        StringBuilder sb = new StringBuilder();
        if (arrayList != null) {
            int i = 0;
            while (i < arrayList.size()) {
                String string = context.getString(arrayList.get(i).intValue());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(string);
                sb2.append(i == arrayList.size() + (-1) ? "" : "\n\n");
                sb.append(sb2.toString());
                i++;
            }
        }
        return sb.toString();
    }

    public static String getCountText(Context context, int i, int i2, int i3) {
        return i == 1 ? context.getString(i2) : context.getString(i3, numberFormat.format(i));
    }

    public static String getCountTitle(String str, int i) {
        if (i <= 0) {
            return str;
        }
        return str + " (" + numberFormat.format(i) + ")";
    }

    public static String compactContent(String str) {
        return android.text.TextUtils.isEmpty(str) ? "" : NVText.removeTags(str).replaceAll("\\s+", " ").trim();
    }

    public static String getLiteCount(int i) {
        String str;
        if (i >= 10000) {
            int i2 = i / 1000;
            int i3 = (i - (i2 * 1000)) / 100;
            StringBuilder sb = new StringBuilder();
            sb.append(i2);
            if (i3 != 0) {
                str = "." + i3;
            } else {
                str = "";
            }
            sb.append(str);
            sb.append("k");
            return sb.toString();
        }
        return String.valueOf(i);
    }

    public static String getLiteCount2(long j) {
        NumberFormat numberFormat2 = NumberFormat.getInstance();
        numberFormat2.setMaximumFractionDigits(2);
        double d = j;
        if (d >= 1.0E9d) {
            StringBuilder sb = new StringBuilder();
            Double.isNaN(d);
            sb.append(numberFormat2.format(d / 1.0E9d));
            sb.append("B");
            return sb.toString();
        }
        if (d >= 1000000.0d) {
            StringBuilder sb2 = new StringBuilder();
            Double.isNaN(d);
            sb2.append(numberFormat2.format(d / 1000000.0d));
            sb2.append("M");
            return sb2.toString();
        }
        return numberFormat.format(j);
    }

    public static String getLiteCountWithCeil2(int i) {
        if (i < 0) {
            return "";
        }
        if (i <= 9999) {
            return String.valueOf(i);
        }
        if (i <= 9999999) {
            StringBuilder sb = new StringBuilder();
            Locale locale = Locale.getDefault();
            double d = i;
            Double.isNaN(d);
            sb.append(String.format(locale, "%.1f", Double.valueOf(Math.ceil(d / 100.0d) / 10.0d)));
            sb.append("K");
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        Locale locale2 = Locale.getDefault();
        double d2 = i;
        Double.isNaN(d2);
        sb2.append(String.format(locale2, "%.1f", Double.valueOf(Math.ceil(d2 / 100000.0d) / 10.0d)));
        sb2.append("M");
        return sb2.toString();
    }

    public static String getUpperCase(String str) {
        if (str != null) {
            return str.toString().toUpperCase(Locale.getDefault());
        }
        return null;
    }

    public static String getUpperCase(Context context, int i) {
        return getUpperCase(context.getString(i));
    }

    public static CharSequence getNumberColorString(Context context, int i, int i2, int i3) {
        String strValueOf = String.valueOf(i2);
        String string = context.getString(i, strValueOf);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(i3);
        int iIndexOf = string.indexOf(strValueOf);
        if (iIndexOf != -1) {
            spannableStringBuilder.setSpan(foregroundColorSpan, iIndexOf, String.valueOf(i2).length() + iIndexOf, 0);
        }
        return spannableStringBuilder;
    }

    public static Spannable getBoldSpannableString(String str) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
        return spannableString;
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }
}
