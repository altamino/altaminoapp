package com.narvii.nvplayerview;

import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.net.Uri;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import java.io.File;

/* JADX INFO: loaded from: classes10.dex */
public class Utils {
    public static final int SHARED_ELEMENT_TRANSITION_SUPPORT_SDK_INT = 23;
    private static PhotoManager photoManager;

    public static int getVisibilityHorizontalPercentage(View view) {
        int i10 = 0;
        if (view != null && view.getVisibility() == 0) {
            int width = view.getWidth();
            Rect rect = new Rect();
            if (view.getLocalVisibleRect(rect)) {
                i10 = 100;
                if (viewIsPartiallyHiddenLeft(rect)) {
                    return ((width - rect.left) * 100) / width;
                }
                if (viewIsPartiallyHiddenRight(rect, width)) {
                    return (rect.right * 100) / width;
                }
            }
        }
        return i10;
    }

    public static int getVisibilityPercentage(View view) {
        int i10 = 0;
        if (view != null && view.getVisibility() == 0) {
            int height = view.getHeight();
            Rect rect = new Rect();
            if (view.getLocalVisibleRect(rect)) {
                i10 = 100;
                if (viewIsPartiallyHiddenTop(rect)) {
                    return ((height - rect.top) * 100) / height;
                }
                if (viewIsPartiallyHiddenBottom(rect, height)) {
                    return (rect.bottom * 100) / height;
                }
            }
        }
        return i10;
    }

    private static float getLocalPhotoRatio(NVContext nVContext, String str) {
        int i10;
        if (photoManager == null) {
            photoManager = (PhotoManager) nVContext.getService("photo");
        }
        File path = photoManager.getPath(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path.getAbsolutePath(), options);
        int i11 = options.outWidth;
        if (i11 <= 0 || (i10 = options.outHeight) <= 0) {
            return -1.0f;
        }
        return (i11 * 1.0f) / i10;
    }

    public static float predictRatio(NVContext nVContext, Media media) {
        String str;
        if (media != null && (str = media.url) != null) {
            String urlWithoutQuery = com.narvii.util.Utils.getUrlWithoutQuery(str);
            try {
                String[] strArrSplit = urlWithoutQuery.split("-");
                if (strArrSplit.length != 3) {
                    if (!"photo".equals(Uri.parse(urlWithoutQuery).getScheme())) {
                        return 1.7777778f;
                    }
                    String str2 = media.coverImage;
                    if (str2 != null) {
                        return getLocalPhotoRatio(nVContext, str2);
                    }
                    return -1.0f;
                }
                int i10 = Integer.parseInt(strArrSplit[1]);
                String[] strArrSplit2 = strArrSplit[2].split("_");
                if (strArrSplit2.length == 2) {
                    if (strArrSplit2[0].endsWith("v2")) {
                        String str3 = strArrSplit2[0];
                        strArrSplit2[0] = str3.substring(0, str3.length() - 2);
                    }
                    int i11 = Integer.parseInt(strArrSplit2[0]);
                    if (i10 > 0 && i11 > 0) {
                        return (i10 * 1.0f) / i11;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return -1.0f;
    }

    private static boolean viewIsPartiallyHiddenBottom(Rect rect, int i10) {
        int i11 = rect.bottom;
        return i11 >= 1 && i11 <= i10 - 1;
    }

    private static boolean viewIsPartiallyHiddenLeft(Rect rect) {
        return rect.left > 0;
    }

    private static boolean viewIsPartiallyHiddenRight(Rect rect, int i10) {
        int i11 = rect.right;
        return i11 >= 1 && i11 <= i10 - 1;
    }

    private static boolean viewIsPartiallyHiddenTop(Rect rect) {
        return rect.top > 0;
    }
}
