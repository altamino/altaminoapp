package androidx.media3.ui;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes10.dex */
final class HtmlUtils {
    public static String b(@ColorInt int i10) {
        return Util.D("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i10)), Integer.valueOf(Color.green(i10)), Integer.valueOf(Color.blue(i10)), Double.valueOf(((double) Color.alpha(i10)) / 255.0d));
    }

    public static String a(String str) {
        return "." + str + ",." + str + " *";
    }

    private HtmlUtils() {
    }
}
