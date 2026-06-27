package com.narvii.nvplayerview;

import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.net.Uri;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import java.io.File;

/* loaded from: classes3.dex */
public class Utils {
    public static final int SHARED_ELEMENT_TRANSITION_SUPPORT_SDK_INT = 23;
    private static PhotoManager photoManager;

    public static int getVisibilityPercentage(View view) {
        int i = 0;
        if (view != null && view.getVisibility() == 0) {
            int height = view.getHeight();
            Rect rect = new Rect();
            if (view.getLocalVisibleRect(rect)) {
                i = 100;
                if (viewIsPartiallyHiddenTop(rect)) {
                    return ((height - rect.top) * 100) / height;
                }
                if (viewIsPartiallyHiddenBottom(rect, height)) {
                    return (rect.bottom * 100) / height;
                }
            }
        }
        return i;
    }

    public static int getVisibilityHorizontalPercentage(View view) {
        int i = 0;
        if (view != null && view.getVisibility() == 0) {
            int width = view.getWidth();
            Rect rect = new Rect();
            if (view.getLocalVisibleRect(rect)) {
                i = 100;
                if (viewIsPartiallyHiddenLeft(rect)) {
                    return ((width - rect.left) * 100) / width;
                }
                if (viewIsPartiallyHiddenRight(rect, width)) {
                    return (rect.right * 100) / width;
                }
            }
        }
        return i;
    }

    public static float predictRatio(NVContext nVContext, Media media) throws NumberFormatException {
        String str;
        if (media != null && (str = media.url) != null) {
            String urlWithoutQuery = com.narvii.util.Utils.getUrlWithoutQuery(str);
            try {
                String[] strArrSplit = urlWithoutQuery.split("-");
                if (strArrSplit.length == 3) {
                    int i = Integer.parseInt(strArrSplit[1]);
                    String[] strArrSplit2 = strArrSplit[2].split("_");
                    if (strArrSplit2.length == 2) {
                        if (strArrSplit2[0].endsWith("v2")) {
                            strArrSplit2[0] = strArrSplit2[0].substring(0, strArrSplit2[0].length() - 2);
                        }
                        int i2 = Integer.parseInt(strArrSplit2[0]);
                        if (i > 0 && i2 > 0) {
                            return (i * 1.0f) / i2;
                        }
                    }
                } else {
                    if (!"photo".equals(Uri.parse(urlWithoutQuery).getScheme())) {
                        return 1.7777778f;
                    }
                    if (media.coverImage != null) {
                        return getLocalPhotoRatio(nVContext, media.coverImage);
                    }
                    return -1.0f;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return -1.0f;
    }

    private static boolean viewIsPartiallyHiddenTop(Rect rect) {
        return rect.top > 0;
    }

    private static boolean viewIsPartiallyHiddenBottom(Rect rect, int i) {
        int i2 = rect.bottom;
        return i2 >= 1 && i2 <= i - 1;
    }

    private static boolean viewIsPartiallyHiddenLeft(Rect rect) {
        return rect.left > 0;
    }

    private static boolean viewIsPartiallyHiddenRight(Rect rect, int i) {
        int i2 = rect.right;
        return i2 >= 1 && i2 <= i - 1;
    }

    private static float getLocalPhotoRatio(NVContext nVContext, String str) {
        int i;
        if (photoManager == null) {
            photoManager = (PhotoManager) nVContext.getService("photo");
        }
        File path = photoManager.getPath(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path.getAbsolutePath(), options);
        int i2 = options.outWidth;
        if (i2 <= 0 || (i = options.outHeight) <= 0) {
            return -1.0f;
        }
        return (i2 * 1.0f) / i;
    }
}
