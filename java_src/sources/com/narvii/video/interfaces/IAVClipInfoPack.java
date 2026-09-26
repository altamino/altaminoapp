package com.narvii.video.interfaces;

import com.narvii.video.model.StreamInfo;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public interface IAVClipInfoPack {

    public static final class DefaultImpls {
        public static /* synthetic */ String getClipInputName$default(IAVClipInfoPack iAVClipInfoPack, boolean z6, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getClipInputName");
            }
            if ((i10 & 1) != 0) {
                z6 = false;
            }
            return iAVClipInfoPack.getClipInputName(z6);
        }
    }

    boolean fadeIn();

    boolean fadeOut();

    @NotNull
    String getClipInputName(boolean z6);

    @NotNull
    StreamInfo getStreamInfo();

    boolean hasInvisibleFrames();

    int indexInScene();

    @Nullable
    String inputPath();

    boolean isTrimSectionValid();

    double speed();

    int trimEndInMs();

    int trimStartInMs();

    int trimStartInMsWithSpeed();

    int trimmedDurationInMs();
}
