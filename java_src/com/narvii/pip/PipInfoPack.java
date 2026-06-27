package com.narvii.pip;

import android.graphics.PointF;
import android.text.TextUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.video.interfaces.IAVClipInfoPack;
import com.narvii.video.model.BaseAttachmentInfoPack;
import com.narvii.video.model.StreamInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class PipInfoPack extends BaseAttachmentInfoPack implements IAVClipInfoPack {
    public static final float PIP_VIDEO_DEFAULT_SCALE = 0.5f;
    public static final float PIP_VIDEO_MAX_SCALE = 1.5f;
    public boolean fadeIn;
    public boolean fadeOut;
    public String inputPath;
    public boolean mute;
    public StreamInfo streamInfo;
    public int trimEndInMs;
    public int trimStartInMs;
    public int videoWidth = -1;
    public int videoHeight = -1;
    public float volume = 1.0f;
    public List<PointF> vertexCoord = new ArrayList();

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public double speed() {
        return 1.0d;
    }

    public PipInfoPack() {
        this.scaleX = 0.5f;
        this.scaleY = 0.5f;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public String getClipInputName(boolean z) {
        if (TextUtils.isEmpty(this.inputPath)) {
            return "default";
        }
        String[] strArrSplit = this.inputPath.split("/");
        if (z) {
            String str = strArrSplit[strArrSplit.length - 1];
            return str.substring(0, str.indexOf("."));
        }
        return strArrSplit[strArrSplit.length - 1];
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public boolean isTrimSectionValid() {
        return this.trimEndInMs > this.trimStartInMs;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public int trimmedDurationInMs() {
        return isTrimSectionValid() ? this.trimEndInMs - this.trimStartInMs : this.visibleDurationInMs;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public int trimStartInMsWithSpeed() {
        return this.trimStartInMs;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public boolean hasInvisibleFrames() {
        return this.visibleDurationInMs < this.orgDurationInMs;
    }

    @Override // com.narvii.video.model.BaseAttachmentInfoPack, com.narvii.video.interfaces.ITimelineClip, com.narvii.video.interfaces.IAVClipInfoPack
    public int trimStartInMs() {
        return this.trimStartInMs;
    }

    @Override // com.narvii.video.model.BaseAttachmentInfoPack, com.narvii.video.interfaces.ITimelineClip, com.narvii.video.interfaces.IAVClipInfoPack
    public int trimEndInMs() {
        return this.trimEndInMs;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public String inputPath() {
        return this.inputPath;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public boolean fadeIn() {
        return this.fadeIn;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public boolean fadeOut() {
        return this.fadeOut;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public StreamInfo getStreamInfo() {
        return this.streamInfo;
    }

    @Override // com.narvii.video.model.BaseAttachmentInfoPack, com.narvii.video.interfaces.ITimelineClip
    public PipInfoPack copy() {
        return (PipInfoPack) JacksonUtils.readAs(JacksonUtils.writeAsString(this), PipInfoPack.class);
    }
}
