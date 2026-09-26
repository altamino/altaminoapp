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

/* JADX INFO: loaded from: classes8.dex */
@TargetApi(21)
public class YuvUtils {
    public static final int I420 = 35;
    public static final int NV21 = 17;
    private static final String TAG = "YuvUtils";

    public static byte[] yuv420toNV21(Image image) {
        int i10;
        Rect cropRect = image.getCropRect();
        int format = image.getFormat();
        int iWidth = cropRect.width();
        int iHeight = cropRect.height();
        Image.Plane[] planes = image.getPlanes();
        int i11 = iWidth * iHeight;
        byte[] bArr = new byte[(ImageFormat.getBitsPerPixel(format) * i11) / 8];
        int i12 = 0;
        byte[] bArr2 = new byte[planes[0].getRowStride()];
        int i13 = 1;
        int i14 = 0;
        int i15 = 0;
        int i16 = 1;
        while (i14 < planes.length) {
            if (i14 != 0) {
                if (i14 == i13) {
                    i15 = i11 + 1;
                } else if (i14 == 2) {
                    i15 = i11;
                }
                i16 = 2;
            } else {
                i15 = i12;
                i16 = i13;
            }
            ByteBuffer buffer = planes[i14].getBuffer();
            int rowStride = planes[i14].getRowStride();
            int pixelStride = planes[i14].getPixelStride();
            int i17 = i14 == 0 ? i12 : i13;
            int i18 = iWidth >> i17;
            int i19 = iHeight >> i17;
            int i20 = iWidth;
            int i21 = iHeight;
            buffer.position(((cropRect.top >> i17) * rowStride) + ((cropRect.left >> i17) * pixelStride));
            for (int i22 = 0; i22 < i19; i22++) {
                if (pixelStride == 1 && i16 == 1) {
                    buffer.get(bArr, i15, i18);
                    i15 += i18;
                    i10 = i18;
                } else {
                    i10 = ((i18 - 1) * pixelStride) + 1;
                    buffer.get(bArr2, 0, i10);
                    for (int i23 = 0; i23 < i18; i23++) {
                        bArr[i15] = bArr2[i23 * pixelStride];
                        i15 += i16;
                    }
                }
                if (i22 < i19 - 1) {
                    buffer.position((buffer.position() + rowStride) - i10);
                }
            }
            i14++;
            iWidth = i20;
            iHeight = i21;
            i12 = 0;
            i13 = 1;
        }
        return bArr;
    }

    static class Plane {
        private ByteBuffer buffer;
        private int pixelStride;
        private int rowStride;

        public ByteBuffer getBuffer() {
            return this.buffer;
        }

        public int getPixelStride() {
            return this.pixelStride;
        }

        public int getRowStride() {
            return this.rowStride;
        }

