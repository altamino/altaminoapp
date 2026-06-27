package com.narvii.sticker;

import com.narvii.asset.DownloadStatusInfo;
import com.narvii.model.Sticker;

/* loaded from: classes3.dex */
public interface StickerStatusChangeListener {
    void onStatusChanged(Sticker sticker, DownloadStatusInfo downloadStatusInfo);
}
