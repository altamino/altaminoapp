package com.narvii.photos;

import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.media3.common.MimeTypes;
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
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.commons.compress.archivers.zip.UnixStat;
import org.apache.http.entity.mime.MIME;
import qa.y;

/* JADX INFO: loaded from: classes4.dex */
public class PhotoManager {
    public static final String MEDIA_CROP_HEIGHT = "MEDIA-CROP-HEIGHT";
    public static final String MEDIA_CROP_WIDTH = "MEDIA-CROP-WIDTH";
    public static final String MEDIA_CROP_X = "MEDIA-CROP-X";
    public static final String MEDIA_CROP_Y = "MEDIA-CROP-Y";
    private final NVContext context;
    private final File filesDir;
    public int retryCount = 0;

    class VideoUploadTask extends ApiResponseProgressListener<PhotoUploadResponse> implements Future<Media> {
        private final ApiService api;
        private boolean isCanceled;
        private boolean isDone;
        private long length;
        VideoUploadListener listener;
        ApiRequest request;
        private Media ret;
        VideoUploadSpec uploadSpec;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Future
        public Media get() throws ExecutionException, InterruptedException {
            return this.ret;
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.isCanceled;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.isDone;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            this.isDone = true;
            this.listener.onFail(this.uploadSpec.uri, i10, str, th);
        }

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

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Future
        public Media get(long j6, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return this.ret;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, PhotoUploadResponse photoUploadResponse) throws Exception {
            Media media = photoUploadResponse.media;
            this.ret = media;
            this.isDone = true;
            this.listener.onFinish(this.uploadSpec.uri, media);
        }

        @Override // com.narvii.util.http.PostProgressListener
        public void onPostProgress(int i10, int i11) {
            this.listener.onProgress(this.uploadSpec.uri, i10, i11);
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
                int i10 = PhotoManager.this.retryCount;
                if (i10 != 0) {
                    builder.retry(i10);
                }
                ApiRequest apiRequestBuild = builder.build();
                this.request = apiRequestBuild;
                this.api.exec(apiRequestBuild, this);
            } catch (Exception e) {
                this.listener.onFail(str, -1, e.getMessage() == null ? e.toString() : e.getMessage(), e);
                Log.e("fail to upload video", e);
            } catch (OutOfMemoryError e2) {
                this.listener.onFail(str, -2, PhotoManager.this.context.getContext().getString(R.string.out_of_memory), e2);
                Log.e("out of memory when upload video", e2);
            }
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z6) {
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
    }

    public Bitmap createBitmapAtTargetSize(String str, String str2) throws Exception {
        return createBitmapAtTargetSize(str, str2, false);
    }

