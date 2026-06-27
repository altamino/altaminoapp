package com.narvii.util;

import android.app.Activity;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.master.SplashView;

/* loaded from: classes3.dex */
public class SplashUtils {
    public static boolean cancelSplash(Activity activity) {
        View decorView = activity == null ? null : activity.getWindow().getDecorView();
        if (!(decorView instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) decorView;
        View viewFindViewById = viewGroup.findViewById(R.id._splash);
        if (viewFindViewById instanceof SplashView) {
            ((SplashView) viewFindViewById).cancel();
            viewGroup.removeView(viewFindViewById);
            return true;
        }
        if (viewFindViewById == null) {
            return false;
        }
        viewGroup.removeView(viewFindViewById);
        return true;
    }

    public static void splash(Activity activity, View view, Drawable drawable, Callback<Boolean> callback) {
        View decorView = activity == null ? null : activity.getWindow().getDecorView();
        if (decorView instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) decorView;
            if (viewGroup.findViewById(R.id._splash) == null) {
                activity.getLayoutInflater().inflate(R.layout.incubator_splash_view, viewGroup, true);
            }
            Rect rect = new Rect();
            if (view.getGlobalVisibleRect(rect)) {
                rect.right = rect.left + view.getWidth();
                rect.bottom = rect.top + view.getHeight();
                ((SplashView) viewGroup.findViewById(R.id._splash)).splash(rect, drawable, callback);
                return;
            }
        }
        callback.call(false);
    }
}
