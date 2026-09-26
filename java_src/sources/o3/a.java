package o3;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.TypedValue;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.PathParser;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.google.android.material.resources.b;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public class a {
    private static final String EASING_TYPE_CUBIC_BEZIER = "cubic-bezier";
    private static final String EASING_TYPE_FORMAT_END = ")";
    private static final String EASING_TYPE_FORMAT_START = "(";
    private static final String EASING_TYPE_PATH = "path";

    private static float a(String[] strArr, int i10) {
        float f = Float.parseFloat(strArr[i10]);
        if (f >= 0.0f && f <= 1.0f) {
            return f;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + f);
    }

    private static boolean c(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(EASING_TYPE_FORMAT_START);
        return str.startsWith(sb.toString()) && str.endsWith(EASING_TYPE_FORMAT_END);
    }

    @NonNull
    public static TimeInterpolator e(@NonNull Context context, @AttrRes int i10, @NonNull TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be a string");
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (!c(strValueOf, EASING_TYPE_CUBIC_BEZIER)) {
            if (c(strValueOf, "path")) {
                return PathInterpolatorCompat.b(PathParser.e(b(strValueOf, "path")));
            }
            throw new IllegalArgumentException("Invalid motion easing type: " + strValueOf);
        }
        String[] strArrSplit = b(strValueOf, EASING_TYPE_CUBIC_BEZIER).split(",");
        if (strArrSplit.length == 4) {
            return PathInterpolatorCompat.a(a(strArrSplit, 0), a(strArrSplit, 1), a(strArrSplit, 2), a(strArrSplit, 3));
        }
        throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + strArrSplit.length);
    }

    private static String b(String str, String str2) {
        return str.substring(str2.length() + 1, str.length() - 1);
    }

    public static int d(@NonNull Context context, @AttrRes int i10, int i11) {
        return b.c(context, i10, i11);
    }
}
