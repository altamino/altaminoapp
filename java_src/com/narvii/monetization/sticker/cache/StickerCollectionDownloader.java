package com.narvii.monetization.sticker.cache;

import com.narvii.app.NVContext;
import com.narvii.asset.DownloadStatusInfo;
import com.narvii.model.Sticker;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.sticker.StickerCacheService;
import com.narvii.sticker.StickerStatusChangeListener;
import com.narvii.util.FilterHelper;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class StickerCollectionDownloader {
    boolean canceled;
    int currentIndex = -1;
    Sticker currentSticker;
    StickerCollectionDownloadListener downloadListener;
    boolean finished;
    NVContext nvContext;
    StickerCacheService stickerCacheService;
    StickerCollection stickerCollection;
    List<Sticker> stickerList;
    StickerStatusChangeListener stickerListener;

    public interface StickerCollectionDownloadListener {
        void onFinished();

        void onProgressUpdate(float f);
    }

    public StickerCollectionDownloader(NVContext nVContext) {
        this.nvContext = nVContext;
        this.stickerCacheService = (StickerCacheService) nVContext.getService("stickerCache");
    }

    public void downloadStickerCollection(StickerCollection stickerCollection, StickerCollectionDownloadListener stickerCollectionDownloadListener) {
        if (stickerCollection == null || stickerCollection.stickerList == null) {
            return;
        }
        this.stickerCollection = stickerCollection;
        this.downloadListener = stickerCollectionDownloadListener;
        if (this.stickerCollection.isShared()) {
            this.stickerList = new FilterHelper(this.nvContext).filter(this.stickerCollection.stickerList);
        } else {
            this.stickerList = this.stickerCollection.stickerList;
        }
        if (this.stickerList == null) {
            this.stickerList = new ArrayList();
        }
        this.currentIndex = -1;
        this.currentSticker = null;
        this.stickerListener = new StickerStatusChangeListener() { // from class: com.narvii.monetization.sticker.cache.StickerCollectionDownloader.1
            @Override // com.narvii.sticker.StickerStatusChangeListener
            public void onStatusChanged(Sticker sticker, DownloadStatusInfo downloadStatusInfo) {
                StickerCollectionDownloader stickerCollectionDownloader = StickerCollectionDownloader.this;
                if (stickerCollectionDownloader.finished || stickerCollectionDownloader.canceled || stickerCollectionDownloader.currentSticker != sticker) {
                    return;
                }
                if (downloadStatusInfo.isFinished()) {
                    StickerCollectionDownloader.this.observeNextSticker();
                    return;
                }
                if (downloadStatusInfo.isDownloading()) {
                    StickerCollectionDownloader stickerCollectionDownloader2 = StickerCollectionDownloader.this;
                    if (stickerCollectionDownloader2.downloadListener != null) {
                        int size = stickerCollectionDownloader2.stickerList.size();
                        float f = size == 0 ? 0.0f : 1.0f / size;
                        StickerCollectionDownloader.this.downloadListener.onProgressUpdate((r0.currentIndex * f) + (f * downloadStatusInfo.progress));
                    }
                }
            }
        };
        this.stickerCacheService.downloadFile(this.stickerCollection.id(), this.stickerCollection.smallIcon, null);
        this.stickerCacheService.downloadFile(this.stickerCollection.id(), this.stickerCollection.icon, null);
        observeNextSticker();
    }

    public void cancel() {
        this.canceled = true;
        this.downloadListener = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void observeNextSticker() {
        if (this.currentIndex < this.stickerList.size() - 1) {
            this.currentIndex++;
            this.currentSticker = this.stickerList.get(this.currentIndex);
            this.stickerCacheService.observeStickerStatusChange(this.currentSticker, this.stickerListener);
        } else {
            this.finished = true;
            StickerCollectionDownloadListener stickerCollectionDownloadListener = this.downloadListener;
            if (stickerCollectionDownloadListener != null) {
                stickerCollectionDownloadListener.onFinished();
            }
        }
    }
}
