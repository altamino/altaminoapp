package com.narvii.util.text;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.StyleSpan;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class TextUtils {
    public static NumberFormat numberFormat;

    public static String getCountText(Context context, int i10, int i11, int i12) {
        return i10 == 1 ? context.getString(i11) : context.getString(i12, numberFormat.format(i10));
    }

    public static String getUpperCase(String str) {
        if (str != null) {
            return str.toUpperCase(Locale.getDefault());
        }
        return null;
    }

    public static String addColon(Context context, int i10) {
        return context.getString(i10) + ":";
    }

    public static SpannableStringBuilder appendImage(Context context, SpannableStringBuilder spannableStringBuilder, int i10) {
        spannableStringBuilder.append(" ");
        Drawable drawable = ContextCompat.getDrawable(context, i10);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        spannableStringBuilder.setSpan(new ImageSpan(drawable, 0), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
        return spannableStringBuilder;
    }

    public static Spannable getBoldSpannableString(String str) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
        return spannableString;
    }

    public static String getCountTitle(String str, int i10) {
        if (i10 <= 0) {
            return str;
        }
        return str + " (" + numberFormat.format(i10) + ")";
    }

    public static String getLiteCount(int i10) {
        String str;
        if (i10 < 10000) {
            return String.valueOf(i10);
        }
        int i11 = i10 / 1000;
        int i12 = (i10 - (i11 * 1000)) / 100;
        StringBuilder sb = new StringBuilder();
        sb.append(i11);
        if (i12 != 0) {
            str = "." + i12;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append("k");
        return sb.toString();
    }

    public static String getLiteCountWithCeil2(int i10) {
        if (i10 < 0) {
            return "";
        }
        if (i10 <= 9999) {
            return String.valueOf(i10);
        }
        if (i10 <= 9999999) {
            return String.format(Locale.getDefault(), "%.1f", Double.valueOf(Math.ceil(((double) i10) / 100.0d) / 10.0d)) + "K";
        }
        return String.format(Locale.getDefault(), "%.1f", Double.valueOf(Math.ceil(((double) i10) / 100000.0d) / 10.0d)) + "M";
    }

    public static String getUpperCase(Context context, int i10) {
        return getUpperCase(context.getString(i10));
    }

    public static boolean isEmpty(@Nullable CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static String segmentStrings(Context context, ArrayList<Integer> arrayList) {
        StringBuilder sb = new StringBuilder();
        if (arrayList != null) {
            int i10 = 0;
            while (i10 < arrayList.size()) {
                String string = context.getString(arrayList.get(i10).intValue());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(string);
                sb2.append(i10 == arrayList.size() + (-1) ? "" : "\n\n");
                sb.append(sb2.toString());
                i10++;
            }
        }
        return sb.toString();
    }

    static {
        setUpNumberFormat();
    }

    public static String compactContent(String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return "";
        }
        return NVText.removeTags(str).replaceAll("\\s+", " ").trim();
    }

    public static String getLiteCount2(long j6) {
        NumberFormat numberFormat2 = NumberFormat.getInstance();
        numberFormat2.setMaximumFractionDigits(2);
        double d = j6;
        if (d >= 1.0E9d) {
            return numberFormat2.format(d / 1.0E9d) + "B";
        }
        if (d >= 1000000.0d) {
            return numberFormat2.format(d / 1000000.0d) + "M";
        }
        return numberFormat.format(j6);
    }

    public static CharSequence getNumberColorString(Context context, int i10, int i11, int i12) {
        String strValueOf = String.valueOf(i11);
        String string = context.getString(i10, strValueOf);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(i12);
        int iIndexOf = string.indexOf(strValueOf);
        if (iIndexOf != -1) {
            spannableStringBuilder.setSpan(foregroundColorSpan, iIndexOf, String.valueOf(i11).length() + iIndexOf, 0);
        }
        return spannableStringBuilder;
    }

    public static void setUpNumberFormat() {
        numberFormat = NumberFormat.getInstance();
    }
}
