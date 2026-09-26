package com.narvii.util.image;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.video.MediaTrimmingFragment;
import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
public class Screenshot {
    private static boolean takingScreenshot;

    public static File getNewScreenshotFile(Context context) {
        return getNewScreenshotFile(context, null, "jpg");
    }

    public static Bitmap takeScreenshot(Activity activity) {
        return takeScreenshot(activity, 1.0f, 0, 0);
    }

    public static File getNewScreenshotFile(Context context, String str, String str2) {
        File file = new File(Utils.getAvailableFileDir(context), MediaTrimmingFragment.TAG_SCREENSHOT_TASK);
        file.mkdirs();
        String str3 = StringUtils.todayString();
        StringBuilder sb = new StringBuilder();
        sb.append(TextUtils.isEmpty(str) ? "" : str + "-");
        sb.append(str3);
        sb.append(".");
        sb.append(str2);
        File file2 = new File(file, sb.toString());
        for (int i10 = 0; i10 < 100; i10++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(TextUtils.isEmpty(str) ? "" : str + "-");
            sb2.append(str3);
            sb2.append(i10 == 0 ? "" : "-" + i10);
            sb2.append(".");
            sb2.append(str2);
            File file3 = new File(file, sb2.toString());
            if (file3.length() == 0) {
                return file3;
            }
        }
        return file2;
    }

    public static Bitmap takeScreenshot(Activity activity, float f) {
        return takeScreenshot(activity, f, 0, 0);
    }

    public static Bitmap takeScreenshot(View view) {
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
            view.draw(new Canvas(bitmapCreateBitmap));
            return bitmapCreateBitmap;
        } catch (Exception | OutOfMemoryError unused) {
            return null;
        }
    }

    public static Bitmap takeScreenshot(Activity activity, float f, int i10, int i11) {
        if (takingScreenshot) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.eraseColor(0);
            return bitmapCreateBitmap;
        }
        takingScreenshot = true;
        try {
            View viewFindViewById = activity.findViewById(R.id.content);
            View rootView = viewFindViewById.getRootView();
            int[] iArr = new int[2];
            viewFindViewById.getLocationInWindow(iArr);
            int i12 = iArr[1];
            rootView.getLocationInWindow(iArr);
            int i13 = i12 - iArr[1];
            int width = viewFindViewById.getWidth();
            int height = viewFindViewById.getHeight();
            if (width != 0 && height != 0) {
                if (f <= 0.0f) {
                    f = 1.0f;
                }
                if (i10 > 0) {
                    f = Math.min(f, (i10 * 1.0f) / Math.min(width, height));
                }
                if (i11 > 0) {
                    f = Math.min(f, (i11 * 1.0f) / Math.max(width, height));
                }
                int i14 = (int) (width * f);
                int i15 = (int) (height * f);
                if (i14 != 0 && i15 != 0) {
                    Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i14, i15, Bitmap.Config.ARGB_8888);
                    TypedArray typedArrayObtainStyledAttributes = activity.getTheme().obtainStyledAttributes(new int[]{R.attr.colorBackground});
                    int color = typedArrayObtainStyledAttributes.getColor(0, -1);
                    typedArrayObtainStyledAttributes.recycle();
                    bitmapCreateBitmap2.eraseColor(color);
                    Canvas canvas = new Canvas(bitmapCreateBitmap2);
                    canvas.scale(f, f);
                    canvas.translate(0.0f, -i13);
                    rootView.draw(canvas);
                    return bitmapCreateBitmap2;
                }
                return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
            }
            return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        } finally {
            takingScreenshot = false;
        }
    }
}
