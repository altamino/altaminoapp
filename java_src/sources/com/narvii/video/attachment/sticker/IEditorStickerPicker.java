package com.narvii.video.attachment.sticker;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface IEditorStickerPicker {
    void onEditorStickerRemoved();

    void onLocalAnimatedStickerConvertTerminated();

    void setEditorStickerPickerCallback(@NotNull IEditorStickerPickerCallback iEditorStickerPickerCallback);
}
