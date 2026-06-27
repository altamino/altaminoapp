package com.narvii.link.snippet;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.link.ILoadTrackView;
import com.narvii.link.LoadFinishListener;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public abstract class LinkSnippet {
    public static final int MAX_HEIGHT = 1024;
    public static final int MAX_WIDTH = 1024;
    public static final int OUTPUT_DENSITY = 3;
    boolean bitmapGot;
    Callback<Media> callback;
    protected Context context;
    NVContext nvContext;
    int standardWidth;
    View view;

    protected int getBackgroundColor() {
        return -1;
    }

    protected abstract void getSnippetBitmap(Callback<Bitmap> callback);

    protected abstract View getView();

    protected boolean useOtherCommunityFrame() {
        return true;
    }

    protected int widthDp() {
        return 269;
    }

    public Bitmap getViewBitmap() {
        View view = this.view;
        if (view == null || view.getMeasuredWidth() == 0) {
            return null;
        }
        int iWidthDp = widthDp() * 3;
        float f = iWidthDp;
        int measuredHeight = (int) (((this.view.getMeasuredHeight() * 1.0f) / this.view.getMeasuredWidth()) * f);
        if (iWidthDp > 1024 || measuredHeight > 1024) {
            float f2 = measuredHeight;
            float fMin = Math.min(1.0f, Math.min(1024.0f / f, 1024.0f / f2));
            measuredHeight = (int) (f2 * fMin);
            iWidthDp = (int) (f * fMin);
        }
        float measuredWidth = (iWidthDp * 1.0f) / this.view.getMeasuredWidth();
        this.view.setScaleX(measuredWidth);
        this.view.setScaleY(measuredWidth);
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iWidthDp, measuredHeight, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.eraseColor(getBackgroundColor());
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.scale(measuredWidth, measuredWidth);
            this.view.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Throwable th) {
            Log.e("linkSnippet", th);
            return null;
        }
    }

    public void returnSnippetMediaImmediately() {
        Callback<Media> callback;
        if (this.callback == null || this.bitmapGot) {
            return;
        }
        this.bitmapGot = true;
        Bitmap viewBitmap = getViewBitmap();
        if (viewBitmap == null && (callback = this.callback) != null) {
            callback.call(null);
        } else {
            saveSnippetBitmap(viewBitmap, this.callback);
        }
    }

    public LinkSnippet(NVContext nVContext) {
        this.nvContext = nVContext;
        this.context = nVContext.getContext();
        this.standardWidth = Utils.dpToPxInt(this.context, 269.0f);
    }

    private int getWidthMeasureSpec() {
        return View.MeasureSpec.makeMeasureSpec(Utils.dpToPxInt(this.context, widthDp()), 1073741824);
    }

    protected int getHeightMeasureSpec() {
        return View.MeasureSpec.makeMeasureSpec(10000, Integer.MIN_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveSnippetBitmap(final Bitmap bitmap, final Callback<Media> callback) {
        if (callback != null) {
            if (bitmap == null) {
                callback.call(null);
            }
            AsyncTask.execute(new Runnable() { // from class: com.narvii.link.snippet.LinkSnippet.1
                @Override // java.lang.Runnable
                public void run() {
                    final File fileCreateTmpFile = Utils.createTmpFile(true, ".png");
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTmpFile);
                        bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                        fileOutputStream.close();
                        Log.d("linkSnippet", "image compress spent " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
                        Utils.post(new Runnable() { // from class: com.narvii.link.snippet.LinkSnippet.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                String uri = ((PhotoManager) LinkSnippet.this.nvContext.getService("photo")).getUri(fileCreateTmpFile);
                                Media media = new Media();
                                media.type = 100;
                                media.url = uri;
                                Callback callback2 = callback;
                                if (callback2 != null) {
                                    callback2.call(media);
                                }
                            }
                        });
                    } catch (Throwable unused) {
                        Log.e("linkSnippet", "compress jpeg fail");
                        Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.call(null);
                        }
                    }
                }
            });
        }
    }

    public final void getSnippetMedia(final Callback<Media> callback) {
        this.callback = callback;
        getSnippetBitmap(new Callback<Bitmap>() { // from class: com.narvii.link.snippet.LinkSnippet.2
            @Override // com.narvii.util.Callback
            public void call(Bitmap bitmap) {
                if (bitmap != null) {
                    LinkSnippet.this.saveSnippetBitmap(bitmap, callback);
                    return;
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void getBitmapByObject(final Callback<Bitmap> callback) throws NoSuchFieldException {
        View view = getView();
        if (view == 0) {
            if (callback != null) {
                callback.call(null);
                return;
            }
            return;
        }
        this.view = view;
        if (view instanceof ILoadTrackView) {
            ((ILoadTrackView) view).setLoadFinishListener(new LoadFinishListener() { // from class: com.narvii.link.snippet.LinkSnippet.3
                @Override // com.narvii.link.LoadFinishListener
                public void onLoadFinished() {
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.link.snippet.LinkSnippet.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            LinkSnippet linkSnippet = LinkSnippet.this;
                            if (linkSnippet.bitmapGot) {
                                return;
                            }
                            linkSnippet.bitmapGot = true;
                            Bitmap viewBitmap = linkSnippet.getViewBitmap();
                            Callback callback2 = callback;
                            if (callback2 != null) {
                                callback2.call(viewBitmap);
                            }
                        }
                    }, 32L);
                }
            });
        }
        if (NVApplication.DEBUG && (view instanceof ViewGroup)) {
            checkSingleLine((ViewGroup) view);
        }
        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        if (Build.VERSION.SDK_INT >= 17) {
            view.setLayoutDirection(Utils.isRtl() ? 1 : 0);
        }
        view.measure(getWidthMeasureSpec(), getHeightMeasureSpec());
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    private void checkSingleLine(ViewGroup viewGroup) throws NoSuchFieldException {
        if (viewGroup == null) {
            return;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                checkSingleLine((ViewGroup) childAt);
            } else if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                try {
                    Field declaredField = TextView.class.getDeclaredField("mSingleLine");
                    declaredField.setAccessible(true);
                    if (declaredField.getBoolean(textView)) {
                        Log.e("linkSnippet", "TextView use singleLine true may cause arabic not be shown,report it to Jason");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
