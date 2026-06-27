package com.narvii.photos;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Log;
import com.narvii.util.SafeFileOutputStream;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseProgressListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.image.BitmapUtils;
import com.narvii.util.image.MediaStoreUtils;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.commons.compress.archivers.zip.UnixStat;

/* loaded from: classes3.dex */
public class PhotoManager {
    public static final String MEDIA_CROP_HEIGHT = "MEDIA-CROP-HEIGHT";
    public static final String MEDIA_CROP_WIDTH = "MEDIA-CROP-WIDTH";
    public static final String MEDIA_CROP_X = "MEDIA-CROP-X";
    public static final String MEDIA_CROP_Y = "MEDIA-CROP-Y";
    private final NVContext context;
    private final File filesDir;
    public int retryCount = 0;

    public PhotoManager(NVContext nVContext) {
        this.context = nVContext;
        this.filesDir = nVContext.getContext().getFilesDir();
    }

    public String importPhoto(File file, Uri uri) throws IOException {
        InputStream inputStreamOpenInputStream;
        if ("file".equals(uri.getScheme())) {
            inputStreamOpenInputStream = new FileInputStream(new File(uri.getPath()));
        } else {
            inputStreamOpenInputStream = this.context.getContext().getContentResolver().openInputStream(uri);
        }
        byte[] bArr = new byte[4096];
        int i = inputStreamOpenInputStream.read(bArr);
        boolean z = i >= 6 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70 && bArr[3] == 56 && (bArr[4] == 55 || bArr[4] == 57) && bArr[5] == 97;
        boolean z2 = i >= 4 && bArr[0] == -119 && bArr[1] == 80 && bArr[2] == 78 && bArr[3] == 71;
        String newName = getNewName(file);
        if (z) {
            newName = newName + ".gif";
        } else if (z2) {
            newName = newName + ".png";
        }
        File file2 = new File(file, newName);
        SafeFileOutputStream safeFileOutputStream = new SafeFileOutputStream(file2);
        while (i != -1) {
            try {
                safeFileOutputStream.write(bArr, 0, i);
                i = inputStreamOpenInputStream.read(bArr);
            } catch (Throwable th) {
                inputStreamOpenInputStream.close();
                safeFileOutputStream.close(false);
                throw th;
            }
        }
        inputStreamOpenInputStream.close();
        safeFileOutputStream.close(true);
        return getUri(file2);
    }

    public Bitmap createBitmap(String str, int i, int i2) throws Exception {
        Bitmap bitmapDecodeFile;
        BitmapFactory.Options options = new BitmapFactory.Options();
        File path = getPath(str);
        if (path == null) {
            return null;
        }
        if (i > 0 && i2 > 0) {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(path.getAbsolutePath(), options);
            options.inSampleSize = BitmapUtils.findBestSampleSize(options.outWidth, options.outHeight, i, i2);
        }
        options.inJustDecodeBounds = false;
        options.inPreferQualityOverSpeed = true;
        try {
            bitmapDecodeFile = BitmapFactory.decodeFile(path.getAbsolutePath(), options);
        } catch (OutOfMemoryError e) {
            options.inSampleSize *= 2;
            Bitmap bitmapDecodeFile2 = BitmapFactory.decodeFile(path.getAbsolutePath(), options);
            Log.w("compress bitmap failover to half size when out of memory " + options.outWidth + "x" + options.outHeight);
            OomHelper.test(e);
            bitmapDecodeFile = bitmapDecodeFile2;
        }
        Bitmap bitmapApplyOrientation = MediaStoreUtils.applyOrientation(bitmapDecodeFile, MediaStoreUtils.getRotation(path.getAbsolutePath()));
        if (bitmapApplyOrientation == bitmapDecodeFile) {
            return bitmapDecodeFile;
        }
        bitmapDecodeFile.recycle();
        return bitmapApplyOrientation;
    }

