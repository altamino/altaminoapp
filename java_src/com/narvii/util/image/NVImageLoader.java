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
import android.os.Build;
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
import com.tonyodev.fetch.FetchService;
import java.io.File;
import java.io.InputStream;
import java.util.Locale;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
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

    public NVImageLoader(NVContext nVContext, RequestQueue requestQueue, ImageLoader.ImageCache imageCache) {
        super(requestQueue, imageCache);
        this.retrieveQueue = new LinkedBlockingQueue<>();
        this.context = nVContext;
        this.queue = requestQueue;
        this.cache = imageCache;
        this.contentResolver = nVContext.getContext().getContentResolver();
        this.memoryClass = ((ActivityManager) nVContext.getContext().getSystemService("activity")).getMemoryClass();
        if (this.memoryClass <= 32) {
            Log.w("running on low memory class: " + this.memoryClass);
        }
        this.photoThumbnailSize = nVContext.getContext().getResources().getDimensionPixelSize(R.dimen.thumb_default_size);
    }

    public RequestQueue getRequestQueue() {
        return this.queue;
    }

    public ImageLoader.ImageCache getImageCache() {
        return this.cache;
    }

    @Override // com.android.volley.toolbox.ImageLoader
    public ImageLoader.ImageContainer get(String str, ImageLoader.ImageListener imageListener, int i, int i2) {
        if (isLocal(str)) {
            int i3 = i == 0 ? 2048 : i;
            int i4 = i2 == 0 ? 2048 : i2;
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
            String cacheKey = getCacheKey(str, i3, i4);
            Bitmap bitmap = this.cache.getBitmap(cacheKey);
            if (bitmap != null) {
                ImageLoader.ImageContainer imageContainer3 = new ImageLoader.ImageContainer(bitmap, str, null, null);
                imageListener.onResponse(imageContainer3, true);
                return imageContainer3;
            }
            RetrievePhoto retrievePhoto = new RetrievePhoto(str, imageListener, i3, i4, cacheKey);
            this.retrieveQueue.add(retrievePhoto);
            startWorker();
            return retrievePhoto;
        }
        return super.get(str, imageListener, 2048, 2048);
    }

    public boolean isLocal(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        return lowerCase.startsWith("res://") || lowerCase.startsWith("file://") || lowerCase.startsWith("photo://") || lowerCase.startsWith("assets://") || lowerCase.startsWith("mediastore://") || lowerCase.startsWith("mipmap://");
    }

    public Bitmap getLocal(String str, int i, int i2, boolean z) {
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
        if (!z && (bitmap = this.cache.getBitmap((cacheKey = getCacheKey(str, i, i2)))) != null) {
            return bitmap;
        }
        Bitmap bitmapLoadLocalBitmap = loadLocalBitmap(str, i, i2);
        if (!z && bitmapLoadLocalBitmap != null) {
            this.cache.putBitmap(cacheKey, bitmapLoadLocalBitmap);
        }
        return bitmapLoadLocalBitmap;
    }

    Bitmap loadLocalBitmap(String str, int i, int i2) {
        File imagePath;
        int iIndexOf = str.indexOf("://");
        if (iIndexOf < 0) {
            return null;
        }
        String lowerCase = str.substring(0, iIndexOf).toLowerCase(Locale.US);
        if ("photo".equals(lowerCase)) {
            PhotoManager photoManager = (PhotoManager) this.context.getService("photo");
            int i3 = this.photoThumbnailSize;
            if (i <= i3 && i2 <= i3) {
                return photoManager.getThumbnail(str);
            }
            try {
                return photoManager.createBitmap(str, i, i2);
            } catch (Exception unused) {
            } catch (OutOfMemoryError e) {
                this.outofmemory = true;
                Log.w("OutOfMemory when open image");
                OomHelper.test(e);
            }
        } else {
            int i4 = 3;
            if ("assets".equals(lowerCase)) {
                try {
                    return loadFromAssets(str.substring(iIndexOf + 3), i, i2);
                } catch (Exception e2) {
                    Log.w("fail to load image from assets " + str, e2);
                } catch (OutOfMemoryError e3) {
                    this.outofmemory = true;
                    Log.w("OutOfMemory when open image");
                    OomHelper.test(e3);
                }
            } else if ("file".equals(lowerCase)) {
                try {
                    return loadFromFile(Uri.parse(str).getPath(), i, i2);
                } catch (Exception e4) {
                    Log.w("fail to load image from " + str, e4);
                } catch (OutOfMemoryError e5) {
                    this.outofmemory = true;
                    Log.w("OutOfMemory when open image");
                    OomHelper.test(e5);
                }
            } else if ("mediastore".equals(lowerCase)) {
                try {
                    long imageId = MediaStoreUtils.getImageId(str);
                    if (this.memoryClass > 32 && !this.outofmemory && (i > 128 || i2 > 128)) {
                        i4 = 1;
                    }
                    boolean zIsVideo = MediaStoreUtils.isVideo(str);
                    Bitmap thumbnailFromMediaStore = MediaStoreUtils.getThumbnailFromMediaStore(this.contentResolver, imageId, i4, zIsVideo);
                    return (thumbnailFromMediaStore != null || zIsVideo || (imagePath = MediaStoreUtils.getImagePath(str)) == null) ? thumbnailFromMediaStore : loadFromFile(imagePath.getAbsolutePath(), i, i2);
                } catch (Exception e6) {
                    Log.w("fail to load image from " + str, e6);
                } catch (OutOfMemoryError e7) {
                    this.outofmemory = true;
                    Log.w("OutOfMemory when open image");
                    OomHelper.test(e7);
                }
            } else {
                Log.w("load bitmap from unknown scheme " + lowerCase);
            }
        }
        return null;
    }

    private Bitmap loadFromRes(String str) {
        return loadFromRes(str, false);
    }

    private Bitmap loadFromRes(String str, boolean z) {
        Context context = this.context.getContext();
        if (str.equals("drawer")) {
            Drawable drawableDrawerImage = ((ConfigService) this.context.getService("config")).getTheme().drawerImage();
            if (drawableDrawerImage instanceof BitmapDrawable) {
                return ((BitmapDrawable) drawableDrawerImage).getBitmap();
            }
        }
        try {
            if (Build.VERSION.SDK_INT >= 15) {
                Resources resources = context.getResources();
                int identifier = resources.getIdentifier(str, z ? "mipmap" : "drawable", context.getPackageName());
                if (identifier != 0) {
                    return ((BitmapDrawable) resources.getDrawableForDensity(identifier, FetchService.QUERY_SINGLE)).getBitmap();
                }
            }
        } catch (Exception unused) {
        }
        try {
            return ((BitmapDrawable) context.getPackageManager().getApplicationIcon(context.getPackageName())).getBitmap();
        } catch (Exception unused2) {
            return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        }
    }

    private Bitmap loadFromFile(String str, int i, int i2) throws Exception {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = BitmapUtils.findBestSampleSize(options.outWidth, options.outHeight, i, i2);
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

    private Bitmap loadFromAssets(String str, int i, int i2) throws Exception {
        InputStream inputStreamOpen = this.context.getContext().getAssets().open(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStreamOpen, null, options);
        inputStreamOpen.close();
        options.inSampleSize = BitmapUtils.findBestSampleSize(options.outWidth, options.outHeight, i, i2);
        options.inJustDecodeBounds = false;
        options.inPreferQualityOverSpeed = true;
        InputStream inputStreamOpen2 = this.context.getContext().getAssets().open(str);
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen2, null, options);
        inputStreamOpen2.close();
        return bitmapDecodeStream;
    }

    @Override // com.android.volley.toolbox.ImageLoader
    protected String getCacheKey(String str, int i, int i2, ImageView.ScaleType scaleType) {
        int iIndexOf = str.indexOf(63);
        StringBuilder sb = new StringBuilder(str.length() + 12);
        sb.append("#W");
        sb.append(i);
        sb.append("#H");
        sb.append(i2);
        sb.append("#S");
        sb.append(scaleType.ordinal());
        if (iIndexOf > 0) {
            str = str.substring(0, iIndexOf);
        }
        sb.append(str);
        return sb.toString();
    }

    private String getCacheKey(String str, int i, int i2) {
        return getCacheKey(str, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    public Bitmap getCachedBitmap(String str) {
        return this.cache.getBitmap(getCacheKey(str, 2048, 2048));
    }

    public boolean isUrlCached(String str) {
        if (str == null) {
            return false;
        }
        if (getCachedBitmap(str) != null) {
            return true;
        }
        try {
            if (this.queue != null && this.queue.getCache() != null) {
                if (this.queue.getCache().get(str) != null) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public Bitmap getDiskCachedBitmap(String str) {
        Bitmap cachedBitmap = getCachedBitmap(str);
        if (cachedBitmap != null) {
            return cachedBitmap;
        }
        try {
            Cache.Entry entry = this.queue.getCache().get(str);
            if (entry != null) {
                cachedBitmap = BitmapFactory.decodeByteArray(entry.data, 0, entry.data.length);
                this.cache.putBitmap(getCacheKey(str, 2048, 2048), cachedBitmap);
                return cachedBitmap;
            }
        } catch (Exception unused) {
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
        }
        return cachedBitmap;
    }

    public Bitmap loadDiskCachedBitmap(String str) {
        try {
            Cache.Entry entry = this.queue.getCache().get(str);
            if (entry != null) {
                return BitmapFactory.decodeByteArray(entry.data, 0, entry.data.length);
            }
            return null;
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            return null;
        }
    }

    private void startWorker() {
        synchronized (this) {
            if (this.worker == null) {
                this.worker = new Worker();
                this.worker.start();
            }
        }
    }

    /* loaded from: classes3.dex */
    class RetrievePhoto extends ImageLoader.ImageContainer implements Runnable {
        Bitmap bmp;
        String cacheKey;
        boolean canceled;
        boolean done;
        int height;
        ImageLoader.ImageListener listener;
        String url;
        int width;

        public RetrievePhoto(String str, ImageLoader.ImageListener imageListener, int i, int i2, String str2) {
            super(null, str, null, imageListener);
            this.url = str;
            this.listener = imageListener;
            this.width = i;
            this.height = i2;
            this.cacheKey = str2;
        }

        @Override // com.android.volley.toolbox.ImageLoader.ImageContainer
        public void cancelRequest() {
            this.canceled = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.canceled) {
                return;
            }
            if (this.done) {
                Bitmap bitmap = this.bmp;
                if (bitmap == null) {
                    this.listener.onErrorResponse(new VolleyError());
                    return;
                }
                NVImageLoader.this.cache.putBitmap(this.cacheKey, bitmap);
                ImageLoader.ImageListener imageListener = this.listener;
                imageListener.onResponse(new ImageLoader.ImageContainer(this.bmp, this.url, null, imageListener), false);
                return;
            }
            this.bmp = NVImageLoader.this.loadLocalBitmap(this.url, this.width, this.height);
            this.done = true;
            Utils.post(this);
        }
    }

    /* loaded from: classes3.dex */
    private class Worker extends Thread {
        public Worker() {
            super("imagelocal");
        }

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
                        if (NVImageLoader.this.retrieveQueue.isEmpty()) {
                            break;
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
    }
}
