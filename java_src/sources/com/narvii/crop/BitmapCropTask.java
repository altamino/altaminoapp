package com.narvii.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.util.text.TextUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes4.dex */
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
        void onBitmapCropped(@NonNull Uri uri, int i10, int i11, int i12, int i13);

        void onCropFailure(@NonNull Throwable th);
    }

    private static void close(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private boolean crop() throws Throwable {
        if (this.mMaxResultImageSizeX > 0 && this.mMaxResultImageSizeY > 0) {
            float fWidth = this.mCropRect.width() / this.mCurrentScale;
            float fHeight = this.mCropRect.height() / this.mCurrentScale;
            int i10 = this.mMaxResultImageSizeX;
            if (fWidth > i10 || fHeight > this.mMaxResultImageSizeY) {
                float fMin = Math.min(i10 / fWidth, this.mMaxResultImageSizeY / fHeight);
                Bitmap bitmap = this.mViewBitmap;
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, Math.round(bitmap.getWidth() * fMin), Math.round(this.mViewBitmap.getHeight() * fMin), false);
                Bitmap bitmap2 = this.mViewBitmap;
                if (bitmap2 != bitmapCreateScaledBitmap) {
                    bitmap2.recycle();
                }
                this.mViewBitmap = bitmapCreateScaledBitmap;
                this.mCurrentScale /= fMin;
            }
        }
        if (this.mCurrentAngle != 0.0f) {
            Matrix matrix = new Matrix();
            matrix.setRotate(this.mCurrentAngle, this.mViewBitmap.getWidth() / 2, this.mViewBitmap.getHeight() / 2);
            Bitmap bitmap3 = this.mViewBitmap;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap3, 0, 0, bitmap3.getWidth(), this.mViewBitmap.getHeight(), matrix, true);
            Bitmap bitmap4 = this.mViewBitmap;
            if (bitmap4 != bitmapCreateBitmap) {
                bitmap4.recycle();
            }
            this.mViewBitmap = bitmapCreateBitmap;
        }
        this.cropOffsetX = Math.round((this.mCropRect.left - this.mCurrentImageRect.left) / this.mCurrentScale);
        this.cropOffsetY = Math.round((this.mCropRect.top - this.mCurrentImageRect.top) / this.mCurrentScale);
        this.mCroppedImageWidth = Math.round(this.mCropRect.width() / this.mCurrentScale);
        int iRound = Math.round(this.mCropRect.height() / this.mCurrentScale);
        this.mCroppedImageHeight = iRound;
        if (!shouldCrop(this.mCroppedImageWidth, iRound)) {
            if (TextUtils.isEmpty(this.mImageInputPath) || !new File(this.mImageInputPath).exists()) {
                saveImage(Bitmap.createBitmap(this.mViewBitmap, this.cropOffsetX, this.cropOffsetY, this.mCroppedImageWidth, this.mCroppedImageHeight));
            } else {
                copyFile(this.mImageInputPath, this.mImageOutputPath);
            }
            return false;
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.mViewBitmap, this.cropOffsetX, this.cropOffsetY, this.mCroppedImageWidth, this.mCroppedImageHeight);
        if (bitmapCreateBitmap2.getWidth() == this.mDesiredWidth && bitmapCreateBitmap2.getHeight() == this.mDesiredHeight) {
            saveImage(bitmapCreateBitmap2);
            return true;
        }
        saveImage(Bitmap.createScaledBitmap(bitmapCreateBitmap2, this.mDesiredWidth, this.mDesiredHeight, false));
        bitmapCreateBitmap2.recycle();
        return true;
    }

    private void saveImage(@NonNull Bitmap bitmap) throws FileNotFoundException {
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    @Nullable
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(@Nullable Throwable th) {
        BitmapCropCallback bitmapCropCallback = this.mCropCallback;
        if (bitmapCropCallback != null) {
            if (th != null) {
                bitmapCropCallback.onCropFailure(th);
            } else {
                this.mCropCallback.onBitmapCropped(Uri.fromFile(new File(this.mImageOutputPath)), this.cropOffsetX, this.cropOffsetY, this.mCroppedImageWidth, this.mCroppedImageHeight);
            }
        }
    }

    public BitmapCropTask(@NonNull Context context, @Nullable Bitmap bitmap, @Nullable String str, RectF rectF, RectF rectF2, float f, int i10, int i11, String str2, String str3, @Nullable BitmapCropCallback bitmapCropCallback) {
        this.mContext = new WeakReference<>(context);
        this.mBitmapFilePath = str;
        this.mViewBitmap = bitmap;
        this.mCropRect = rectF;
        this.mCurrentImageRect = rectF2;
        this.mCurrentScale = f;
        this.mDesiredWidth = i10;
        this.mDesiredHeight = i11;
        this.mImageInputPath = str2;
        this.mImageOutputPath = str3;
        this.mCropCallback = bitmapCropCallback;
    }

    private static void copyFile(@NonNull String str, @NonNull String str2) throws Throwable {
        FileChannel fileChannel;
        if (str.equalsIgnoreCase(str2)) {
            return;
        }
        FileChannel channel = null;
        try {
            FileChannel channel2 = new FileInputStream(new File(str)).getChannel();
            try {
                channel = new FileOutputStream(new File(str2)).getChannel();
                channel2.transferTo(0L, channel2.size(), channel);
                channel2.close();
                channel2.close();
                if (channel != null) {
                    channel.close();
                }
            } catch (Throwable th) {
                th = th;
                FileChannel fileChannel2 = channel;
                channel = channel2;
                fileChannel = fileChannel2;
                if (channel != null) {
                    channel.close();
                }
                if (fileChannel != null) {
                    fileChannel.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileChannel = null;
        }
    }

    private boolean shouldCrop(int i10, int i11) {
        int iRound = Math.round(Math.max(i10, i11) / 1000.0f) + 1;
        if (this.mMaxResultImageSizeX > 0 && this.mMaxResultImageSizeY > 0) {
            return true;
        }
        float f = iRound;
        if (Math.abs(this.mCropRect.left - this.mCurrentImageRect.left) > f || Math.abs(this.mCropRect.top - this.mCurrentImageRect.top) > f || Math.abs(this.mCropRect.bottom - this.mCurrentImageRect.bottom) > f || Math.abs(this.mCropRect.right - this.mCurrentImageRect.right) > f || this.mCurrentAngle != 0.0f) {
            return true;
        }
        return false;
    }
}
