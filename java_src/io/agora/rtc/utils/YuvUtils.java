package io.agora.rtc.utils;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.media.Image;
import android.util.Log;
import io.agora.rtc.gl.JavaI420Buffer;
import io.agora.rtc.gl.VideoFrame;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.ByteBuffer;

@TargetApi(21)
/* loaded from: classes4.dex */
public class YuvUtils {
    public static final int I420 = 35;
    public static final int NV21 = 17;
    private static final String TAG = "YuvUtils";

    public static boolean supportedImageFormat(Image image) {
        int format = image.getFormat();
        return format == 17 || format == 35 || format == 842094169;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] getImageData(android.media.Image r21, int r22) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.utils.YuvUtils.getImageData(android.media.Image, int):byte[]");
    }

    public static boolean writeNV21ToFile(byte[] bArr, int i, int i2, String str) throws IOException {
        YuvImage yuvImage = new YuvImage(bArr, 17, i, i2, null);
        Rect rect = new Rect(0, 0, i, i2);
        try {
            File file = new File(str);
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            yuvImage.compressToJpeg(rect, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return true;
        } catch (IOException e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public static void writeRawData(byte[] bArr, String str) {
        if (bArr != null) {
            if (bArr.length == 0) {
                return;
            }
            try {
                File file = new File(str);
                file.createNewFile();
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                bufferedOutputStream.write(bArr);
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
            } catch (IOException e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    public static void write420ImageToFile(Image image, String str) {
        if (image == null) {
            return;
        }
        try {
            YuvImage yuvImage = new YuvImage(yuv420toNV21(image), 17, image.getWidth(), image.getHeight(), null);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            yuvImage.compressToJpeg(new Rect(0, 0, image.getWidth(), image.getHeight()), 100, byteArrayOutputStream);
            File file = new File(str);
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(byteArrayOutputStream.toByteArray());
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            Log.e(TAG, e.toString());
        }
    }

    public static byte[] yuv420toNV21(Image image) {
        int i;
        Rect cropRect = image.getCropRect();
        int format = image.getFormat();
        int iWidth = cropRect.width();
        int iHeight = cropRect.height();
        Image.Plane[] planes = image.getPlanes();
        int i2 = iWidth * iHeight;
        byte[] bArr = new byte[(ImageFormat.getBitsPerPixel(format) * i2) / 8];
        byte[] bArr2 = new byte[planes[0].getRowStride()];
        int i3 = 1;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1;
        while (i4 < planes.length) {
            if (i4 != 0) {
                if (i4 == i3) {
                    i5 = i2 + 1;
                } else if (i4 == 2) {
                    i5 = i2;
                }
                i6 = 2;
            } else {
                i5 = 0;
                i6 = 1;
            }
            ByteBuffer buffer = planes[i4].getBuffer();
            int rowStride = planes[i4].getRowStride();
            int pixelStride = planes[i4].getPixelStride();
            int i7 = i4 == 0 ? 0 : 1;
            int i8 = iWidth >> i7;
            int i9 = iHeight >> i7;
            int i10 = iWidth;
            int i11 = iHeight;
            buffer.position(((cropRect.top >> i7) * rowStride) + ((cropRect.left >> i7) * pixelStride));
            for (int i12 = 0; i12 < i9; i12++) {
                if (pixelStride == 1 && i6 == 1) {
                    buffer.get(bArr, i5, i8);
                    i5 += i8;
                    i = i8;
                } else {
                    i = ((i8 - 1) * pixelStride) + 1;
                    buffer.get(bArr2, 0, i);
                    int i13 = i5;
                    for (int i14 = 0; i14 < i8; i14++) {
                        bArr[i13] = bArr2[i14 * pixelStride];
                        i13 += i6;
                    }
                    i5 = i13;
                }
                if (i12 < i9 - 1) {
                    buffer.position((buffer.position() + rowStride) - i);
                }
            }
            i4++;
            iWidth = i10;
            iHeight = i11;
            i3 = 1;
        }
        return bArr;
    }

    static class Plane {
        private ByteBuffer buffer;
        private int pixelStride;
        private int rowStride;

        public Plane(ByteBuffer byteBuffer, int i, int i2) {
            this.buffer = byteBuffer;
            this.rowStride = i;
            this.pixelStride = i2;
        }

        public ByteBuffer getBuffer() {
            return this.buffer;
        }

        public int getRowStride() {
            return this.rowStride;
        }

        public int getPixelStride() {
            return this.pixelStride;
        }
    }

    public static byte[] yuv420toNV21(byte[] bArr, int i, int i2) {
        return yuv420toNV21(JavaI420Buffer.createYUV(bArr, i, i2), i, i2);
    }

    public static byte[] yuv420toNV21(VideoFrame.I420Buffer i420Buffer, int i, int i2) {
        int i3;
        int i4 = i;
        int i5 = i2;
        Rect rect = new Rect(0, 0, i4, i5);
        int i6 = 1;
        int i7 = 2;
        Plane[] planeArr = {new Plane(i420Buffer.getDataY(), i420Buffer.getStrideY(), 1), new Plane(i420Buffer.getDataU(), i420Buffer.getStrideU(), 1), new Plane(i420Buffer.getDataV(), i420Buffer.getStrideV(), 1)};
        int i8 = i4 * i5;
        byte[] bArr = new byte[(ImageFormat.getBitsPerPixel(35) * i8) / 8];
        byte[] bArr2 = new byte[planeArr[0].getRowStride()];
        int i9 = 0;
        int i10 = 0;
        int i11 = 1;
        while (i9 < planeArr.length) {
            if (i9 != 0) {
                if (i9 == i6) {
                    i10 = i8 + 1;
                } else if (i9 == i7) {
                    i10 = i8;
                }
                i11 = 2;
            } else {
                i10 = 0;
                i11 = 1;
            }
            ByteBuffer buffer = planeArr[i9].getBuffer();
            int rowStride = planeArr[i9].getRowStride();
            int pixelStride = planeArr[i9].getPixelStride();
            int i12 = i9 == 0 ? 0 : 1;
            int i13 = i4 >> i12;
            int i14 = i5 >> i12;
            buffer.position(((rect.top >> i12) * rowStride) + ((rect.left >> i12) * pixelStride));
            for (int i15 = 0; i15 < i14; i15++) {
                if (pixelStride == 1 && i11 == 1) {
                    buffer.get(bArr, i10, i13);
                    i10 += i13;
                    i3 = i13;
                } else {
                    i3 = ((i13 - 1) * pixelStride) + 1;
                    buffer.get(bArr2, 0, i3);
                    int i16 = i10;
                    for (int i17 = 0; i17 < i13; i17++) {
                        bArr[i16] = bArr2[i17 * pixelStride];
                        i16 += i11;
                    }
                    i10 = i16;
                }
                if (i15 < i14 - 1) {
                    buffer.position((buffer.position() + rowStride) - i3);
                }
            }
            i9++;
            i4 = i;
            i5 = i2;
            i7 = 2;
            i6 = 1;
        }
        return bArr;
    }

    public static void writeRgbaToFile(Buffer buffer, int i, int i2, String str) throws IOException {
        try {
            File file = new File(str);
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.copyPixelsFromBuffer(buffer);
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 50, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            Log.e(TAG, e.toString());
        }
    }
}
