package com.cdv.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.os.Build;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class NvAndroidBitmap {
    private static final int ASPECT_RATIO_MODE_IGNORE = 0;
    private static final int ASPECT_RATIO_MODE_KEEP = 1;
    private static final int ASPECT_RATIO_MODE_KEEP_EXPANDING = 2;
    private static final String TAG = "";

    public static class ImageInfo {
        int height;
        String mimeType;
        int orientation;
        int width;
    }

    public static class Size {
        private int m_height;
        private int m_width;

        Size(int i, int i2) {
            this.m_width = i;
            this.m_height = i2;
        }

        public int getWidth() {
            return this.m_width;
        }

        public int getHeight() {
            return this.m_height;
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Size)) {
                return false;
            }
            Size size = (Size) obj;
            return this.m_width == size.m_width && this.m_height == size.m_height;
        }
    }

    public static ImageInfo getImageInfo(Context context, String str) throws IOException {
        if (str != null && !str.isEmpty()) {
            try {
                if (str.startsWith("assets:/")) {
                    if (context == null) {
                        return null;
                    }
                    InputStream inputStreamOpen = context.getAssets().open(str.substring(8));
                    ImageInfo imageInfo = getImageInfo(inputStreamOpen);
                    inputStreamOpen.close();
                    return imageInfo;
                }
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(str, options);
                if (options.outMimeType != null && options.outWidth >= 0 && options.outHeight >= 0) {
                    ImageInfo imageInfo2 = new ImageInfo();
                    imageInfo2.mimeType = options.outMimeType;
                    imageInfo2.width = options.outWidth;
                    imageInfo2.height = options.outHeight;
                    if (options.outMimeType.equals("image/jpeg")) {
                        try {
                            imageInfo2.orientation = new ExifInterface(str).getAttributeInt("Orientation", 1);
                        } catch (Error e) {
                            imageInfo2.orientation = 1;
                            e.printStackTrace();
                            return null;
                        }
                    } else {
                        imageInfo2.orientation = 1;
                    }
                    return imageInfo2;
                }
                Log.e("", "Failed to get image information for " + str);
                return null;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static ImageInfo getImageInfo(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return getImageInfo(new ByteArrayInputStream(bArr));
    }

    public static Bitmap convertBitmapToRGBA(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        Bitmap.Config config = bitmap.getConfig();
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        if (config == config2) {
            return bitmap;
        }
        try {
            return bitmap.copy(config2, false);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap createBitmap(Context context, String str, Size size, int i, boolean z) throws IOException {
        ImageInfo imageInfo = getImageInfo(context, str);
        if (imageInfo == null) {
            return null;
        }
        try {
            Size size2 = new Size(imageInfo.width, imageInfo.height);
            if (!str.startsWith("assets:/")) {
                return createBitmap(str, null, size2, size, i, z);
            }
            if (context == null) {
                return null;
            }
            InputStream inputStreamOpen = context.getAssets().open(str.substring(8));
            Bitmap bitmapCreateBitmap = createBitmap(null, inputStreamOpen, size2, size, i, z);
            inputStreamOpen.close();
            return bitmapCreateBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap createBitmap(byte[] bArr, Size size, int i, boolean z) {
        ImageInfo imageInfo = getImageInfo(bArr);
        if (imageInfo == null) {
            return null;
        }
        try {
            return createBitmap(null, new ByteArrayInputStream(bArr), new Size(imageInfo.width, imageInfo.height), size, i, z);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap createRotatedBitmap(Context context, String str, Size size, int i, boolean z) throws IOException {
        Bitmap bitmapCreateBitmap;
        ImageInfo imageInfo = getImageInfo(context, str);
        if (imageInfo == null) {
            return null;
        }
        try {
            Size size2 = new Size(imageInfo.width, imageInfo.height);
            if (!str.startsWith("assets:/")) {
                bitmapCreateBitmap = createBitmap(str, null, size2, size, i, z);
            } else {
                if (context == null) {
                    return null;
                }
                InputStream inputStreamOpen = context.getAssets().open(str.substring(8));
                Bitmap bitmapCreateBitmap2 = createBitmap(null, inputStreamOpen, size2, size, i, z);
                inputStreamOpen.close();
                bitmapCreateBitmap = bitmapCreateBitmap2;
            }
            if (bitmapCreateBitmap == null) {
                return null;
            }
            return imageInfo.orientation == 1 ? bitmapCreateBitmap : transformBitmap(bitmapCreateBitmap, imageInfo.orientation);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap createRotatedBitmap(byte[] bArr, Size size, int i, boolean z) {
        ImageInfo imageInfo = getImageInfo(bArr);
        if (imageInfo == null) {
            return null;
        }
        try {
            Bitmap bitmapCreateBitmap = createBitmap(null, new ByteArrayInputStream(bArr), new Size(imageInfo.width, imageInfo.height), size, i, z);
            if (bitmapCreateBitmap == null) {
                return null;
            }
            return imageInfo.orientation == 1 ? bitmapCreateBitmap : transformBitmap(bitmapCreateBitmap, imageInfo.orientation);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap createBitmapRegion(Context context, String str, Rect rect) throws IOException {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            if (!str.startsWith("assets:/")) {
                return BitmapRegionDecoder.newInstance(str, false).decodeRegion(rect, options);
            }
            if (context == null) {
                return null;
            }
            InputStream inputStreamOpen = context.getAssets().open(str.substring(8));
            Bitmap bitmapDecodeRegion = BitmapRegionDecoder.newInstance(inputStreamOpen, false).decodeRegion(rect, options);
            inputStreamOpen.close();
            return bitmapDecodeRegion;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap createBitmapRegion(byte[] bArr, Rect rect) {
        try {
            return BitmapRegionDecoder.newInstance(bArr, 0, bArr.length, false).decodeRegion(rect, new BitmapFactory.Options());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap createRgbaBitmap(int i, int i2) {
        try {
            return Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap rotateBitmap(Bitmap bitmap, int i) {
        try {
            Matrix matrix = new Matrix();
            matrix.postRotate(i);
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean saveBitmapToFile(Bitmap bitmap, int i, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
            if (str.endsWith(".png")) {
                compressFormat = Bitmap.CompressFormat.PNG;
            }
            return bitmap.compress(compressFormat, i, fileOutputStream);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private static Bitmap createBitmap(String str, InputStream inputStream, Size size, Size size2, int i, boolean z) {
        Size size3;
        Bitmap bitmapDecodeStream;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            if (size2 != null && !size2.equals(size)) {
                if (i != 0) {
                    double width = size.getWidth();
                    double height = size.getHeight();
                    Double.isNaN(width);
                    Double.isNaN(height);
                    double d = width / height;
                    double width2 = size2.getWidth();
                    double height2 = size2.getHeight();
                    Double.isNaN(width2);
                    Double.isNaN(height2);
                    double d2 = width2 / height2;
                    if (i == 1) {
                        if (d >= d2) {
                            int width3 = size2.getWidth();
                            double width4 = size2.getWidth();
                            Double.isNaN(width4);
                            size3 = new Size(width3, (int) ((width4 / d) + 0.5d));
                        } else {
                            double height3 = size2.getHeight();
                            Double.isNaN(height3);
                            size3 = new Size((int) ((height3 * d) + 0.5d), size2.getHeight());
                        }
                    } else if (d >= d2) {
                        double height4 = size2.getHeight();
                        Double.isNaN(height4);
                        size3 = new Size((int) ((height4 * d) + 0.5d), size2.getHeight());
                    } else {
                        int width5 = size2.getWidth();
                        double width6 = size2.getWidth();
                        Double.isNaN(width6);
                        size3 = new Size(width5, (int) ((width6 / d) + 0.5d));
                    }
                } else {
                    size3 = size2;
                }
                options.inSampleSize = (int) (1.0f / Math.min(Math.max(size3.getWidth() / size.getWidth(), size3.getHeight() / size.getHeight()), 1.0f));
                if (str != null) {
                    bitmapDecodeStream = BitmapFactory.decodeFile(str, options);
                } else {
                    bitmapDecodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                }
                if (bitmapDecodeStream == null) {
                    return null;
                }
                return (bitmapDecodeStream.getWidth() > size3.getWidth() || bitmapDecodeStream.getHeight() > size3.getHeight()) ? Bitmap.createScaledBitmap(bitmapDecodeStream, size3.getWidth(), size3.getHeight(), z) : bitmapDecodeStream;
            }
            if (str != null) {
                return BitmapFactory.decodeFile(str, options);
            }
            return BitmapFactory.decodeStream(inputStream, null, options);
        } catch (Exception unused) {
            return null;
        }
    }

    private static Bitmap transformBitmap(Bitmap bitmap, int i) throws Exception {
        Matrix matrix = new Matrix();
        switch (i) {
            case 2:
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 3:
                matrix.postRotate(180.0f);
                break;
            case 4:
                matrix.postScale(1.0f, -1.0f);
                break;
            case 5:
                matrix.postScale(-1.0f, 1.0f);
                matrix.postRotate(270.0f);
                break;
            case 6:
                matrix.postRotate(90.0f);
                break;
            case 7:
                matrix.postScale(-1.0f, 1.0f);
                matrix.postRotate(90.0f);
                break;
            case 8:
                matrix.postRotate(270.0f);
                break;
            default:
                return bitmap;
        }
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
    }

    private static ImageInfo getImageInfo(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStream, null, options);
            if (options.outMimeType != null && options.outWidth >= 0 && options.outHeight >= 0) {
                ImageInfo imageInfo = new ImageInfo();
                imageInfo.mimeType = options.outMimeType;
                imageInfo.width = options.outWidth;
                imageInfo.height = options.outHeight;
                imageInfo.orientation = 1;
                if (options.outMimeType.equals("image/jpeg") && Build.VERSION.SDK_INT >= 24) {
                    imageInfo.orientation = new ExifInterface(inputStream).getAttributeInt("Orientation", 1);
                }
                return imageInfo;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
