package com.narvii.util.image;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.crashlytics.OomHelper;
import java.io.File;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class MediaStoreUtils {
    private static final HashMap<Long, Integer> rotationCache = new HashMap<>();

    public static int getRotation(String str) {
        try {
            return new ExifInterface(str).getAttributeInt("Orientation", 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int getRotation(ContentResolver contentResolver, long j) {
        Integer num = rotationCache.get(Long.valueOf(j));
        if (num != null) {
            return num.intValue();
        }
        try {
            Cursor cursorQuery = contentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_data"}, "_id=?", new String[]{String.valueOf(j)}, null);
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(0);
                cursorQuery.close();
                int attributeInt = new ExifInterface(string).getAttributeInt("Orientation", 0);
                rotationCache.put(Long.valueOf(j), Integer.valueOf(attributeInt));
                return attributeInt;
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    public static Bitmap applyOrientation(Bitmap bitmap, int i) {
        return applyOrientationAndSize(bitmap, i, 0, 0);
    }

    public static Bitmap applyOrientationAndSize(Bitmap bitmap, int i, int i2, int i3) {
        int i4;
        if (i != 3) {
            if (i == 6) {
                i4 = 90;
            } else if (i != 8) {
                i4 = 0;
            } else {
                i4 = 270;
            }
            i3 = i2;
            i2 = i3;
        } else {
            i4 = 180;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float fMin = (i2 <= 0 || i3 <= 0) ? 1.0f : Math.min(1.0f, Math.min((i2 * 1.0f) / width, (i3 * 1.0f) / height));
        if (i4 == 0 && fMin == 1.0f) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.postScale(fMin, fMin);
        matrix.postRotate(i4);
        try {
            return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            return bitmap;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0014 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap getThumbnailFromMediaStore(android.content.ContentResolver r1, long r2, int r4, boolean r5) {
        /*
            r0 = 0
            if (r5 == 0) goto L8
            android.graphics.Bitmap r4 = android.provider.MediaStore.Video.Thumbnails.getThumbnail(r1, r2, r4, r0)     // Catch: java.lang.OutOfMemoryError -> Ld java.lang.Exception -> L11
            goto L12
        L8:
            android.graphics.Bitmap r4 = android.provider.MediaStore.Images.Thumbnails.getThumbnail(r1, r2, r4, r0)     // Catch: java.lang.OutOfMemoryError -> Ld java.lang.Exception -> L11
            goto L12
        Ld:
            r4 = move-exception
            com.narvii.util.crashlytics.OomHelper.test(r4)
        L11:
            r4 = r0
        L12:
            if (r4 != 0) goto L15
            return r0
        L15:
            int r1 = getRotation(r1, r2)
            android.graphics.Bitmap r1 = applyOrientation(r4, r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.image.MediaStoreUtils.getThumbnailFromMediaStore(android.content.ContentResolver, long, int, boolean):android.graphics.Bitmap");
    }

    public static String getMediastoreUrl(long j, String str, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("mediastore://");
        sb.append(j);
        sb.append("|");
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append(z ? "#" : "");
        return sb.toString();
    }

    public static long getImageId(String str) {
        int iIndexOf;
        if (!str.startsWith("mediastore://") || (iIndexOf = str.indexOf(124, 13)) <= 0) {
            return 0L;
        }
        return StringUtils.parseLong(str.substring(13, iIndexOf), 0L);
    }

    public static File getImagePath(String str) {
        int iIndexOf;
        if (!str.startsWith("mediastore://") || (iIndexOf = str.indexOf(124, 13)) <= 0) {
            return null;
        }
        String strSubstring = str.substring(iIndexOf + 1);
        if (strSubstring.endsWith("#")) {
            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
        }
        return new File(strSubstring);
    }

    public static boolean isVideo(String str) {
        return str.endsWith("#");
    }

    public static Uri addVideo(Context context, File file) {
        return addVideo(context, file, 0L);
    }

    public static Uri addVideo(Context context, File file, long j) {
        Uri uriInsert = null;
        try {
            ContentValues contentValues = new ContentValues(7);
            contentValues.put("title", "Amino_" + file.getName());
            contentValues.put("_display_name", "Amino Video");
            contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
            contentValues.put("mime_type", "video/avc");
            contentValues.put("_data", file.getAbsolutePath());
            if (j > 0) {
                contentValues.put("duration", Long.valueOf(j));
            }
            ContentResolver contentResolver = context.getContentResolver();
            Cursor cursorQuery = contentResolver.query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, null, "_data=?", new String[]{file.getAbsolutePath()}, null);
            if (cursorQuery.moveToFirst()) {
                long j2 = cursorQuery.getLong(cursorQuery.getColumnIndex("_id"));
                Uri uriWithAppendedPath = Uri.withAppendedPath(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, "" + j2);
                contentResolver.update(uriWithAppendedPath, contentValues, null, null);
                uriInsert = uriWithAppendedPath;
            } else {
                uriInsert = contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues);
            }
            cursorQuery.close();
        } catch (Exception e) {
            Log.w("unable to save video to content provider", e);
        }
        return uriInsert;
    }

    public static Uri addStandaloneEditorVideo(Context context, File file, long j, int i, int i2) {
        Uri uriInsert = null;
        try {
            ContentValues contentValues = new ContentValues(7);
            long jCurrentTimeMillis = System.currentTimeMillis();
            contentValues.put("title", file.getName());
            contentValues.put("_display_name", "Storyboard");
            contentValues.put("datetaken", Long.valueOf(jCurrentTimeMillis));
            contentValues.put("mime_type", MimeTypes.VIDEO_MP4);
            contentValues.put("_data", file.getAbsolutePath());
            contentValues.put("duration", Long.valueOf(j));
            if (Build.VERSION.SDK_INT > 16) {
                if (i > 0) {
                    contentValues.put("width", Integer.valueOf(i));
                }
                if (i2 > 0) {
                    contentValues.put("height", Integer.valueOf(i2));
                }
            }
            ContentResolver contentResolver = context.getContentResolver();
            Cursor cursorQuery = contentResolver.query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, null, "_data=?", new String[]{file.getAbsolutePath()}, null);
            if (cursorQuery.moveToFirst()) {
                long j2 = cursorQuery.getLong(cursorQuery.getColumnIndex("_id"));
                Uri uriWithAppendedPath = Uri.withAppendedPath(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, "" + j2);
                contentResolver.update(uriWithAppendedPath, contentValues, null, null);
                uriInsert = uriWithAppendedPath;
            } else {
                uriInsert = contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues);
            }
            cursorQuery.close();
        } catch (Exception e) {
            Log.w("unable to save video to content provider", e);
        }
        return uriInsert;
    }
}
