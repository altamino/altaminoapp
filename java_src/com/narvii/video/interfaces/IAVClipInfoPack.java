package com.narvii.video.interfaces;

import com.narvii.video.model.StreamInfo;

/* compiled from: IAVClipInfoPack.kt */
/* loaded from: classes3.dex */
public interface IAVClipInfoPack {
    boolean fadeIn();

    boolean fadeOut();

    String getClipInputName(boolean z);

    StreamInfo getStreamInfo();

    boolean hasInvisibleFrames();

    int indexInScene();

    String inputPath();

    boolean isTrimSectionValid();

    double speed();

    int trimEndInMs();

    int trimStartInMs();

    int trimStartInMsWithSpeed();

    int trimmedDurationInMs();

    /* compiled from: IAVClipInfoPack.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ String getClipInputName$default(IAVClipInfoPack iAVClipInfoPack, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getClipInputName");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return iAVClipInfoPack.getClipInputName(z);
        }
    }
}
