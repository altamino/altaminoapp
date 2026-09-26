package com.narvii.util.image;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.crashlytics.OomHelper;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public class MediaStoreUtils {
    private static final HashMap<Long, Integer> rotationCache = new HashMap<>();

    public static Uri addStandaloneEditorVideo(Context context, File file, long j6, int i10, int i11) {
        Uri uriInsert = null;
        try {
            ContentValues contentValues = new ContentValues(7);
            long jCurrentTimeMillis = System.currentTimeMillis();
            contentValues.put("title", file.getName());
            contentValues.put("_display_name", "Storyboard");
            contentValues.put("datetaken", Long.valueOf(jCurrentTimeMillis));
            contentValues.put("mime_type", "video/mp4");
            contentValues.put("_data", file.getAbsolutePath());
            contentValues.put(TypedValues.TransitionType.S_DURATION, Long.valueOf(j6));
            if (i10 > 0) {
                contentValues.put("width", Integer.valueOf(i10));
            }
            if (i11 > 0) {
                contentValues.put("height", Integer.valueOf(i11));
            }
            ContentResolver contentResolver = context.getContentResolver();
            Uri uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            Cursor cursorQuery = contentResolver.query(uri, null, "_data=?", new String[]{file.getAbsolutePath()}, null);
            if (cursorQuery.moveToFirst()) {
                Uri uriWithAppendedPath = Uri.withAppendedPath(uri, "" + cursorQuery.getLong(cursorQuery.getColumnIndex("_id")));
                contentResolver.update(uriWithAppendedPath, contentValues, null, null);
                uriInsert = uriWithAppendedPath;
            } else {
                uriInsert = contentResolver.insert(uri, contentValues);
            }
            cursorQuery.close();
        } catch (Exception e) {
            Log.w("unable to save video to content provider", e);
        }
        return uriInsert;
    }

    public static Uri addVideo(Context context, File file) {
        return addVideo(context, file, 0L);
    }

    public static Bitmap applyOrientation(Bitmap bitmap, int i10) {
        return applyOrientationAndSize(bitmap, i10, 0, 0);
    }

    public static Bitmap applyOrientationAndSize(Bitmap bitmap, int i10, int i11, int i12) {
        int i13;
        if (i10 != 3) {
            if (i10 == 6) {
                i13 = 90;
            } else if (i10 != 8) {
                i13 = 0;
            } else {
                i13 = 270;
            }
            i12 = i11;
            i11 = i12;
        } else {
            i13 = 180;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float fMin = (i11 <= 0 || i12 <= 0) ? 1.0f : Math.min(1.0f, Math.min((i11 * 1.0f) / width, (i12 * 1.0f) / height));
        if (i13 == 0 && fMin == 1.0f) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.postScale(fMin, fMin);
        matrix.postRotate(i13);
        try {
            return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            return bitmap;
        }
    }

    public static int getRotation(String str) {
        try {
            return new ExifInterface(str).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static Bitmap getThumbnailFromMediaStore(ContentResolver contentResolver, long j6, int i10, boolean z6) {
        Bitmap thumbnail;
        try {
            thumbnail = z6 ? MediaStore.Video.Thumbnails.getThumbnail(contentResolver, j6, i10, null) : MediaStore.Images.Thumbnails.getThumbnail(contentResolver, j6, i10, null);
        } catch (Exception unused) {
            thumbnail = null;
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            thumbnail = null;
        }
        if (thumbnail == null) {
            return null;
        }
        return applyOrientation(thumbnail, getRotation(contentResolver, j6));
    }

    public static Uri addVideo(Context context, File file, long j6) {
        Uri uriInsert = null;
        try {
            ContentValues contentValues = new ContentValues(7);
            contentValues.put("title", "Amino_" + file.getName());
            contentValues.put("_display_name", "Amino Video");
            contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
            contentValues.put("mime_type", "video/avc");
            contentValues.put("_data", file.getAbsolutePath());
            if (j6 > 0) {
                contentValues.put(TypedValues.TransitionType.S_DURATION, Long.valueOf(j6));
            }
            ContentResolver contentResolver = context.getContentResolver();
            Uri uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            Cursor cursorQuery = contentResolver.query(uri, null, "_data=?", new String[]{file.getAbsolutePath()}, null);
            if (cursorQuery.moveToFirst()) {
                Uri uriWithAppendedPath = Uri.withAppendedPath(uri, "" + cursorQuery.getLong(cursorQuery.getColumnIndex("_id")));
                contentResolver.update(uriWithAppendedPath, contentValues, null, null);
                uriInsert = uriWithAppendedPath;
            } else {
                uriInsert = contentResolver.insert(uri, contentValues);
            }
            cursorQuery.close();
        } catch (Exception e) {
            Log.w("unable to save video to content provider", e);
        }
        return uriInsert;
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

    public static String getMediastoreUrl(long j6, String str, boolean z6) {
        StringBuilder sb = new StringBuilder();
        sb.append("mediastore://");
        sb.append(j6);
        sb.append("|");
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append(z6 ? "#" : "");
        return sb.toString();
    }

    public static boolean isVideo(String str) {
        return str.endsWith("#");
    }

    public static int getRotation(ContentResolver contentResolver, long j6) {
        HashMap<Long, Integer> map = rotationCache;
        Integer num = map.get(Long.valueOf(j6));
        if (num != null) {
            return num.intValue();
        }
        try {
            Cursor cursorQuery = contentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_data"}, "_id=?", new String[]{String.valueOf(j6)}, null);
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(0);
                cursorQuery.close();
                int attributeInt = new ExifInterface(string).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 0);
                map.put(Long.valueOf(j6), Integer.valueOf(attributeInt));
                return attributeInt;
            }
        } catch (Exception unused) {
        }
        return 0;
    }
}
