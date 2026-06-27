package com.narvii.video.services;

import android.content.Context;
import com.narvii.app.NVContext;
import com.narvii.video.interfaces.IEditorRecycler;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.ISceneVideoGenerator;
import ffmpeg.base.IEditor;

/* compiled from: IEditorPackFactory.kt */
/* loaded from: classes3.dex */
public interface IEditorPackFactory {
    IEditor getIEditorDelegate(NVContext nVContext);

    IPreviewPlayer getPreviewPlayer(Context context);

    ISceneVideoGenerator getVideoGenerator();

    IEditorRecycler getVideoRecycler();
}
