package com.narvii.util.image;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.ImageView;
import com.android.volley.Cache;
import com.android.volley.RequestQueue;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import java.io.File;
import java.io.InputStream;
import java.util.Locale;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class NVImageLoader extends ImageLoader {
    public static final int MAX_SIZE = 2048;
    ImageLoader.ImageCache cache;
    ContentResolver contentResolver;
    NVContext context;
    int memoryClass;
    boolean outofmemory;
    int photoThumbnailSize;
    RequestQueue queue;
    private final LinkedBlockingQueue<RetrievePhoto> retrieveQueue;
    private Worker worker;

    class RetrievePhoto extends ImageLoader.ImageContainer implements Runnable {
        Bitmap bmp;
        String cacheKey;
        boolean canceled;
        boolean done;
        int height;
        ImageLoader.ImageListener listener;
        String url;
        int width;

        @Override // com.android.volley.toolbox.ImageLoader.ImageContainer
        public void cancelRequest() {
            this.canceled = true;
        }

        public RetrievePhoto(String str, ImageLoader.ImageListener imageListener, int i10, int i11, String str2) {
            super(null, str, null, imageListener);
            this.url = str;
            this.listener = imageListener;
            this.width = i10;
            this.height = i11;
            this.cacheKey = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.canceled) {
                return;
            }
            if (!this.done) {
                this.bmp = NVImageLoader.this.loadLocalBitmap(this.url, this.width, this.height);
                this.done = true;
                Utils.post(this);
                return;
            }
            Bitmap bitmap = this.bmp;
            if (bitmap == null) {
                this.listener.onErrorResponse(new VolleyError());
                return;
            }
            NVImageLoader.this.cache.putBitmap(this.cacheKey, bitmap);
            ImageLoader.ImageListener imageListener = this.listener;
            imageListener.onResponse(new ImageLoader.ImageContainer(this.bmp, this.url, null, imageListener), false);
        }
    }

    private class Worker extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            RetrievePhoto retrievePhoto;
            while (true) {
                try {
                    retrievePhoto = (RetrievePhoto) NVImageLoader.this.retrieveQueue.poll(500L, TimeUnit.MILLISECONDS);
                } catch (Exception unused) {
                    retrievePhoto = null;
                }
                if (retrievePhoto == null) {
                    synchronized (NVImageLoader.this) {
                        try {
                            if (NVImageLoader.this.retrieveQueue.isEmpty()) {
                                break;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } else {
                    retrievePhoto.run();
                }
            }
            if (NVImageLoader.this.worker == this) {
                NVImageLoader.this.worker = null;
            }
        }

        public Worker() {
            super("imagelocal");
        }
    }

    private Bitmap loadFromRes(String str) {
        return loadFromRes(str, false);
    }

    private void startWorker() {
        synchronized (this) {
            try {
                if (this.worker == null) {
                    Worker worker = new Worker();
                    this.worker = worker;
                    worker.start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.android.volley.toolbox.ImageLoader
    protected String getCacheKey(String str, int i10, int i11, ImageView.ScaleType scaleType) {
        int iIndexOf = str.indexOf(63);
        StringBuilder sb = new StringBuilder(str.length() + 12);
        sb.append("#W");
        sb.append(i10);
        sb.append("#H");
        sb.append(i11);
        sb.append("#S");
        sb.append(scaleType.ordinal());
        if (iIndexOf > 0) {
            str = str.substring(0, iIndexOf);
        }
        sb.append(str);
        return sb.toString();
    }

    public ImageLoader.ImageCache getImageCache() {
        return this.cache;
    }

    public RequestQueue getRequestQueue() {
        return this.queue;
    }

    public boolean isUrlCached(String str) {
        if (str == null) {
            return false;
        }
        if (getCachedBitmap(str) != null) {
            return true;
        }
        try {
            RequestQueue requestQueue = this.queue;
            return (requestQueue == null || requestQueue.getCache() == null || this.queue.getCache().get(str) == null) ? false : true;
        } catch (Exception unused) {
        }
    }

    private Bitmap loadFromAssets(String str, int i10, int i11) throws Exception {
        InputStream inputStreamOpen = this.context.getContext().getAssets().open(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStreamOpen, null, options);
        inputStreamOpen.close();
        options.inSampleSize = BitmapUtils.findBestSampleSize(options.outWidth, options.outHeight, i10, i11);
        options.inJustDecodeBounds = false;
        options.inPreferQualityOverSpeed = true;
        InputStream inputStreamOpen2 = this.context.getContext().getAssets().open(str);
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen2, null, options);
        inputStreamOpen2.close();
        return bitmapDecodeStream;
    }

    private Bitmap loadFromFile(String str, int i10, int i11) throws Exception {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = BitmapUtils.findBestSampleSize(options.outWidth, options.outHeight, i10, i11);
        options.inJustDecodeBounds = false;
        options.inPreferQualityOverSpeed = true;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        try {
            Bitmap bitmapApplyOrientation = MediaStoreUtils.applyOrientation(bitmapDecodeFile, MediaStoreUtils.getRotation(str));
            if (bitmapApplyOrientation == bitmapDecodeFile) {
                return bitmapDecodeFile;
            }
            bitmapDecodeFile.recycle();
            return bitmapApplyOrientation;
        } catch (Throwable unused) {
            return bitmapDecodeFile;
        }
    }

    private Bitmap loadFromRes(String str, boolean z6) {
        Context context = this.context.getContext();
        if (str.equals("drawer")) {
            Drawable drawableDrawerImage = ((ConfigService) this.context.getService("config")).getTheme().drawerImage();
            if (drawableDrawerImage instanceof BitmapDrawable) {
                return ((BitmapDrawable) drawableDrawerImage).getBitmap();
            }
        }
        try {
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier(str, z6 ? "mipmap" : "drawable", context.getPackageName());
            if (identifier != 0) {
                return ((BitmapDrawable) resources.getDrawableForDensity(identifier, 480)).getBitmap();
            }
        } catch (Exception unused) {
        }
        try {
            return ((BitmapDrawable) context.getPackageManager().getApplicationIcon(context.getPackageName())).getBitmap();
        } catch (Exception unused2) {
            return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        }
    }

    public Bitmap getCachedBitmap(String str) {
        return this.cache.getBitmap(getCacheKey(str, 2048, 2048));
    }

    public Bitmap loadDiskCachedBitmap(String str) {
        try {
            Cache.Entry entry = this.queue.getCache().get(str);
            if (entry == null) {
                return null;
            }
            byte[] bArr = entry.data;
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            return null;
        }
    }

    Bitmap loadLocalBitmap(String str, int i10, int i11) {
        File imagePath;
        int iIndexOf = str.indexOf("://");
        if (iIndexOf < 0) {
            return null;
        }
        String lowerCase = str.substring(0, iIndexOf).toLowerCase(Locale.US);
        if ("photo".equals(lowerCase)) {
            PhotoManager photoManager = (PhotoManager) this.context.getService("photo");
            int i12 = this.photoThumbnailSize;
            if (i10 <= i12 && i11 <= i12) {
                return photoManager.getThumbnail(str);
            }
            try {
                return photoManager.createBitmap(str, i10, i11);
            } catch (Exception unused) {
            } catch (OutOfMemoryError e) {
                this.outofmemory = true;
                Log.w("OutOfMemory when open image");
                OomHelper.test(e);
            }
        } else {
            int i13 = 3;
            if ("assets".equals(lowerCase)) {
                try {
                    return loadFromAssets(str.substring(iIndexOf + 3), i10, i11);
                } catch (Exception e2) {
                    Log.w("fail to load image from assets " + str, e2);
                } catch (OutOfMemoryError e6) {
                    this.outofmemory = true;
                    Log.w("OutOfMemory when open image");
                    OomHelper.test(e6);
                }
            } else if ("file".equals(lowerCase)) {
                try {
                    return loadFromFile(Uri.parse(str).getPath(), i10, i11);
                } catch (Exception e7) {
                    Log.w("fail to load image from " + str, e7);
                } catch (OutOfMemoryError e10) {
                    this.outofmemory = true;
                    Log.w("OutOfMemory when open image");
                    OomHelper.test(e10);
                }
            } else if ("mediastore".equals(lowerCase)) {
                try {
                    long imageId = MediaStoreUtils.getImageId(str);
                    if (this.memoryClass > 32 && !this.outofmemory && (i10 > 128 || i11 > 128)) {
                        i13 = 1;
                    }
                    boolean zIsVideo = MediaStoreUtils.isVideo(str);
                    Bitmap thumbnailFromMediaStore = MediaStoreUtils.getThumbnailFromMediaStore(this.contentResolver, imageId, i13, zIsVideo);
                    return (thumbnailFromMediaStore != null || zIsVideo || (imagePath = MediaStoreUtils.getImagePath(str)) == null) ? thumbnailFromMediaStore : loadFromFile(imagePath.getAbsolutePath(), i10, i11);
                } catch (Exception e11) {
                    Log.w("fail to load image from " + str, e11);
                } catch (OutOfMemoryError e12) {
                    this.outofmemory = true;
                    Log.w("OutOfMemory when open image");
                    OomHelper.test(e12);
                }
            } else {
                Log.w("load bitmap from unknown scheme " + lowerCase);
            }
        }
        return null;
    }

    public NVImageLoader(NVContext nVContext, RequestQueue requestQueue, ImageLoader.ImageCache imageCache) {
        super(requestQueue, imageCache);
        this.retrieveQueue = new LinkedBlockingQueue<>();
        this.context = nVContext;
        this.queue = requestQueue;
        this.cache = imageCache;
        this.contentResolver = nVContext.getContext().getContentResolver();
        int memoryClass = ((ActivityManager) nVContext.getContext().getSystemService("activity")).getMemoryClass();
        this.memoryClass = memoryClass;
        if (memoryClass <= 32) {
            Log.w("running on low memory class: " + this.memoryClass);
        }
        this.photoThumbnailSize = nVContext.getContext().getResources().getDimensionPixelSize(R.dimen.thumb_default_size);
    }

    @Override // com.android.volley.toolbox.ImageLoader
    public ImageLoader.ImageContainer get(String str, ImageLoader.ImageListener imageListener, int i10, int i11) {
        int i12;
        int i13;
        if (isLocal(str)) {
            if (i10 == 0) {
                i12 = 2048;
            } else {
                i12 = i10;
            }
            if (i11 == 0) {
                i13 = 2048;
            } else {
                i13 = i11;
            }
            if (str.startsWith("res://")) {
                ImageLoader.ImageContainer imageContainer = new ImageLoader.ImageContainer(loadFromRes(str.substring(6)), str, null, null);
                imageListener.onResponse(imageContainer, true);
                return imageContainer;
            }
            if (str.startsWith("mipmap://")) {
                ImageLoader.ImageContainer imageContainer2 = new ImageLoader.ImageContainer(loadFromRes(str.substring(9)), str, null, null);
                imageListener.onResponse(imageContainer2, true);
                return imageContainer2;
            }
            String cacheKey = getCacheKey(str, i12, i13);
            Bitmap bitmap = this.cache.getBitmap(cacheKey);
            if (bitmap != null) {
                ImageLoader.ImageContainer imageContainer3 = new ImageLoader.ImageContainer(bitmap, str, null, null);
                imageListener.onResponse(imageContainer3, true);
                return imageContainer3;
            }
            RetrievePhoto retrievePhoto = new RetrievePhoto(str, imageListener, i12, i13, cacheKey);
            this.retrieveQueue.add(retrievePhoto);
            startWorker();
            return retrievePhoto;
        }
        return super.get(str, imageListener, 2048, 2048);
    }

    public Bitmap getDiskCachedBitmap(String str) {
        Bitmap cachedBitmap = getCachedBitmap(str);
        if (cachedBitmap != null) {
            return cachedBitmap;
        }
        try {
            Cache.Entry entry = this.queue.getCache().get(str);
            if (entry != null) {
                byte[] bArr = entry.data;
                cachedBitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                this.cache.putBitmap(getCacheKey(str, 2048, 2048), cachedBitmap);
                return cachedBitmap;
            }
        } catch (Exception unused) {
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
        }
        return cachedBitmap;
    }

    public Bitmap getLocal(String str, int i10, int i11, boolean z6) {
        int iIndexOf;
        Bitmap bitmap;
        String cacheKey = null;
        if (!isLocal(str) || (iIndexOf = str.indexOf("://")) < 0) {
            return null;
        }
        String lowerCase = str.substring(0, iIndexOf).toLowerCase(Locale.US);
        String strSubstring = str.substring(iIndexOf + 3);
        if ("res".equals(lowerCase)) {
            return loadFromRes(strSubstring);
        }
        if ("mipmap".equals(lowerCase)) {
            return loadFromRes(strSubstring, true);
        }
        if (!z6 && (bitmap = this.cache.getBitmap((cacheKey = getCacheKey(str, i10, i11)))) != null) {
            return bitmap;
        }
        Bitmap bitmapLoadLocalBitmap = loadLocalBitmap(str, i10, i11);
        if (!z6 && bitmapLoadLocalBitmap != null) {
            this.cache.putBitmap(cacheKey, bitmapLoadLocalBitmap);
        }
        return bitmapLoadLocalBitmap;
    }

    public boolean isLocal(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        if (!lowerCase.startsWith("res://") && !lowerCase.startsWith("file://") && !lowerCase.startsWith("photo://") && !lowerCase.startsWith("assets://") && !lowerCase.startsWith("mediastore://") && !lowerCase.startsWith("mipmap://")) {
            return false;
        }
        return true;
    }

    private String getCacheKey(String str, int i10, int i11) {
        return getCacheKey(str, i10, i11, ImageView.ScaleType.CENTER_INSIDE);
    }
}
