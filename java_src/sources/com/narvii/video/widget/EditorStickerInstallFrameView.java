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
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class EditorStickerInstallFrameView extends View implements StickerFileDownloadListener, VideoManager.IInstallStickerCallback, GiphyStickerService.GiphyStickerDownloadListener {

    @NotNull
    private final Matrix bitmapMatrix;

    @NotNull
    private final Paint bitmapPaint;

    @NotNull
    private final Paint borderPaint;

    @NotNull
    private final RectF borderRect;
    private final float borderWidth;

    @Nullable
    private GiphyItem giphyItem;
    private final Bitmap iconInstallBitmap;
    private final int iconSize;
    private final Bitmap iconWorkingBitmap;
    private final int padding;

    @NotNull
    private final Handler rotatingHandler;

    @NotNull
    private final Runnable rotatingRunnable;

    @Nullable
    private Sticker sticker;
    private float stickerLoadingIconAngle;

    @Nullable
    private String stickerLocalPath;
    private boolean stickerSelected;
    private int stickerStatus;
    private boolean trial;

    @NotNull
    private final VideoManager videoManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditorStickerInstallFrameView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.sticker_install_frame_border_width);
        this.borderWidth = dimensionPixelSize;
        this.iconSize = getResources().getDimensionPixelSize(R.dimen.sticker_install_frame_icon_size);
        this.padding = getResources().getDimensionPixelSize(R.dimen.sticker_install_frame_padding_size);
        this.iconInstallBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_editor_sticker_install);
        this.iconWorkingBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_editor_sticker_working);
        Paint paint = new Paint();
        this.bitmapPaint = paint;
        Paint paint2 = new Paint();
        this.borderPaint = paint2;
        this.bitmapMatrix = new Matrix();
        this.borderRect = new RectF();
        Object service = Utils.getNVContext(getContext()).getService("videoManager");
        t.i(service, "getService(...)");
        this.videoManager = (VideoManager) service;
        this.rotatingHandler = new Handler();
        this.rotatingRunnable = new Runnable() { // from class: com.narvii.video.widget.g
            @Override // java.lang.Runnable
            public final void run() {
                EditorStickerInstallFrameView.rotatingRunnable$lambda$0(this.f2978a);
            }
        };
        paint2.setAntiAlias(true);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(dimensionPixelSize);
        paint2.setColor(Color.parseColor("#36D4B1"));
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
    }

    public final int getStickerStatus() {
        return this.stickerStatus;
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstallStart(@NotNull StickerInfoPack stickerInfoPack) {
        t.j(stickerInfoPack, "stickerInfoPack");
    }

    private final void installGiphySticker(GiphyItem giphyItem, String str) {
        Sticker sticker = new Sticker();
        sticker.stickerId = giphyItem.id();
        sticker.stickerCollectionId = giphyItem.collectionId();
        sticker.sourceType = 3;
        installSticker(sticker, str, false);
    }

    public final void bindGiphySticker(@NotNull GiphyItem giphyItem, @NotNull GiphyStickerService giphyStickerService) {
        t.j(giphyItem, "giphyItem");
        t.j(giphyStickerService, "giphyStickerService");
        this.giphyItem = giphyItem;
        this.stickerLocalPath = giphyStickerService.getLocalPath(giphyItem);
        if (!giphyStickerService.getGiphyItemDownloadStatus(giphyItem).isReady()) {
            setStickerStatus(2);
            giphyStickerService.downloadGiphySticker(giphyItem, this);
        } else {
            if (this.stickerStatus < 2) {
                installGiphySticker(giphyItem, this.stickerLocalPath);
                return;
            }
            Sticker sticker = new Sticker();
            sticker.stickerId = giphyItem.id();
            sticker.stickerCollectionId = giphyItem.collectionId();
            this.videoManager.addViewInstallStickerCallback(sticker, this);
        }
    }

    public final void bindSticker(@NotNull Sticker sticker, boolean z6, @NotNull StickerCacheService stickerCacheService) {
        t.j(sticker, "sticker");
        t.j(stickerCacheService, "stickerCacheService");
        this.sticker = sticker;
        this.stickerLocalPath = stickerCacheService.getLocalPath(sticker.stickerCollectionId, sticker.icon);
        this.trial = z6;
        DownloadStatusInfo fileDownloadStatusInfo = stickerCacheService.getFileDownloadStatusInfo(sticker.stickerCollectionId, sticker.icon);
        if (fileDownloadStatusInfo.isReady()) {
            if (this.stickerStatus >= 2) {
                this.videoManager.addViewInstallStickerCallback(sticker, this);
                return;
            } else {
                installSticker(sticker, this.stickerLocalPath, z6);
                return;
            }
        }
        if (fileDownloadStatusInfo.isDownloading()) {
            setStickerStatus(2);
            stickerCacheService.observeFileStatusChange(sticker.stickerCollectionId, sticker.icon, this);
        }
    }

    public final void installSticker(@NotNull Sticker sticker, @Nullable String str, boolean z6) {
        t.j(sticker, "sticker");
        setStickerStatus(2);
        this.videoManager.installSticker(sticker, str, z6, this);
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        super.onDraw(canvas);
        int i10 = this.stickerStatus;
        if (i10 == 1) {
            this.bitmapMatrix.reset();
            this.bitmapMatrix.postTranslate((getWidth() - this.iconSize) - this.padding, (getHeight() - this.iconSize) - this.padding);
            canvas.drawBitmap(this.iconInstallBitmap, this.bitmapMatrix, this.bitmapPaint);
            return;
        }
        if (i10 != 2) {
            if (i10 == 3 && this.stickerSelected) {
                RectF rectF = this.borderRect;
                int i11 = this.padding;
                canvas.drawRoundRect(rectF, i11, i11, this.borderPaint);
                return;
            }
            return;
        }
        float width = this.iconWorkingBitmap.getWidth() / 2.0f;
        this.bitmapMatrix.reset();
        float f = -width;
        this.bitmapMatrix.postTranslate(f, f);
        this.bitmapMatrix.postRotate(this.stickerLoadingIconAngle);
        this.bitmapMatrix.postTranslate(width, width);
        this.bitmapMatrix.postTranslate((getWidth() - this.iconSize) - this.padding, (getHeight() - this.iconSize) - this.padding);
        canvas.drawBitmap(this.iconWorkingBitmap, this.bitmapMatrix, this.bitmapPaint);
        this.rotatingHandler.postDelayed(this.rotatingRunnable, 32L);
    }

    @Override // com.narvii.media.giphy.GiphyStickerService.GiphyStickerDownloadListener
    public void onGiphyStickerLoadFailed(@NotNull GiphyItem giphyItem) {
        t.j(giphyItem, "giphyItem");
        setStickerSelected(false);
        setStickerStatus(1);
    }

    @Override // com.narvii.media.giphy.GiphyStickerService.GiphyStickerDownloadListener
    public void onGiphyStickerLoaded(@NotNull File file, @NotNull GiphyItem giphyItem) {
        t.j(file, "file");
        t.j(giphyItem, "giphyItem");
        GiphyItem giphyItem2 = this.giphyItem;
        if (t.e(giphyItem2 != null ? giphyItem2.id : null, giphyItem.id) && file.exists()) {
            installGiphySticker(giphyItem, this.stickerLocalPath);
        }
    }

    @Override // com.narvii.sticker.StickerFileDownloadListener
    public void onStatusChanged(@Nullable String str, @Nullable String str2, @Nullable DownloadStatusInfo downloadStatusInfo) {
        Sticker sticker = this.sticker;
        if (sticker == null || this.stickerLocalPath == null || downloadStatusInfo == null) {
            return;
        }
        t.g(sticker);
        if (t.e(str, sticker.stickerCollectionId)) {
            Sticker sticker2 = this.sticker;
            t.g(sticker2);
            if (t.e(str2, sticker2.icon)) {
                if (downloadStatusInfo.isReady()) {
                    VideoManager videoManager = this.videoManager;
                    Sticker sticker3 = this.sticker;
                    t.g(sticker3);
                    videoManager.installSticker(sticker3, this.stickerLocalPath, this.trial, this);
                    return;
                }
                if (downloadStatusInfo.isFailed()) {
                    setStickerSelected(false);
                    setStickerStatus(1);
                }
            }
        }
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstallFailed(@NotNull Sticker sticker) {
        t.j(sticker, "sticker");
        setStickerSelected(false);
        setStickerStatus(1);
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstalled(@NotNull StickerInfoPack stickerInfoPack) {
        t.j(stickerInfoPack, "stickerInfoPack");
        setStickerStatus(3);
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

    public final void setStickerSelected(boolean z6) {
        if (this.stickerSelected == z6) {
            return;
        }
        this.stickerSelected = z6;
        invalidate();
    }

    public final void setStickerStatus(int i10) {
        if (this.stickerStatus == i10) {
            return;
        }
        if (i10 != 2) {
            this.stickerLoadingIconAngle = 0.0f;
            this.rotatingHandler.removeCallbacks(this.rotatingRunnable);
        }
        GiphyItem giphyItem = this.giphyItem;
        if (giphyItem != null) {
            giphyItem.stickerStatus = i10;
        }
        Sticker sticker = this.sticker;
        if (sticker != null) {
            sticker.stickerStatus = i10;
        }
        this.stickerStatus = i10;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void rotatingRunnable$lambda$0(EditorStickerInstallFrameView this$0) {
        t.j(this$0, "this$0");
        float f = this$0.stickerLoadingIconAngle + 10.0f;
        this$0.stickerLoadingIconAngle = f;
        if (f >= 360.0f) {
            this$0.stickerLoadingIconAngle = 0.0f;
        }
        this$0.invalidate();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.rotatingHandler.removeCallbacks(this.rotatingRunnable);
    }

    @Override // android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        if (z6) {
            RectF rectF = this.borderRect;
            float f = this.borderWidth;
            rectF.set(f / 2.0f, f / 2.0f, getWidth() - (this.borderWidth / 2.0f), getHeight() - (this.borderWidth / 2.0f));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditorStickerInstallFrameView(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
        float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.sticker_install_frame_border_width);
        this.borderWidth = dimensionPixelSize;
        this.iconSize = getResources().getDimensionPixelSize(R.dimen.sticker_install_frame_icon_size);
        this.padding = getResources().getDimensionPixelSize(R.dimen.sticker_install_frame_padding_size);
        this.iconInstallBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_editor_sticker_install);
        this.iconWorkingBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_editor_sticker_working);
        Paint paint = new Paint();
        this.bitmapPaint = paint;
        Paint paint2 = new Paint();
        this.borderPaint = paint2;
        this.bitmapMatrix = new Matrix();
        this.borderRect = new RectF();
        Object service = Utils.getNVContext(getContext()).getService("videoManager");
        t.i(service, "getService(...)");
        this.videoManager = (VideoManager) service;
        this.rotatingHandler = new Handler();
        this.rotatingRunnable = new Runnable() { // from class: com.narvii.video.widget.g
            @Override // java.lang.Runnable
            public final void run() {
                EditorStickerInstallFrameView.rotatingRunnable$lambda$0(this.f2978a);
            }
        };
        paint2.setAntiAlias(true);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(dimensionPixelSize);
        paint2.setColor(Color.parseColor("#36D4B1"));
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
    }
}
