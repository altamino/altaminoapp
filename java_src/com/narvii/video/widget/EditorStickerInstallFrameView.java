package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.asset.DownloadStatusInfo;
import com.narvii.media.giphy.GiphyItem;
import com.narvii.media.giphy.GiphyStickerService;
import com.narvii.mediaeditor.R;
import com.narvii.model.Sticker;
import com.narvii.sticker.StickerCacheService;
import com.narvii.sticker.StickerFileDownloadListener;
import com.narvii.util.Utils;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.VideoManager;
import java.io.File;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EditorStickerInstallFrameView.kt */
/* loaded from: classes3.dex */
public final class EditorStickerInstallFrameView extends View implements StickerFileDownloadListener, VideoManager.IInstallStickerCallback, GiphyStickerService.GiphyStickerDownloadListener {
    private HashMap _$_findViewCache;
    private final Matrix bitmapMatrix;
    private final Paint bitmapPaint;
    private final Paint borderPaint;
    private final RectF borderRect;
    private final float borderWidth;
    private GiphyItem giphyItem;
    private final Bitmap iconInstallBitmap;
    private final int iconSize;
    private final Bitmap iconWorkingBitmap;
    private final int padding;
    private final Handler rotatingHandler;
    private final Runnable rotatingRunnable;
    private Sticker sticker;
    private float stickerLoadingIconAngle;
    private String stickerLocalPath;
    private boolean stickerSelected;
    private int stickerStatus;
    private boolean trial;
    private final VideoManager videoManager;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstallStart(StickerInfoPack stickerInfoPack) {
        Intrinsics.checkParameterIsNotNull(stickerInfoPack, "stickerInfoPack");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditorStickerInstallFrameView(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.borderWidth = getResources().getDimensionPixelSize(R.dimen.sticker_install_frame_border_width);
        this.iconSize = getResources().getDimensionPixelSize(R.dimen.sticker_install_frame_icon_size);
        this.padding = getResources().getDimensionPixelSize(R.dimen.sticker_install_frame_padding_size);
        this.iconInstallBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_editor_sticker_install);
        this.iconWorkingBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_editor_sticker_working);
        this.bitmapPaint = new Paint();
        this.borderPaint = new Paint();
        this.bitmapMatrix = new Matrix();
        this.borderRect = new RectF();
        Object service = Utils.getNVContext(getContext()).getService("videoManager");
        Intrinsics.checkExpressionValueIsNotNull(service, "Utils.getNVContext(conte…etService(\"videoManager\")");
        this.videoManager = (VideoManager) service;
        this.rotatingHandler = new Handler();
        this.rotatingRunnable = new Runnable() { // from class: com.narvii.video.widget.EditorStickerInstallFrameView$rotatingRunnable$1
            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.stickerLoadingIconAngle += 10.0f;
                if (this.this$0.stickerLoadingIconAngle >= 360.0f) {
                    this.this$0.stickerLoadingIconAngle = 0.0f;
                }
                this.this$0.invalidate();
            }
        };
        this.borderPaint.setAntiAlias(true);
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setStrokeWidth(this.borderWidth);
        this.borderPaint.setColor(Color.parseColor("#36D4B1"));
        this.bitmapPaint.setAntiAlias(true);
        this.bitmapPaint.setStyle(Paint.Style.FILL);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditorStickerInstallFrameView(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.borderWidth = getResources().getDimensionPixelSize(R.dimen.sticker_install_frame_border_width);
        this.iconSize = getResources().getDimensionPixelSize(R.dimen.sticker_install_frame_icon_size);
        this.padding = getResources().getDimensionPixelSize(R.dimen.sticker_install_frame_padding_size);
        this.iconInstallBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_editor_sticker_install);
        this.iconWorkingBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_editor_sticker_working);
        this.bitmapPaint = new Paint();
        this.borderPaint = new Paint();
        this.bitmapMatrix = new Matrix();
        this.borderRect = new RectF();
        Object service = Utils.getNVContext(getContext()).getService("videoManager");
        Intrinsics.checkExpressionValueIsNotNull(service, "Utils.getNVContext(conte…etService(\"videoManager\")");
        this.videoManager = (VideoManager) service;
        this.rotatingHandler = new Handler();
        this.rotatingRunnable = new Runnable() { // from class: com.narvii.video.widget.EditorStickerInstallFrameView$rotatingRunnable$1
            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.stickerLoadingIconAngle += 10.0f;
                if (this.this$0.stickerLoadingIconAngle >= 360.0f) {
                    this.this$0.stickerLoadingIconAngle = 0.0f;
                }
                this.this$0.invalidate();
            }
        };
        this.borderPaint.setAntiAlias(true);
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setStrokeWidth(this.borderWidth);
        this.borderPaint.setColor(Color.parseColor("#36D4B1"));
        this.bitmapPaint.setAntiAlias(true);
        this.bitmapPaint.setStyle(Paint.Style.FILL);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            RectF rectF = this.borderRect;
            float f = this.borderWidth;
            rectF.set(f / 2.0f, f / 2.0f, getWidth() - (this.borderWidth / 2.0f), getHeight() - (this.borderWidth / 2.0f));
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        super.onDraw(canvas);
        int i = this.stickerStatus;
        if (i == 1) {
            this.bitmapMatrix.reset();
            this.bitmapMatrix.postTranslate((getWidth() - this.iconSize) - this.padding, (getHeight() - this.iconSize) - this.padding);
            canvas.drawBitmap(this.iconInstallBitmap, this.bitmapMatrix, this.bitmapPaint);
            return;
        }
        if (i == 2) {
            Bitmap iconWorkingBitmap = this.iconWorkingBitmap;
            Intrinsics.checkExpressionValueIsNotNull(iconWorkingBitmap, "iconWorkingBitmap");
            float width = iconWorkingBitmap.getWidth() / 2.0f;
            this.bitmapMatrix.reset();
            float f = -width;
            this.bitmapMatrix.postTranslate(f, f);
            this.bitmapMatrix.postRotate(this.stickerLoadingIconAngle);
            this.bitmapMatrix.postTranslate(width, width);
            this.bitmapMatrix.postTranslate((getWidth() - this.iconSize) - this.padding, (getHeight() - this.iconSize) - this.padding);
            canvas.drawBitmap(this.iconWorkingBitmap, this.bitmapMatrix, this.bitmapPaint);
            this.rotatingHandler.postDelayed(this.rotatingRunnable, 32L);
            return;
        }
        if (i == 3 && this.stickerSelected) {
            RectF rectF = this.borderRect;
            int i2 = this.padding;
            canvas.drawRoundRect(rectF, i2, i2, this.borderPaint);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.rotatingHandler.removeCallbacks(this.rotatingRunnable);
    }

    @Override // com.narvii.sticker.StickerFileDownloadListener
    public void onStatusChanged(String str, String str2, DownloadStatusInfo downloadStatusInfo) {
        Sticker sticker = this.sticker;
        if (sticker == null || this.stickerLocalPath == null || downloadStatusInfo == null) {
            return;
        }
        if (sticker == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        if (!Intrinsics.areEqual(str, sticker.stickerCollectionId)) {
            return;
        }
        if (this.sticker == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        if (!Intrinsics.areEqual(str2, r3.icon)) {
            return;
        }
        if (downloadStatusInfo.isReady()) {
            VideoManager videoManager = this.videoManager;
            Sticker sticker2 = this.sticker;
            if (sticker2 != null) {
                videoManager.installSticker(sticker2, this.stickerLocalPath, this.trial, this);
                return;
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        if (downloadStatusInfo.isFailed()) {
            setStickerSelected(false);
            setStickerStatus(1);
        }
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstalled(StickerInfoPack stickerInfoPack) {
        Intrinsics.checkParameterIsNotNull(stickerInfoPack, "stickerInfoPack");
        setStickerStatus(3);
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstallFailed(Sticker sticker) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        setStickerSelected(false);
        setStickerStatus(1);
    }

    @Override // com.narvii.media.giphy.GiphyStickerService.GiphyStickerDownloadListener
    public void onGiphyStickerLoaded(File file, GiphyItem giphyItem) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        Intrinsics.checkParameterIsNotNull(giphyItem, "giphyItem");
        GiphyItem giphyItem2 = this.giphyItem;
        if (Intrinsics.areEqual(giphyItem2 != null ? giphyItem2.id : null, giphyItem.id) && file.exists()) {
            installGiphySticker(giphyItem, this.stickerLocalPath);
        }
    }

    @Override // com.narvii.media.giphy.GiphyStickerService.GiphyStickerDownloadListener
    public void onGiphyStickerLoadFailed(GiphyItem giphyItem) {
        Intrinsics.checkParameterIsNotNull(giphyItem, "giphyItem");
        setStickerSelected(false);
        setStickerStatus(1);
    }

    public final void onViewRecycled() {
        GiphyItem giphyItem = this.giphyItem;
        if (giphyItem != null) {
            Sticker sticker = new Sticker();
            sticker.stickerId = giphyItem.id();
            sticker.stickerCollectionId = giphyItem.collectionId();
            this.videoManager.removeViewInstallStickerCallback(sticker);
            return;
        }
        Sticker sticker2 = this.sticker;
        if (sticker2 != null) {
            this.videoManager.removeViewInstallStickerCallback(sticker2);
        }
    }

    public final void setStickerStatus(int i) {
        if (this.stickerStatus == i) {
            return;
        }
        if (i != 2) {
            this.stickerLoadingIconAngle = 0.0f;
            this.rotatingHandler.removeCallbacks(this.rotatingRunnable);
        }
        GiphyItem giphyItem = this.giphyItem;
        if (giphyItem != null) {
            giphyItem.stickerStatus = i;
        }
        Sticker sticker = this.sticker;
        if (sticker != null) {
            sticker.stickerStatus = i;
        }
        this.stickerStatus = i;
        invalidate();
    }

    public final int getStickerStatus() {
        return this.stickerStatus;
    }

    public final void setStickerSelected(boolean z) {
        if (this.stickerSelected == z) {
            return;
        }
        this.stickerSelected = z;
        invalidate();
    }

    public final void bindSticker(Sticker sticker, boolean z, StickerCacheService stickerCacheService) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        Intrinsics.checkParameterIsNotNull(stickerCacheService, "stickerCacheService");
        this.sticker = sticker;
        this.stickerLocalPath = stickerCacheService.getLocalPath(sticker.stickerCollectionId, sticker.icon);
        this.trial = z;
        DownloadStatusInfo downloadStatusInfo = stickerCacheService.getFileDownloadStatusInfo(sticker.stickerCollectionId, sticker.icon);
        Intrinsics.checkExpressionValueIsNotNull(downloadStatusInfo, "downloadStatusInfo");
        if (downloadStatusInfo.isReady()) {
            if (this.stickerStatus >= 2) {
                this.videoManager.addViewInstallStickerCallback(sticker, this);
                return;
            } else {
                installSticker(sticker, this.stickerLocalPath, z);
                return;
            }
        }
        if (downloadStatusInfo.isDownloading()) {
            setStickerStatus(2);
            stickerCacheService.observeFileStatusChange(sticker.stickerCollectionId, sticker.icon, this);
        }
    }

    public final void bindGiphySticker(GiphyItem giphyItem, GiphyStickerService giphyStickerService) {
        Intrinsics.checkParameterIsNotNull(giphyItem, "giphyItem");
        Intrinsics.checkParameterIsNotNull(giphyStickerService, "giphyStickerService");
        this.giphyItem = giphyItem;
        this.stickerLocalPath = giphyStickerService.getLocalPath(giphyItem);
        if (giphyStickerService.getGiphyItemDownloadStatus(giphyItem).isReady()) {
            if (this.stickerStatus >= 2) {
                Sticker sticker = new Sticker();
                sticker.stickerId = giphyItem.id();
                sticker.stickerCollectionId = giphyItem.collectionId();
                this.videoManager.addViewInstallStickerCallback(sticker, this);
                return;
            }
            installGiphySticker(giphyItem, this.stickerLocalPath);
            return;
        }
        setStickerStatus(2);
        giphyStickerService.downloadGiphySticker(giphyItem, this);
    }

    public final void installSticker(Sticker sticker, String str, boolean z) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        setStickerStatus(2);
        this.videoManager.installSticker(sticker, str, z, this);
    }

    private final void installGiphySticker(GiphyItem giphyItem, String str) {
        Sticker sticker = new Sticker();
        sticker.stickerId = giphyItem.id();
        sticker.stickerCollectionId = giphyItem.collectionId();
        sticker.sourceType = 3;
        installSticker(sticker, str, false);
    }
}
