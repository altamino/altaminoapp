package com.narvii.video.interfaces;

import com.narvii.video.model.AVClipInfoPack;

/* compiled from: IExtraAudioTrackPlugin.kt */
/* loaded from: classes3.dex */
public interface IExtraAudioTrackPlugin {
    IEditorAudioPlayer openSingleAudio(AVClipInfoPack aVClipInfoPack, boolean z);

    /* compiled from: IExtraAudioTrackPlugin.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ IEditorAudioPlayer openSingleAudio$default(IExtraAudioTrackPlugin iExtraAudioTrackPlugin, AVClipInfoPack aVClipInfoPack, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openSingleAudio");
            }
            if ((i & 2) != 0) {
                z = true;
            }
            return iExtraAudioTrackPlugin.openSingleAudio(aVClipInfoPack, z);
        }
    }
}
