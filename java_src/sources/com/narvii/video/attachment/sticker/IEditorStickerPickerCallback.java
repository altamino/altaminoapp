package com.narvii.video.attachment.sticker;

import com.narvii.video.model.StickerInfoPack;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface IEditorStickerPickerCallback {
    void forsakePreviewSticker();

    void onBlockedInstallingSticker();

    void onStickerInstallFailed();

    void savePreviewSticker();

    void setPickedPreviewSticker(@NotNull StickerInfoPack stickerInfoPack);
}
