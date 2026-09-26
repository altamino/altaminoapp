package com.narvii.video.services;

import android.content.Context;
import com.narvii.app.NVContext;
import com.narvii.video.interfaces.IEditorRecycler;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.ISceneVideoGenerator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public interface IEditorPackFactory {
    @NotNull
    g7.a getIEditorDelegate(@NotNull NVContext nVContext);

    @NotNull
    IPreviewPlayer getPreviewPlayer(@NotNull Context context);

    @Nullable
    ISceneVideoGenerator getVideoGenerator();

    @Nullable
    IEditorRecycler getVideoRecycler();
}
