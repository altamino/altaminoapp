package com.cdv.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.media.ThumbnailUtils;
import android.provider.MediaStore;
import android.util.Log;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class NvAndroidThumbnail {
    private static final String TAG = "NvAndroidThumbnail";

    public static Bitmap createThumbnail(Context context, String str, boolean z, int i, int i2) {
        ContentResolver contentResolver;
        Cursor cursorQuery;
        int columnIndex;
        Cursor cursorQuery2;
        Bitmap thumbnail;
        int columnIndex2;
        if (context == null || str == null || str.isEmpty() || (contentResolver = context.getContentResolver()) == null) {
            return null;
        }
        if (z) {
            cursorQuery = contentResolver.query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{str}, null);
        } else {
            cursorQuery = contentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{str}, null);
        }
        if (cursorQuery != null) {
            if (cursorQuery.getCount() != 0 && cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("_id")) >= 0) {
                long j = cursorQuery.getLong(columnIndex);
                cursorQuery.close();
                if (z) {
                    cursorQuery2 = contentResolver.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, new String[]{"_data"}, "video_id=?", new String[]{String.valueOf(j)}, null);
                } else {
                    cursorQuery2 = contentResolver.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, new String[]{"_data"}, "image_id=?", new String[]{String.valueOf(j)}, null);
                }
                if (cursorQuery2 != null) {
                    if (cursorQuery2.getCount() == 0 || !cursorQuery2.moveToFirst()) {
                        cursorQuery2.close();
                    } else {
                        if (z) {
                            columnIndex2 = cursorQuery2.getColumnIndex("_data");
                        } else {
                            columnIndex2 = cursorQuery2.getColumnIndex("_data");
                        }
                        if (columnIndex2 >= 0) {
                            String string = cursorQuery2.getString(columnIndex2);
                            cursorQuery2.close();
                            if (!string.isEmpty() && new File(string).exists()) {
                                return createThumbnailFromThumbnailImageFile(string, i, i2, z ? 0 : detectImageFileRotation(str));
                            }
                        } else {
                            cursorQuery2.close();
                        }
                    }
                }
                if (z) {
                    thumbnail = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, j, 1, null);
                } else {
                    thumbnail = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, j, 1, null);
                }
                if (thumbnail == null) {
                    Log.e(TAG, String.format("Fail to get thumbnail file for media '%d'!", Long.valueOf(j)));
                    return createThumbnailFromFile(str, z, i, i2);
                }
                return rotateBitmap(thumbnail, z ? 0 : detectImageFileRotation(str));
            }
            cursorQuery.close();
        }
        Log.e(TAG, String.format("Failed to query media store id for '%s'!", str));
        return createThumbnailFromFile(str, z, i, i2);
    }

    private static int detectImageFileRotation(String str) {
        int attributeInt;
        try {
            attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
        } catch (IOException e) {
            e.printStackTrace();
            attributeInt = 1;
        }
        switch (attributeInt) {
            case 3:
            case 4:
                return 2;
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
                return 3;
            default:
                return 0;
        }
    }

    private static Bitmap createThumbnailFromThumbnailImageFile(String str, int i, int i2, int i3) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = 1;
        int i4 = options.outWidth;
        if (i4 > i && options.outHeight > i2) {
            options.inSampleSize = Math.max(Math.round((i4 * 1.0f) / i), Math.round((options.outHeight * 1.0f) / i2));
        }
        options.inJustDecodeBounds = false;
        return rotateBitmap(BitmapFactory.decodeFile(str, options), i3);
    }

    private static Bitmap rotateBitmap(Bitmap bitmap, int i) {
        if (i == 0) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        if (i == 1) {
            matrix.postRotate(90.0f);
        } else if (i == 2) {
            matrix.postRotate(180.0f);
        } else if (i == 3) {
            matrix.postRotate(270.0f);
        }
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    private static Bitmap createThumbnailFromFile(String str, boolean z, int i, int i2) {
        if (!z) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = 1;
            int i3 = options.outWidth;
            if (i3 > i && options.outHeight > i2) {
                options.inSampleSize = Math.max(Math.round((i3 * 1.0f) / i), Math.round((options.outHeight * 1.0f) / i2));
            }
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        }
        Bitmap bitmapCreateVideoThumbnail = ThumbnailUtils.createVideoThumbnail(str, 1);
        if (bitmapCreateVideoThumbnail == null) {
            Log.e(TAG, String.format("Failed to create video thumbnail bitmap for '%s'!", str));
        }
        return bitmapCreateVideoThumbnail;
    }
}
