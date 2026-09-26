package com.narvii.sticker;

import com.narvii.asset.DownloadStatusInfo;
import com.narvii.model.Sticker;

/* JADX INFO: loaded from: classes2.dex */
public interface StickerStatusChangeListener {
    void onStatusChanged(Sticker sticker, DownloadStatusInfo downloadStatusInfo);
}