    public Bitmap createBitmapAtSize(String str, int i, int i2) throws Exception {
        Bitmap bitmapDecodeFile;
        BitmapFactory.Options options = new BitmapFactory.Options();
        File path = getPath(str);
        if (path == null || i <= 0 || i2 <= 0) {
            return null;
        }
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path.getAbsolutePath(), options);
        options.inSampleSize = BitmapUtils.findBestSampleSize(options.outWidth, options.outHeight, i, i2);
        options.inJustDecodeBounds = false;
        options.inPreferQualityOverSpeed = true;
        try {
            bitmapDecodeFile = BitmapFactory.decodeFile(path.getAbsolutePath(), options);
        } catch (OutOfMemoryError e) {
            options.inSampleSize *= 2;
            Bitmap bitmapDecodeFile2 = BitmapFactory.decodeFile(path.getAbsolutePath(), options);
            Log.w("compress bitmap failover to half size when out of memory " + options.outWidth + "x" + options.outHeight);
            OomHelper.test(e);
            bitmapDecodeFile = bitmapDecodeFile2;
        }
        if (bitmapDecodeFile == null) {
            return null;
        }
        Bitmap bitmapApplyOrientationAndSize = MediaStoreUtils.applyOrientationAndSize(bitmapDecodeFile, MediaStoreUtils.getRotation(path.getAbsolutePath()), i, i2);
        if (bitmapApplyOrientationAndSize == bitmapDecodeFile) {
            return bitmapDecodeFile;
        }
        bitmapDecodeFile.recycle();
        return bitmapApplyOrientationAndSize;
    }

    public static boolean isUHQ(String str) {
        return TextUtils.isEmpty(str) || NVImageView.TYPE_SHARED_FOLDER_IMAGE.equals(str) || NVImageView.TYPE_STORY_COVER.equals(str);
    }

    public Bitmap createBitmapAtTargetSize(String str, String str2) throws Exception {
        return createBitmapAtTargetSize(str, str2, false);
    }

    public Bitmap createBitmapAtTargetSize(String str, String str2, boolean z) throws Exception {
        int i = 1024;
        int i2 = 1600;
        if (isUHQ(str2) || z) {
            i = 2048;
            i2 = 2048;
        } else if (NVImageView.TYPE_P2A_AVATAR.equals(str2)) {
            i = 2000;
            i2 = 2000;
        } else if (NVImageView.TYPE_POST_BACKGROUND.equals(str2) || NVImageView.TYPE_CHAT_BACKGROUND.equals(str2) || NVImageView.TYPE_LEADERBOARD_BACKGROUND_IMAGE.equals(str2) || NVImageView.TYPE_FULLSCREEN_BACKGROUND_IMAGE.equals(str2) || NVImageView.TYPE_COMMUNITY_LAUNCH_IMAGE.equals(str2)) {
            i = 1600;
        } else {
            i2 = 1024;
        }
        return createBitmapAtSize(str, i2, i);
    }

    public void writeUploadDataTo(String str, String str2, File file, String[] strArr) throws Exception {
        writeUploadDataTo(str, str2, file, strArr, false);
    }

    public void writeUploadDataTo(String str, String str2, File file, String[] strArr, boolean z) throws Exception {
        isUHQ(str2);
        writeUploadDataTo(str, str2, 85, file, strArr, false, z);
    }

    public void writeUploadDataTo(String str, String str2, int i, File file, String[] strArr, boolean z) throws Exception {
        writeUploadDataTo(str, str2, i, file, strArr, z, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003f A[Catch: all -> 0x0054, TRY_LEAVE, TryCatch #0 {all -> 0x0054, blocks: (B:13:0x002b, B:15:0x0031, B:17:0x003a, B:18:0x003f), top: B:31:0x002b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeUploadDataTo(java.lang.String r3, java.lang.String r4, int r5, java.io.File r6, java.lang.String[] r7, boolean r8, boolean r9) throws java.lang.Exception {
        /*
            r2 = this;
            boolean r0 = r2.isGif(r3)
            r1 = 0
            if (r0 == 0) goto L15
            java.io.File r3 = r2.getPath(r3)
            com.narvii.util.Utils.copyFile(r3, r6)
            if (r7 == 0) goto L53
            java.lang.String r3 = "image/gif"
            r7[r1] = r3
            goto L53
        L15:
            android.graphics.Bitmap r4 = r2.createBitmapAtTargetSize(r3, r4, r9)
            if (r4 != 0) goto L23
            java.io.File r3 = r2.getPath(r3)
            com.narvii.util.Utils.copyFile(r3, r6)
            goto L49
        L23:
            r9 = 0
            com.narvii.util.SafeFileOutputStream r0 = new com.narvii.util.SafeFileOutputStream     // Catch: java.lang.Throwable -> L56
            r0.<init>(r6)     // Catch: java.lang.Throwable -> L56
            if (r8 == 0) goto L3f
            boolean r3 = r2.isPng(r3)     // Catch: java.lang.Throwable -> L54
            if (r3 == 0) goto L3f
            android.graphics.Bitmap$CompressFormat r3 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Throwable -> L54
            r5 = 100
            r4.compress(r3, r5, r0)     // Catch: java.lang.Throwable -> L54
            if (r7 == 0) goto L42
            java.lang.String r3 = "image/png"
            r7[r1] = r3     // Catch: java.lang.Throwable -> L54
            goto L42
        L3f:
            com.narvii.util.image.BitmapUtils.compressJpeg(r4, r5, r0)     // Catch: java.lang.Throwable -> L54
        L42:
            r3 = 1
            r0.close(r3)
            r4.recycle()
        L49:
            if (r7 == 0) goto L53
            r3 = r7[r1]
            if (r3 != 0) goto L53
            java.lang.String r3 = "image/jpg"
            r7[r1] = r3
        L53:
            return
        L54:
            r3 = move-exception
            goto L58
        L56:
            r3 = move-exception
            r0 = r9
        L58:
            r0.close(r1)
            r4.recycle()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.photos.PhotoManager.writeUploadDataTo(java.lang.String, java.lang.String, int, java.io.File, java.lang.String[], boolean, boolean):void");
    }

    public Bitmap getThumbnail(String str) throws Resources.NotFoundException {
        final File fileReplaceExtension = replaceExtension(getPath(str), "t");
        if (fileReplaceExtension == null) {
            return null;
        }
        try {
            if (fileReplaceExtension.isFile()) {
                return BitmapFactory.decodeFile(fileReplaceExtension.getAbsolutePath());
            }
            int dimensionPixelSize = this.context.getContext().getResources().getDimensionPixelSize(R.dimen.thumb_default_size);
            final Bitmap bitmapCreateBitmap = createBitmap(str, dimensionPixelSize, dimensionPixelSize);
            new Thread() { // from class: com.narvii.photos.PhotoManager.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws Throwable {
                    SafeFileOutputStream safeFileOutputStream = null;
                    try {
                        try {
                            SafeFileOutputStream safeFileOutputStream2 = new SafeFileOutputStream(fileReplaceExtension);
                            try {
                                BitmapUtils.compressJpeg(bitmapCreateBitmap, 60, safeFileOutputStream2);
                                safeFileOutputStream2.close(true);
                            } catch (Exception unused) {
                                safeFileOutputStream = safeFileOutputStream2;
                                if (safeFileOutputStream != null) {
                                    safeFileOutputStream.close(false);
                                }
                            } catch (Throwable th) {
                                th = th;
                                safeFileOutputStream = safeFileOutputStream2;
                                if (safeFileOutputStream != null) {
                                    try {
                                        safeFileOutputStream.close(false);
                                    } catch (Exception unused2) {
                                    }
                                }
                                throw th;
                            }
                        } catch (Exception unused3) {
                        }
                    } catch (Exception unused4) {
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }.start();
            return bitmapCreateBitmap;
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError e) {
            Log.w("out of memory", e);
            return null;
        }
    }

    public void remove(String str) {
        File path = getPath(str);
        if (path == null || !path.isFile()) {
            return;
        }
        path.delete();
        File parentFile = path.getParentFile();
        String name = path.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        StringBuilder sb = new StringBuilder();
        if (iLastIndexOf >= 0) {
            name = name.substring(0, iLastIndexOf);
        }
        sb.append(name);
        sb.append(".");
        String string = sb.toString();
        for (File file : parentFile.listFiles()) {
            if (file.getName().startsWith(string)) {
                file.delete();
            }
        }
    }

    public Intent createPickerIntent(boolean z) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        return intent;
    }

    @TargetApi(16)
    public List<String> importAllFromResult(File file, int i, Intent intent) {
        if (i == -1 && intent != null) {
            ArrayList arrayList = new ArrayList();
            if (Build.VERSION.SDK_INT >= 16 && intent.getClipData() != null) {
                int itemCount = intent.getClipData().getItemCount();
                for (int i2 = 0; i2 < itemCount; i2++) {
                    arrayList.add(intent.getClipData().getItemAt(i2).getUri());
                }
            }
            if (intent.getData() != null && !arrayList.contains(intent.getData())) {
                arrayList.add(0, intent.getData());
            }
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                try {
                    arrayList2.add(importPhoto(file, uri));
                } catch (Exception e) {
                    Log.e("fail to import image to [" + file + "], " + uri, e);
                }
            }
            return arrayList2;
        }
        return Collections.emptyList();
    }

    public boolean hasCamera() {
        return this.context.getContext().getPackageManager().hasSystemFeature("android.hardware.camera");
    }

    public Intent createCameraIntent() {
        File cameraDir = getCameraDir();
        String str = System.currentTimeMillis() + ".jpg";
        File file = new File(cameraDir, str);
        if (!Utils.writeToFile(new File(cameraDir, ".index"), str)) {
            Log.w("can't write to sdcard.");
        }
        return Utils.getIntentWithUri(this.context.getContext(), new Intent("android.media.action.IMAGE_CAPTURE"), file, "output");
    }

    public String importFromCameraResult(File file, int i, Intent intent) throws Throwable {
        if (i != -1) {
            return null;
        }
        File cameraDir = getCameraDir();
        File file2 = new File(cameraDir, ".index");
        String stringFromFile = Utils.readStringFromFile(file2);
        if (!TextUtils.isEmpty(stringFromFile)) {
            File file3 = new File(cameraDir, stringFromFile.trim());
            try {
                return importPhoto(file, Uri.fromFile(file3));
            } catch (Exception e) {
                Log.e("fail to import image to [" + file + "], " + file3, e);
            }
        }
        file2.delete();
        return null;
    }

    public String getUploadedUrl(String str) {
        String stringFromFile;
        if (str.startsWith("http://") || str.startsWith("ytv://")) {
            return str;
        }
        File fileReplaceExtension = replaceExtension(getPath(str), "u");
        if (fileReplaceExtension == null || !fileReplaceExtension.exists() || (stringFromFile = Utils.readStringFromFile(fileReplaceExtension)) == null) {
            return null;
        }
        return stringFromFile.trim();
    }

    public void upload(String str, PhotoUploadListener photoUploadListener) {
        upload(str, null, photoUploadListener);
    }

    public void upload(String str, String str2, PhotoUploadListener photoUploadListener) {
        upload(str, str2, false, photoUploadListener);
    }

    public void upload(String str, String str2, boolean z, PhotoUploadListener photoUploadListener) {
        upload(str, str2, z, photoUploadListener, new String[0]);
    }

    public void upload(String str, String str2, boolean z, PhotoUploadListener photoUploadListener, String... strArr) {
        isUHQ(str2);
        upload(PhotoUploadSpec.builder(str).target(str2).quality(85).original(z).headers(strArr).build(), photoUploadListener);
    }

    public void upload(PhotoUploadSpec photoUploadSpec, final PhotoUploadListener photoUploadListener) {
        if (photoUploadSpec == null) {
            return;
        }
        final String str = photoUploadSpec.uri;
        String[] strArr = photoUploadSpec.headers;
        String str2 = photoUploadSpec.target;
        boolean z = photoUploadSpec.original;
        int i = photoUploadSpec.quality;
        boolean z2 = photoUploadSpec.keepPng;
        final String uploadedUrl = getUploadedUrl(str);
        if (uploadedUrl != null) {
            Utils.post(new Runnable() { // from class: com.narvii.photos.PhotoManager.2
                @Override // java.lang.Runnable
                public void run() {
                    photoUploadListener.onFinish(str, uploadedUrl);
                }
            });
            return;
        }
        try {
            ApiRequest.Builder builder = ApiRequest.builder();
            if (strArr != null) {
                builder.headers(strArr);
            }
            builder.post();
            builder.mediaServer();
            String str3 = "/media/upload";
            if (!TextUtils.isEmpty(str2)) {
                str3 = "/media/upload/target/" + str2;
            }
            builder.path(str3);
            if (z) {
                File path = getPath(str);
                builder.body(path);
                path.length();
                if (isGif(str)) {
                    builder.headers("Content-Type", "image/gif");
                } else if (isPng(str)) {
                    builder.headers("Content-Type", "image/png");
                } else {
                    builder.headers("Content-Type", "image/jpg");
                }
            } else {
                File fileCreateTmpFile = Utils.createTmpFile();
                String[] strArr2 = new String[1];
                writeUploadDataTo(str, str2, i, fileCreateTmpFile, strArr2, z2);
                builder.body(fileCreateTmpFile).deleteBodyAfterDone();
                builder.headers("Content-Type", strArr2[0]);
                if (strArr2[0].startsWith("image/")) {
                    strArr2[0].substring(6);
                }
                fileCreateTmpFile.length();
            }
            builder.timeout(30000);
            if (this.retryCount != 0) {
                builder.retry(this.retryCount);
            }
            ((ApiService) this.context.getService("api")).exec(builder.build(), new ApiResponseProgressListener<PhotoUploadResponse>(PhotoUploadResponse.class) { // from class: com.narvii.photos.PhotoManager.3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, PhotoUploadResponse photoUploadResponse) throws Exception {
                    PhotoManager photoManager = PhotoManager.this;
                    Utils.writeToFile(photoManager.replaceExtension(photoManager.getPath(str), "u"), photoUploadResponse.mediaValue);
                    photoUploadListener.onFinish(str, photoUploadResponse.mediaValue);
                    String str4 = photoUploadResponse.mediaValue;
                    if (str4 == null || !str4.startsWith("http://")) {
                        Log.e("malformed uploaded image url " + photoUploadResponse.mediaValue);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str4, ApiResponse apiResponse, Throwable th) {
                    photoUploadListener.onFail(str, i2, str4, th);
                }

                @Override // com.narvii.util.http.PostProgressListener
                public void onPostProgress(int i2, int i3) {
                    photoUploadListener.onProgress(str, i2, i3);
                }
            });
        } catch (Exception e) {
            photoUploadListener.onFail(str, -1, e.getMessage() == null ? e.toString() : e.getMessage(), e);
            Log.e("fail to upload image", e);
        } catch (OutOfMemoryError e2) {
            photoUploadListener.onFail(str, -2, this.context.getContext().getString(R.string.out_of_memory), e2);
            Log.e("out of memory when upload image", e2);
        }
    }

    public void upload(String str, Bitmap bitmap, String str2, PhotoUploadListener photoUploadListener) {
        upload(str, bitmap, str2, false, photoUploadListener);
    }

    public void upload(final String str, Bitmap bitmap, String str2, boolean z, final PhotoUploadListener photoUploadListener) {
        final String uploadedUrl = str == null ? null : getUploadedUrl(str);
        if (uploadedUrl != null) {
            Utils.post(new Runnable() { // from class: com.narvii.photos.PhotoManager.4
                @Override // java.lang.Runnable
                public void run() {
                    photoUploadListener.onFinish(str, uploadedUrl);
                }
            });
            return;
        }
        try {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.post();
            builder.mediaServer();
            String str3 = "/media/upload";
            if (!TextUtils.isEmpty(str2)) {
                str3 = "/media/upload/target/" + str2;
            }
            builder.path(str3);
            String str4 = "jpg";
            File fileCreateTmpFile = Utils.createTmpFile();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTmpFile);
                isUHQ(str2);
                if (z) {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 85, fileOutputStream);
                    str4 = "png";
                } else {
                    BitmapUtils.compressJpeg(bitmap, 85, fileOutputStream);
                }
                fileOutputStream.close();
                builder.body(fileCreateTmpFile);
                builder.deleteBodyAfterDone();
                builder.headers("Content-Type", "image/" + str4);
                builder.timeout(30000);
                if (this.retryCount != 0) {
                    builder.retry(this.retryCount);
                }
                ApiService apiService = (ApiService) this.context.getService("api");
                fileCreateTmpFile.length();
                apiService.exec(builder.build(), new ApiResponseProgressListener<PhotoUploadResponse>(PhotoUploadResponse.class) { // from class: com.narvii.photos.PhotoManager.5
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, PhotoUploadResponse photoUploadResponse) throws Exception {
                        String str5 = str;
                        if (str5 != null) {
                            PhotoManager photoManager = PhotoManager.this;
                            Utils.writeToFile(photoManager.replaceExtension(photoManager.getPath(str5), "u"), photoUploadResponse.mediaValue);
                        }
                        photoUploadListener.onFinish(str, photoUploadResponse.mediaValue);
                        String str6 = photoUploadResponse.mediaValue;
                        if (str6 == null || !str6.startsWith("http://")) {
                            Log.e("malformed uploaded image url " + photoUploadResponse.mediaValue);
                        }
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str5, ApiResponse apiResponse, Throwable th) {
                        photoUploadListener.onFail(str, i, str5, th);
                    }

                    @Override // com.narvii.util.http.PostProgressListener
                    public void onPostProgress(int i, int i2) {
                        photoUploadListener.onProgress(str, i, i2);
                    }
                });
            } catch (Throwable th) {
                photoUploadListener.onFail(str, -1, th.getMessage() == null ? th.toString() : th.getMessage(), th);
                Log.e("fail to compress upload image", th);
            }
        } catch (Exception e) {
            photoUploadListener.onFail(str, -1, e.getMessage() == null ? e.toString() : e.getMessage(), e);
            Log.e("fail to upload image", e);
        } catch (OutOfMemoryError e2) {
            photoUploadListener.onFail(str, -2, this.context.getContext().getString(R.string.out_of_memory), e2);
            Log.e("out of memory when upload image", e2);
        }
    }

    private File getCameraDir() {
        File externalFilesDir = this.context.getContext().getApplicationContext().getExternalFilesDir("Camera");
        externalFilesDir.mkdirs();
        return externalFilesDir;
    }

    public String getNewName(File file) {
        return UUID.randomUUID().toString();
    }

    public String getUri(File file) {
        String absolutePath = this.filesDir.getAbsolutePath();
        if (!absolutePath.endsWith(File.separator)) {
            absolutePath = absolutePath + File.separator;
        }
        String absolutePath2 = file.getAbsolutePath();
        if (absolutePath2.startsWith(absolutePath)) {
            return Uri.withAppendedPath(Uri.parse("photo://files/"), absolutePath2.substring(absolutePath.length())).toString();
        }
        if (absolutePath2.startsWith(File.separator)) {
            absolutePath2 = absolutePath2.substring(1);
        }
        return Uri.withAppendedPath(Uri.parse("photo://absolute/"), absolutePath2).toString();
    }

    public File getPath(String str) {
        try {
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            if ("photo".equals(scheme) && "files".equals(host)) {
                return new File(this.filesDir, uri.getPath());
            }
            if ("photo".equals(scheme) && "absolute".equals(host)) {
                String path = uri.getPath();
                if (!path.startsWith(File.separator)) {
                    path = File.separator + path;
                }
                return new File(path);
            }
            if ("file".equals(scheme)) {
                return new File(new URI(str));
            }
            Log.e("malformed photo uri " + str);
            return null;
        } catch (Exception e) {
            Log.e("malformed photo uri " + str, e);
            return null;
        }
    }

    public boolean isGif(String str) {
        return Utils.isGif(str);
    }

    public boolean isPng(String str) {
        return str.toLowerCase(Locale.US).endsWith(".png");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File replaceExtension(File file, String str) {
        if (file == null) {
            return null;
        }
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            name = name.substring(0, iLastIndexOf);
        }
        File parentFile = file.getParentFile();
        StringBuilder sb = new StringBuilder();
        sb.append(name);
        if (TextUtils.isEmpty(str)) {
            str = "";
        } else if (!str.startsWith(".")) {
            str = "." + str;
        }
        sb.append(str);
        return new File(parentFile, sb.toString());
    }

    public String getNewVideoName(File file) {
        Random random = new Random(System.currentTimeMillis());
        for (int i = 0; i < 256; i++) {
            String str = Integer.toHexString((random.nextInt() & UnixStat.PERM_MASK) | 4096).substring(1) + "_v1";
            if (!new File(file, str + ".mp4").exists()) {
                return str;
            }
        }
        return UUID.randomUUID() + "_v1";
    }

    public String getVideoCoverUrl(String str) {
        if (!str.endsWith("_v1.mp4")) {
            return null;
        }
        return str.substring(0, str.length() - 4) + ".jpg";
    }

    public boolean isVideo(String str) {
        if (str.startsWith("photo://")) {
            return str.endsWith("_v1.mp4");
        }
        return str.endsWith(".mp4");
    }

    public boolean isVideoCover(String str) {
        if (str.startsWith("photo://")) {
            return str.endsWith("_v1.jpg");
        }
        return str.endsWith(".jpg");
    }

    public Future<Media> uploadVideo(VideoUploadSpec videoUploadSpec, VideoUploadListener videoUploadListener) {
        if (videoUploadSpec == null) {
            return null;
        }
        VideoUploadTask videoUploadTask = new VideoUploadTask(videoUploadSpec, videoUploadListener);
        videoUploadTask.startUpload();
        return videoUploadTask;
    }

    class VideoUploadTask extends ApiResponseProgressListener<PhotoUploadResponse> implements Future<Media> {
        private final ApiService api;
        private boolean isCanceled;
        private boolean isDone;
        private long length;
        VideoUploadListener listener;
        ApiRequest request;
        private Media ret;
        VideoUploadSpec uploadSpec;

        public VideoUploadTask(VideoUploadSpec videoUploadSpec, VideoUploadListener videoUploadListener) {
            super(PhotoUploadResponse.class);
            this.isCanceled = false;
            this.isDone = false;
            this.length = 0L;
            this.uploadSpec = videoUploadSpec;
            this.api = (ApiService) PhotoManager.this.context.getService("api");
            this.listener = videoUploadListener;
            this.isCanceled = false;
            this.isDone = false;
        }

        public void startUpload() {
            VideoUploadSpec videoUploadSpec = this.uploadSpec;
            String str = videoUploadSpec.uri;
            String[] strArr = videoUploadSpec.headers;
            String str2 = videoUploadSpec.target;
            File path = PhotoManager.this.getPath(str);
            PhotoManager photoManager = PhotoManager.this;
            File path2 = photoManager.getPath(photoManager.getVideoCoverUrl(str));
            if (!path.exists()) {
                this.listener.onFail(str, -3, "video file does not exist", null);
                Log.e("video file not exist ");
                return;
            }
            try {
                ApiRequest.Builder builder = ApiRequest.builder();
                if (strArr != null) {
                    builder.headers(strArr);
                }
                builder.post().global();
                builder.mediaServer();
                String str3 = "/media/upload";
                if (!TextUtils.isEmpty(str2)) {
                    str3 = "/media/upload/target/" + str2;
                }
                builder.path(str3);
                this.length = path.length();
                builder.contentTypeMultiPart().addPart(new ApiRequest.FilePart("video.mp4", path));
                if (path2.exists()) {
                    builder.addPart(new ApiRequest.FilePart("cover.jpg", path2));
                    this.length += path2.length();
                }
                builder.timeout(300000);
                if (PhotoManager.this.retryCount != 0) {
                    builder.retry(PhotoManager.this.retryCount);
                }
                this.request = builder.build();
                this.api.exec(this.request, this);
            } catch (Exception e) {
                this.listener.onFail(str, -1, e.getMessage() == null ? e.toString() : e.getMessage(), e);
                Log.e("fail to upload video", e);
            } catch (OutOfMemoryError e2) {
                this.listener.onFail(str, -2, PhotoManager.this.context.getContext().getString(R.string.out_of_memory), e2);
                Log.e("out of memory when upload video", e2);
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, PhotoUploadResponse photoUploadResponse) throws Exception {
            Media media = photoUploadResponse.media;
            this.ret = media;
            this.isDone = true;
            this.listener.onFinish(this.uploadSpec.uri, media);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            this.isDone = true;
            this.listener.onFail(this.uploadSpec.uri, i, str, th);
        }

        @Override // com.narvii.util.http.PostProgressListener
        public void onPostProgress(int i, int i2) {
            this.listener.onProgress(this.uploadSpec.uri, i, i2);
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            if (isCancelled()) {
                return true;
            }
            if (isDone()) {
                return false;
            }
            ApiService apiService = (ApiService) PhotoManager.this.context.getService("api");
            this.isCanceled = true;
            apiService.abort(this.request);
            return true;
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.isCanceled;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.isDone;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Future
        public Media get() throws ExecutionException, InterruptedException {
            return this.ret;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Future
        public Media get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return this.ret;
        }
    }
}
