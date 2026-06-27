package com.narvii.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import com.narvii.util.text.TextUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.nio.channels.FileChannel;

/* loaded from: classes2.dex */
public class BitmapCropTask extends AsyncTask<Void, Void, Throwable> {
    private static final String TAG = "BitmapCropTask";
    private int cropOffsetX;
    private int cropOffsetY;
    private String mBitmapFilePath;
    private final WeakReference<Context> mContext;
    private final BitmapCropCallback mCropCallback;
    private final RectF mCropRect;
    private int mCroppedImageHeight;
    private int mCroppedImageWidth;
    private final RectF mCurrentImageRect;
    private float mCurrentScale;
    private final int mDesiredHeight;
    private final int mDesiredWidth;
    private final String mImageInputPath;
    private final String mImageOutputPath;
    private Bitmap mViewBitmap;
    private float mCurrentAngle = 0.0f;
    private final int mMaxResultImageSizeX = 0;
    private final int mMaxResultImageSizeY = 0;
    private final Bitmap.CompressFormat mCompressFormat = Bitmap.CompressFormat.JPEG;
    private final int mCompressQuality = 100;

    public interface BitmapCropCallback {
        void onBitmapCropped(Uri uri, int i, int i2, int i3, int i4);

        void onCropFailure(Throwable th);
    }