    @TargetApi(16)
    public List<String> importAllFromResult(File file, int i10, Intent intent) {
        if (i10 != -1 || intent == null) {
            return Collections.emptyList();
        }
        ArrayList<Uri> arrayList = new ArrayList();
        if (intent.getClipData() != null) {
            int itemCount = intent.getClipData().getItemCount();
            for (int i11 = 0; i11 < itemCount; i11++) {
                arrayList.add(intent.getClipData().getItemAt(i11).getUri());
            }
        }
        if (intent.getData() != null && !arrayList.contains(intent.getData())) {
            arrayList.add(0, intent.getData());
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (Uri uri : arrayList) {
            try {
                arrayList2.add(importPhoto(file, uri));
            } catch (Exception e) {
                Log.e("fail to import image to [" + file + "], " + uri, e);
            }
        }
        return arrayList2;
    }

    public String importFromCameraResult(File file, int i10, Intent intent) throws Throwable {
        if (i10 != -1) {
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

    public void upload(String str, PhotoUploadListener photoUploadListener) {
        upload(str, null, photoUploadListener);
    }

    public void writeUploadDataTo(String str, String str2, File file, String[] strArr) throws Exception {
        writeUploadDataTo(str, str2, file, strArr, false);
    }

    private File getCameraDir() {
        File externalFilesDir = this.context.getContext().getApplicationContext().getExternalFilesDir("Camera");
        externalFilesDir.mkdirs();
        return externalFilesDir;
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

    public Bitmap createBitmap(String str, int i10, int i11) throws Exception {
        Bitmap bitmapDecodeFile;
        BitmapFactory.Options options = new BitmapFactory.Options();
        File path = getPath(str);
        if (path == null) {
            return null;
        }
        if (i10 > 0 && i11 > 0) {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(path.getAbsolutePath(), options);
            options.inSampleSize = BitmapUtils.findBestSampleSize(options.outWidth, options.outHeight, i10, i11);
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

    public Bitmap createBitmapAtSize(String str, int i10, int i11) throws Exception {
        Bitmap bitmapDecodeFile;
        BitmapFactory.Options options = new BitmapFactory.Options();
        File path = getPath(str);
        if (path == null || i10 <= 0 || i11 <= 0) {
            return null;
        }
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path.getAbsolutePath(), options);
        options.inSampleSize = BitmapUtils.findBestSampleSize(options.outWidth, options.outHeight, i10, i11);
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
        Bitmap bitmapApplyOrientationAndSize = MediaStoreUtils.applyOrientationAndSize(bitmapDecodeFile, MediaStoreUtils.getRotation(path.getAbsolutePath()), i10, i11);
        if (bitmapApplyOrientationAndSize == bitmapDecodeFile) {
            return bitmapDecodeFile;
        }
        bitmapDecodeFile.recycle();
        return bitmapApplyOrientationAndSize;
    }

    public Bitmap createBitmapAtTargetSize(String str, String str2, boolean z6) throws Exception {
        int i10;
        int i11;
        if (isUHQ(str2) || z6) {
            i10 = 2048;
        } else {
            if (!NVImageView.TYPE_P2A_AVATAR.equals(str2)) {
                i11 = 1600;
                if (NVImageView.TYPE_POST_BACKGROUND.equals(str2) || NVImageView.TYPE_CHAT_BACKGROUND.equals(str2) || NVImageView.TYPE_LEADERBOARD_BACKGROUND_IMAGE.equals(str2) || NVImageView.TYPE_FULLSCREEN_BACKGROUND_IMAGE.equals(str2) || NVImageView.TYPE_COMMUNITY_LAUNCH_IMAGE.equals(str2)) {
                    i10 = 1600;
                } else {
                    i10 = 1024;
                }
                return createBitmapAtSize(str, i10, i11);
            }
            i10 = 2000;
        }
        i11 = i10;
        return createBitmapAtSize(str, i10, i11);
    }

    public Intent createPickerIntent(boolean z6) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        return intent;
    }

    public String getNewVideoName(File file) {
        Random random = new Random(System.currentTimeMillis());
        for (int i10 = 0; i10 < 256; i10++) {
            String str = Integer.toHexString((random.nextInt() & UnixStat.PERM_MASK) | 4096).substring(1) + "_v1";
            if (!new File(file, str + ".mp4").exists()) {
                return str;
            }
        }
        return UUID.randomUUID() + "_v1";
    }

    public File getPath(String str) {
        try {
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            if ("photo".equals(scheme) && "files".equals(host)) {
                return new File(this.filesDir, uri.getPath());
            }
            if (!"photo".equals(scheme) || !"absolute".equals(host)) {
                if ("file".equals(scheme)) {
                    return new File(new URI(str));
                }
                Log.e("malformed photo uri " + str);
                return null;
            }
            String path = uri.getPath();
            String str2 = File.separator;
            if (!path.startsWith(str2)) {
                path = str2 + path;
            }
            return new File(path);
        } catch (Exception e) {
            Log.e("malformed photo uri " + str, e);
            return null;
        }
    }

    public String getUploadedUrl(String str) {
        String stringFromFile;
        if (str.startsWith(y.HTTP) || str.startsWith("ytv://")) {
            return str;
        }
        File fileReplaceExtension = replaceExtension(getPath(str), "u");
        if (fileReplaceExtension == null || !fileReplaceExtension.exists() || (stringFromFile = Utils.readStringFromFile(fileReplaceExtension)) == null) {
            return null;
        }
        return stringFromFile.trim();
    }

    public String getUri(File file) {
        String absolutePath = this.filesDir.getAbsolutePath();
        String str = File.separator;
        if (!absolutePath.endsWith(str)) {
            absolutePath = absolutePath + str;
        }
        String absolutePath2 = file.getAbsolutePath();
        if (absolutePath2.startsWith(absolutePath)) {
            return Uri.withAppendedPath(Uri.parse("photo://files/"), absolutePath2.substring(absolutePath.length())).toString();
        }
        if (absolutePath2.startsWith(str)) {
            absolutePath2 = absolutePath2.substring(1);
        }
        return Uri.withAppendedPath(Uri.parse("photo://absolute/"), absolutePath2).toString();
    }

    public String getVideoCoverUrl(String str) {
        if (!str.endsWith("_v1.mp4")) {
            return null;
        }
        return str.substring(0, str.length() - 4) + ".jpg";
    }

    public boolean hasCamera() {
        return this.context.getContext().getPackageManager().hasSystemFeature("android.hardware.camera");
    }

    public boolean isPng(String str) {
        return str.toLowerCase(Locale.US).endsWith(".png");
    }

    public boolean isVideo(String str) {
        return str.startsWith("photo://") ? str.endsWith("_v1.mp4") : str.endsWith(".mp4");
    }

    public boolean isVideoCover(String str) {
        return str.startsWith("photo://") ? str.endsWith("_v1.jpg") : str.endsWith(".jpg");
    }

    public void upload(String str, String str2, PhotoUploadListener photoUploadListener) {
        upload(str, str2, false, photoUploadListener);
    }

    public Future<Media> uploadVideo(VideoUploadSpec videoUploadSpec, VideoUploadListener videoUploadListener) {
        if (videoUploadSpec == null) {
            return null;
        }
        VideoUploadTask videoUploadTask = new VideoUploadTask(videoUploadSpec, videoUploadListener);
        videoUploadTask.startUpload();
        return videoUploadTask;
    }

    public void writeUploadDataTo(String str, String str2, File file, String[] strArr, boolean z6) throws Exception {
        isUHQ(str2);
        writeUploadDataTo(str, str2, 85, file, strArr, false, z6);
    }

    public PhotoManager(NVContext nVContext) {
        this.context = nVContext;
        this.filesDir = nVContext.getContext().getFilesDir();
    }

    public static boolean isUHQ(String str) {
        if (!TextUtils.isEmpty(str) && !NVImageView.TYPE_SHARED_FOLDER_IMAGE.equals(str) && !NVImageView.TYPE_STORY_COVER.equals(str)) {
            return false;
        }
        return true;
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

    public String getNewName(File file) {
        return UUID.randomUUID().toString();
    }

    public Bitmap getThumbnail(String str) {
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
                    SafeFileOutputStream safeFileOutputStream;
                    Throwable th;
                    SafeFileOutputStream safeFileOutputStream2 = null;
                    try {
                        try {
                            safeFileOutputStream = new SafeFileOutputStream(fileReplaceExtension);
                            try {
                                BitmapUtils.compressJpeg(bitmapCreateBitmap, 60, safeFileOutputStream);
                                safeFileOutputStream.close(true);
                            } catch (Exception unused) {
                                safeFileOutputStream2 = safeFileOutputStream;
                                if (safeFileOutputStream2 == null) {
                                } else {
                                    safeFileOutputStream2.close(false);
                                }
                            } catch (Throwable th2) {
                                th = th2;
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
                    } catch (Throwable th3) {
                        safeFileOutputStream = null;
                        th = th3;
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

    public String importPhoto(File file, Uri uri) throws IOException {
        InputStream inputStreamOpenInputStream;
        boolean z6;
        boolean z10;
        byte b7;
        if ("file".equals(uri.getScheme())) {
            inputStreamOpenInputStream = new FileInputStream(new File(uri.getPath()));
        } else {
            inputStreamOpenInputStream = this.context.getContext().getContentResolver().openInputStream(uri);
        }
        byte[] bArr = new byte[4096];
        int i10 = inputStreamOpenInputStream.read(bArr);
        if (i10 >= 6 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70 && bArr[3] == 56 && (((b7 = bArr[4]) == 55 || b7 == 57) && bArr[5] == 97)) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (i10 >= 4 && bArr[0] == -119 && bArr[1] == 80 && bArr[2] == 78 && bArr[3] == 71) {
            z10 = true;
        } else {
            z10 = false;
        }
        String newName = getNewName(file);
        if (z6) {
            newName = newName + ".gif";
        } else if (z10) {
            newName = newName + ".png";
        }
        File file2 = new File(file, newName);
        SafeFileOutputStream safeFileOutputStream = new SafeFileOutputStream(file2);
        while (i10 != -1) {
            try {
                safeFileOutputStream.write(bArr, 0, i10);
                i10 = inputStreamOpenInputStream.read(bArr);
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

    public boolean isGif(String str) {
        return Utils.isGif(str);
    }

    public void remove(String str) {
        File path = getPath(str);
        if (path != null && path.isFile()) {
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
    }

    public void upload(String str, String str2, boolean z6, PhotoUploadListener photoUploadListener) {
        upload(str, str2, z6, photoUploadListener, new String[0]);
    }

    public void upload(String str, String str2, boolean z6, PhotoUploadListener photoUploadListener, String... strArr) {
        isUHQ(str2);
        upload(PhotoUploadSpec.builder(str).target(str2).quality(85).original(z6).headers(strArr).build(), photoUploadListener);
    }

    public void writeUploadDataTo(String str, String str2, int i10, File file, String[] strArr, boolean z6) throws Exception {
        writeUploadDataTo(str, str2, i10, file, strArr, z6, false);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0042 A[Catch: all -> 0x003f, TRY_LEAVE, TryCatch #1 {all -> 0x003f, blocks: (B:13:0x002b, B:15:0x0031, B:17:0x003a, B:20:0x0042), top: B:32:0x002b }] */
    public void writeUploadDataTo(String str, String str2, int i10, File file, String[] strArr, boolean z6, boolean z10) throws Exception {
        if (isGif(str)) {
            Utils.copyFile(getPath(str), file);
            if (strArr != null) {
                strArr[0] = "image/gif";
                return;
            }
            return;
        }
        Bitmap bitmapCreateBitmapAtTargetSize = createBitmapAtTargetSize(str, str2, z10);
        if (bitmapCreateBitmapAtTargetSize == null) {
            Utils.copyFile(getPath(str), file);
        } else {
            SafeFileOutputStream safeFileOutputStream = null;
            try {
                SafeFileOutputStream safeFileOutputStream2 = new SafeFileOutputStream(file);
                if (z6) {
                    try {
                        if (isPng(str)) {
                            bitmapCreateBitmapAtTargetSize.compress(Bitmap.CompressFormat.PNG, 100, safeFileOutputStream2);
                            if (strArr != null) {
                                strArr[0] = MimeTypes.IMAGE_PNG;
                            }
                        } else {
                            BitmapUtils.compressJpeg(bitmapCreateBitmapAtTargetSize, i10, safeFileOutputStream2);
                        }
                        safeFileOutputStream2.close(true);
                        bitmapCreateBitmapAtTargetSize.recycle();
                    } catch (Throwable th) {
                        th = th;
                        safeFileOutputStream = safeFileOutputStream2;
                        safeFileOutputStream.close(false);
                        bitmapCreateBitmapAtTargetSize.recycle();
                        throw th;
                    }
                } else {
                    BitmapUtils.compressJpeg(bitmapCreateBitmapAtTargetSize, i10, safeFileOutputStream2);
                    safeFileOutputStream2.close(true);
                    bitmapCreateBitmapAtTargetSize.recycle();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        if (strArr == null || strArr[0] != null) {
            return;
        }
        strArr[0] = "image/jpg";
    }

    public void upload(PhotoUploadSpec photoUploadSpec, final PhotoUploadListener photoUploadListener) {
        if (photoUploadSpec == null) {
            return;
        }
        final String str = photoUploadSpec.uri;
        String[] strArr = photoUploadSpec.headers;
        String str2 = photoUploadSpec.target;
        boolean z6 = photoUploadSpec.original;
        int i10 = photoUploadSpec.quality;
        boolean z10 = photoUploadSpec.keepPng;
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
            if (z6) {
                File path = getPath(str);
                builder.body(path);
                path.length();
                if (isGif(str)) {
                    builder.headers(MIME.CONTENT_TYPE, "image/gif");
                } else if (isPng(str)) {
                    builder.headers(MIME.CONTENT_TYPE, MimeTypes.IMAGE_PNG);
                } else {
                    builder.headers(MIME.CONTENT_TYPE, "image/jpg");
                }
            } else {
                File fileCreateTmpFile = Utils.createTmpFile();
                String[] strArr2 = new String[1];
                writeUploadDataTo(str, str2, i10, fileCreateTmpFile, strArr2, z10);
                builder.body(fileCreateTmpFile).deleteBodyAfterDone();
                builder.headers(MIME.CONTENT_TYPE, strArr2[0]);
                if (strArr2[0].startsWith("image/")) {
                    strArr2[0].substring(6);
                }
                fileCreateTmpFile.length();
            }
            builder.timeout(30000);
            int i11 = this.retryCount;
            if (i11 != 0) {
                builder.retry(i11);
            }
            ((ApiService) this.context.getService("api")).exec(builder.build(), new ApiResponseProgressListener<PhotoUploadResponse>(PhotoUploadResponse.class) { // from class: com.narvii.photos.PhotoManager.3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i12, List<NameValuePair> list, String str4, ApiResponse apiResponse, Throwable th) {
                    photoUploadListener.onFail(str, i12, str4, th);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, PhotoUploadResponse photoUploadResponse) throws Exception {
                    PhotoManager photoManager = PhotoManager.this;
                    Utils.writeToFile(photoManager.replaceExtension(photoManager.getPath(str), "u"), photoUploadResponse.mediaValue);
                    photoUploadListener.onFinish(str, photoUploadResponse.mediaValue);
                    String str4 = photoUploadResponse.mediaValue;
                    if (str4 == null || !str4.startsWith(y.HTTP)) {
                        Log.e("malformed uploaded image url " + photoUploadResponse.mediaValue);
                    }
                }

                @Override // com.narvii.util.http.PostProgressListener
                public void onPostProgress(int i12, int i13) {
                    photoUploadListener.onProgress(str, i12, i13);
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

    public void upload(final String str, Bitmap bitmap, String str2, boolean z6, final PhotoUploadListener photoUploadListener) {
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
                if (z6) {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 85, fileOutputStream);
                    str4 = "png";
                } else {
                    BitmapUtils.compressJpeg(bitmap, 85, fileOutputStream);
                }
                fileOutputStream.close();
                builder.body(fileCreateTmpFile);
                builder.deleteBodyAfterDone();
                builder.headers(MIME.CONTENT_TYPE, "image/" + str4);
                builder.timeout(30000);
                int i10 = this.retryCount;
                if (i10 != 0) {
                    builder.retry(i10);
                }
                ApiService apiService = (ApiService) this.context.getService("api");
                fileCreateTmpFile.length();
                apiService.exec(builder.build(), new ApiResponseProgressListener<PhotoUploadResponse>(PhotoUploadResponse.class) { // from class: com.narvii.photos.PhotoManager.5
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str5, ApiResponse apiResponse, Throwable th) {
                        photoUploadListener.onFail(str, i11, str5, th);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, PhotoUploadResponse photoUploadResponse) throws Exception {
                        String str5 = str;
                        if (str5 != null) {
                            PhotoManager photoManager = PhotoManager.this;
                            Utils.writeToFile(photoManager.replaceExtension(photoManager.getPath(str5), "u"), photoUploadResponse.mediaValue);
                        }
                        photoUploadListener.onFinish(str, photoUploadResponse.mediaValue);
                        String str6 = photoUploadResponse.mediaValue;
                        if (str6 == null || !str6.startsWith(y.HTTP)) {
                            Log.e("malformed uploaded image url " + photoUploadResponse.mediaValue);
                        }
                    }

                    @Override // com.narvii.util.http.PostProgressListener
                    public void onPostProgress(int i11, int i12) {
                        photoUploadListener.onProgress(str, i11, i12);
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
}
