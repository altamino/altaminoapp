package com.narvii.video.attachment.caption;

/* JADX INFO: loaded from: classes10.dex */
public interface CaptionEditListener {
    public static final int COLOR_TYPE_SHADOW = 3;
    public static final int COLOR_TYPE_STROKE = 2;
    public static final int COLOR_TYPE_TEXT = 1;

    void onColorChanged(int i10, int i11, boolean z6);

    void onFontChanged(String str, String str2);

    void onStyleChanged(String str, String str2);
}