    public BitmapCropTask(Context context, Bitmap bitmap, String str, RectF rectF, RectF rectF2, float f, int i, int i2, String str2, String str3, BitmapCropCallback bitmapCropCallback) {
        this.mContext = new WeakReference<>(context);
        this.mBitmapFilePath = str;
        this.mViewBitmap = bitmap;
        this.mCropRect = rectF;
        this.mCurrentImageRect = rectF2;
        this.mCurrentScale = f;
        this.mDesiredWidth = i;
        this.mDesiredHeight = i2;
        this.mImageInputPath = str2;
        this.mImageOutputPath = str3;
        this.mCropCallback = bitmapCropCallback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Throwable doInBackground(Void... voidArr) {
        if (this.mViewBitmap == null && !TextUtils.isEmpty(this.mBitmapFilePath)) {
            this.mViewBitmap = BitmapFactory.decodeFile(this.mBitmapFilePath);
        }
        Bitmap bitmap = this.mViewBitmap;
        if (bitmap == null) {
            return new NullPointerException("ViewBitmap is null");
        }
        if (bitmap.isRecycled()) {
            return new NullPointerException("ViewBitmap is recycled");
        }
        if (this.mCurrentImageRect.isEmpty()) {
            return new NullPointerException("CurrentImageRect is empty");
        }
        try {
            crop();
            this.mViewBitmap = null;
            return null;
        } catch (Throwable th) {
            return th;
        }
    }

    private boolean crop() throws Throwable {
        if (this.mMaxResultImageSizeX > 0 && this.mMaxResultImageSizeY > 0) {
            float fWidth = this.mCropRect.width() / this.mCurrentScale;
            float fHeight = this.mCropRect.height() / this.mCurrentScale;
            if (fWidth > this.mMaxResultImageSizeX || fHeight > this.mMaxResultImageSizeY) {
                float fMin = Math.min(this.mMaxResultImageSizeX / fWidth, this.mMaxResultImageSizeY / fHeight);
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(this.mViewBitmap, Math.round(r2.getWidth() * fMin), Math.round(this.mViewBitmap.getHeight() * fMin), false);
                Bitmap bitmap = this.mViewBitmap;
                if (bitmap != bitmapCreateScaledBitmap) {
                    bitmap.recycle();
                }
                this.mViewBitmap = bitmapCreateScaledBitmap;
                this.mCurrentScale /= fMin;
            }
        }
        if (this.mCurrentAngle != 0.0f) {
            Matrix matrix = new Matrix();
            matrix.setRotate(this.mCurrentAngle, this.mViewBitmap.getWidth() / 2, this.mViewBitmap.getHeight() / 2);
            Bitmap bitmap2 = this.mViewBitmap;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap2, 0, 0, bitmap2.getWidth(), this.mViewBitmap.getHeight(), matrix, true);
            Bitmap bitmap3 = this.mViewBitmap;
            if (bitmap3 != bitmapCreateBitmap) {
                bitmap3.recycle();
            }
            this.mViewBitmap = bitmapCreateBitmap;
        }
        this.cropOffsetX = Math.round((this.mCropRect.left - this.mCurrentImageRect.left) / this.mCurrentScale);
        this.cropOffsetY = Math.round((this.mCropRect.top - this.mCurrentImageRect.top) / this.mCurrentScale);
        this.mCroppedImageWidth = Math.round(this.mCropRect.width() / this.mCurrentScale);
        this.mCroppedImageHeight = Math.round(this.mCropRect.height() / this.mCurrentScale);
        if (shouldCrop(this.mCroppedImageWidth, this.mCroppedImageHeight)) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.mViewBitmap, this.cropOffsetX, this.cropOffsetY, this.mCroppedImageWidth, this.mCroppedImageHeight);
            if (bitmapCreateBitmap2.getWidth() != this.mDesiredWidth || bitmapCreateBitmap2.getHeight() != this.mDesiredHeight) {
                saveImage(Bitmap.createScaledBitmap(bitmapCreateBitmap2, this.mDesiredWidth, this.mDesiredHeight, false));
                bitmapCreateBitmap2.recycle();
                return true;
            }
            saveImage(bitmapCreateBitmap2);
            return true;
        }
        if (!TextUtils.isEmpty(this.mImageInputPath) && new File(this.mImageInputPath).exists()) {
            copyFile(this.mImageInputPath, this.mImageOutputPath);
        } else {
            saveImage(Bitmap.createBitmap(this.mViewBitmap, this.cropOffsetX, this.cropOffsetY, this.mCroppedImageWidth, this.mCroppedImageHeight));
        }
        return false;
    }

    private void saveImage(Bitmap bitmap) throws IOException {
        Context context = this.mContext.get();
        if (context == null) {
            return;
        }
        OutputStream outputStreamOpenOutputStream = null;
        try {
            outputStreamOpenOutputStream = context.getContentResolver().openOutputStream(Uri.fromFile(new File(this.mImageOutputPath)));
            bitmap.compress(this.mCompressFormat, this.mCompressQuality, outputStreamOpenOutputStream);
            bitmap.recycle();
        } finally {
            close(outputStreamOpenOutputStream);
        }
    }

    private boolean shouldCrop(int i, int i2) {
        int iRound = Math.round(Math.max(i, i2) / 1000.0f) + 1;
        if (this.mMaxResultImageSizeX > 0 && this.mMaxResultImageSizeY > 0) {
            return true;
        }
        float f = iRound;
        return Math.abs(this.mCropRect.left - this.mCurrentImageRect.left) > f || Math.abs(this.mCropRect.top - this.mCurrentImageRect.top) > f || Math.abs(this.mCropRect.bottom - this.mCurrentImageRect.bottom) > f || Math.abs(this.mCropRect.right - this.mCurrentImageRect.right) > f || this.mCurrentAngle != 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Throwable th) {
        BitmapCropCallback bitmapCropCallback = this.mCropCallback;
        if (bitmapCropCallback != null) {
            if (th == null) {
                this.mCropCallback.onBitmapCropped(Uri.fromFile(new File(this.mImageOutputPath)), this.cropOffsetX, this.cropOffsetY, this.mCroppedImageWidth, this.mCroppedImageHeight);
            } else {
                bitmapCropCallback.onCropFailure(th);
            }
        }
    }

    private static void copyFile(String str, String str2) throws Throwable {
        FileChannel channel;
        FileChannel channel2;
        if (str.equalsIgnoreCase(str2)) {
            return;
        }
        FileChannel fileChannel = null;
        try {
            channel2 = new FileInputStream(new File(str)).getChannel();
            try {
                channel = new FileOutputStream(new File(str2)).getChannel();
            } catch (Throwable th) {
                fileChannel = channel2;
                th = th;
                channel = null;
            }
        } catch (Throwable th2) {
            th = th2;
            channel = null;
        }
        try {
            channel2.transferTo(0L, channel2.size(), channel);
            channel2.close();
            if (channel2 != null) {
                channel2.close();
            }
            if (channel != null) {
                channel.close();
            }
        } catch (Throwable th3) {
            fileChannel = channel2;
            th = th3;
            if (fileChannel != null) {
                fileChannel.close();
            }
            if (channel != null) {
                channel.close();
            }
            throw th;
        }
    }

    private static void close(Closeable closeable) throws IOException {
        if (closeable == null || !(closeable instanceof Closeable)) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }
}
