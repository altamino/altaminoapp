package com.narvii.video.attachment.sticker;

import com.narvii.video.model.StickerInfoPack;

/* compiled from: IEditorStickerPickerCallback.kt */
/* loaded from: classes3.dex */
public interface IEditorStickerPickerCallback {
    void forsakePreviewSticker();

    void onBlockedInstallingSticker();

    void onStickerInstallFailed();

    void savePreviewSticker();

    void setPickedPreviewSticker(StickerInfoPack stickerInfoPack);
}
