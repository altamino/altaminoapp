package com.narvii.user.profile;

import android.widget.TextView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface BioBriefStyle {
    void setArrowBtnStyle(@NotNull TintButton tintButton, boolean z6);

    void setBioTVStyle(@NotNull TextView textView, boolean z6);

    void setEmptyTVStyle(@NotNull TextView textView, boolean z6, boolean z10);

    void setSnippetImageStyle(@NotNull NVImageView nVImageView, boolean z6);
}
