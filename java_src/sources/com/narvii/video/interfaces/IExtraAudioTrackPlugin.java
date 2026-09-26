package com.narvii.video.interfaces;

import com.narvii.video.model.AVClipInfoPack;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface IExtraAudioTrackPlugin {

    public static final class DefaultImpls {
        public static /* synthetic */ IEditorAudioPlayer openSingleAudio$default(IExtraAudioTrackPlugin iExtraAudioTrackPlugin, AVClipInfoPack aVClipInfoPack, boolean z6, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openSingleAudio");
            }
            if ((i10 & 2) != 0) {
                z6 = true;
            }
            return iExtraAudioTrackPlugin.openSingleAudio(aVClipInfoPack, z6);
        }
    }

    @Nullable
    IEditorAudioPlayer openSingleAudio(@NotNull AVClipInfoPack aVClipInfoPack, boolean z6);
}