        public Plane(ByteBuffer buffer, int rowStride, int pixelStride) {
            this.buffer = buffer;
            this.rowStride = rowStride;
            this.pixelStride = pixelStride;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0080  */
    /* JADX WARN: Code duplicated, block: B:35:0x0098  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b3 A[LOOP:2: B:40:0x00b1->B:41:0x00b3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:44:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00cb A[SYNTHETIC] */
    public static byte[] getImageData(Image image, int imageFormat) {
        ByteBuffer buffer;
        int rowStride;
        int pixelStride;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = imageFormat;
        int i17 = 17;
        int i18 = 35;
        if (i16 != 35 && i16 != 17) {
            throw new IllegalArgumentException("only support COLOR_FormatI420 and COLOR_FormatNV21");
        }
        if (!supportedImageFormat(image)) {
            throw new RuntimeException("can't convert Image to byte array, format " + image.getFormat());
        }
        Rect cropRect = image.getCropRect();
        int format = image.getFormat();
        int iWidth = cropRect.width();
        int iHeight = cropRect.height();
        Image.Plane[] planes = image.getPlanes();
        int i19 = iWidth * iHeight;
        byte[] bArr = new byte[(ImageFormat.getBitsPerPixel(format) * i19) / 8];
        int i20 = 0;
        byte[] bArr2 = new byte[planes[0].getRowStride()];
        int i21 = 1;
        int i22 = 0;
        int i23 = 0;
        int i24 = 1;
        while (i22 < planes.length) {
            if (i22 != 0) {
                if (i22 != i21) {
                    if (i22 == 2) {
                        if (i16 == i18) {
                            i23 = (int) (((double) i19) * 1.25d);
                        } else if (i16 == i17) {
                            i23 = i19;
                            i24 = 2;
                        }
                    }
                } else if (i16 == i18) {
                    i23 = i19;
                } else if (i16 == i17) {
                    i23 = i19 + 1;
                    i24 = 2;
                }
                buffer = planes[i22].getBuffer();
                rowStride = planes[i22].getRowStride();
                pixelStride = planes[i22].getPixelStride();
                if (i22 == 0) {
                    i10 = i20;
                } else {
                    i10 = i21;
                }
                i11 = iWidth >> i10;
                i12 = iHeight >> i10;
                buffer.position(((cropRect.top >> i10) * rowStride) + ((cropRect.left >> i10) * pixelStride));
                i13 = 0;
                while (i13 < i12) {
                    if (pixelStride == 1 || i24 != 1) {
                        i14 = ((i11 - 1) * pixelStride) + 1;
                        buffer.get(bArr2, 0, i14);
                        for (i15 = 0; i15 < i11; i15++) {
                            bArr[i23] = bArr2[i15 * pixelStride];
                            i23 += i24;
                        }
                    } else {
                        buffer.get(bArr, i23, i11);
                        i23 += i11;
                        i14 = i11;
                    }
                    if (i13 < i12 - 1) {
                        buffer.position((buffer.position() + rowStride) - i14);
                    }
                    i13++;
                    cropRect = cropRect;
                }
                i22++;
                i16 = imageFormat;
                i17 = 17;
                i18 = 35;
                i20 = 0;
                i21 = 1;
            } else {
                i23 = i20;
            }
            i24 = i21;
            buffer = planes[i22].getBuffer();
            rowStride = planes[i22].getRowStride();
            pixelStride = planes[i22].getPixelStride();
            if (i22 == 0) {
                i10 = i20;
            } else {
                i10 = i21;
            }
            i11 = iWidth >> i10;
            i12 = iHeight >> i10;
            buffer.position(((cropRect.top >> i10) * rowStride) + ((cropRect.left >> i10) * pixelStride));
            i13 = 0;
            while (i13 < i12) {
                if (pixelStride == 1) {
                    i14 = ((i11 - 1) * pixelStride) + 1;
                    buffer.get(bArr2, 0, i14);
                    while (i15 < i11) {
                        bArr[i23] = bArr2[i15 * pixelStride];
                        i23 += i24;
                    }
                } else {
                    i14 = ((i11 - 1) * pixelStride) + 1;
                    buffer.get(bArr2, 0, i14);
                    while (i15 < i11) {
                        bArr[i23] = bArr2[i15 * pixelStride];
                        i23 += i24;
                    }
                }
                if (i13 < i12 - 1) {
                    buffer.position((buffer.position() + rowStride) - i14);
                }
                i13++;
                cropRect = cropRect;
            }
            i22++;
            i16 = imageFormat;
            i17 = 17;
            i18 = 35;
            i20 = 0;
            i21 = 1;
        }
        return bArr;
    }

    public static void write420ImageToFile(Image image, String filePath) {
        if (image == null) {
            return;
        }
        try {
            YuvImage yuvImage = new YuvImage(yuv420toNV21(image), 17, image.getWidth(), image.getHeight(), null);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            yuvImage.compressToJpeg(new Rect(0, 0, image.getWidth(), image.getHeight()), 100, byteArrayOutputStream);
            File file = new File(filePath);
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(byteArrayOutputStream.toByteArray());
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            Log.e(TAG, e.toString());
        }
    }

    public static boolean writeNV21ToFile(byte[] imageData, int width, int height, String filePath) {
        YuvImage yuvImage = new YuvImage(imageData, 17, width, height, null);
        Rect rect = new Rect(0, 0, width, height);
        try {
            File file = new File(filePath);
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

    public static void writeRawData(byte[] data, String filePath) {
        if (data == null || data.length == 0) {
            return;
        }
        try {
            File file = new File(filePath);
            file.createNewFile();
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            bufferedOutputStream.write(data);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
        } catch (IOException e) {
            Log.e(TAG, e.toString());
        }
    }

    public static void writeRgbaToFile(Buffer buffer, int width, int height, String filePath) {
        try {
            File file = new File(filePath);
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.copyPixelsFromBuffer(buffer);
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 50, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            Log.e(TAG, e.toString());
        }
    }

    public static boolean supportedImageFormat(Image image) {
        int format = image.getFormat();
        if (format != 17 && format != 35 && format != 842094169) {
            return false;
        }
        return true;
    }

    public static byte[] yuv420toNV21(byte[] data, int width, int height) {
        return yuv420toNV21(JavaI420Buffer.createYUV(data, width, height), width, height);
    }

    public static byte[] yuv420toNV21(VideoFrame.I420Buffer i420, int width, int height) {
        int i10;
        int i11 = width;
        int i12 = height;
        int i13 = 0;
        Rect rect = new Rect(0, 0, i11, i12);
        int i14 = 3;
        int i15 = 1;
        int i16 = 2;
        Plane[] planeArr = {new Plane(i420.getDataY(), i420.getStrideY(), 1), new Plane(i420.getDataU(), i420.getStrideU(), 1), new Plane(i420.getDataV(), i420.getStrideV(), 1)};
        int i17 = i11 * i12;
        byte[] bArr = new byte[(ImageFormat.getBitsPerPixel(35) * i17) / 8];
        byte[] bArr2 = new byte[planeArr[0].getRowStride()];
        int i18 = 0;
        int i19 = 0;
        int i20 = 1;
        while (i18 < i14) {
            if (i18 == 0) {
                i19 = i13;
                i20 = i15;
            } else if (i18 == i15) {
                i19 = i17 + 1;
                i20 = i16;
            } else if (i18 == i16) {
                i20 = i16;
                i19 = i17;
            }
            ByteBuffer buffer = planeArr[i18].getBuffer();
            int rowStride = planeArr[i18].getRowStride();
            int pixelStride = planeArr[i18].getPixelStride();
            int i21 = i18 == 0 ? i13 : i15;
            int i22 = i11 >> i21;
            int i23 = i12 >> i21;
            buffer.position(((rect.top >> i21) * rowStride) + ((rect.left >> i21) * pixelStride));
            for (int i24 = 0; i24 < i23; i24++) {
                if (pixelStride == 1 && i20 == 1) {
                    buffer.get(bArr, i19, i22);
                    i19 += i22;
                    i10 = i22;
                } else {
                    i10 = ((i22 - 1) * pixelStride) + 1;
                    buffer.get(bArr2, 0, i10);
                    for (int i25 = 0; i25 < i22; i25++) {
                        bArr[i19] = bArr2[i25 * pixelStride];
                        i19 += i20;
                    }
                }
                if (i24 < i23 - 1) {
                    buffer.position((buffer.position() + rowStride) - i10);
                }
            }
            i18++;
            i11 = width;
            i12 = height;
            i13 = 0;
            i14 = 3;
            i16 = 2;
            i15 = 1;
        }
        return bArr;
    }
}
