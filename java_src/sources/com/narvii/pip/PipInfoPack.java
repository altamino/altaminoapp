package com.narvii.pip;

import android.graphics.PointF;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.narvii.util.JacksonUtils;
import com.narvii.video.interfaces.IAVClipInfoPack;
import com.narvii.video.model.BaseAttachmentInfoPack;
import com.narvii.video.model.StreamInfo;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
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
    public boolean fadeIn() {
        return this.fadeIn;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public boolean fadeOut() {
        return this.fadeOut;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    @NotNull
    public StreamInfo getStreamInfo() {
        return this.streamInfo;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public boolean hasInvisibleFrames() {
        return this.visibleDurationInMs < this.orgDurationInMs;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    @Nullable
    public String inputPath() {
        return this.inputPath;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public boolean isTrimSectionValid() {
        return this.trimEndInMs > this.trimStartInMs;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public double speed() {
        return 1.0d;
    }

    @Override // com.narvii.video.model.BaseAttachmentInfoPack, com.narvii.video.interfaces.ITimelineClip, com.narvii.video.interfaces.IAVClipInfoPack
    public int trimEndInMs() {
        return this.trimEndInMs;
    }

    @Override // com.narvii.video.model.BaseAttachmentInfoPack, com.narvii.video.interfaces.ITimelineClip, com.narvii.video.interfaces.IAVClipInfoPack
    public int trimStartInMs() {
        return this.trimStartInMs;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public int trimStartInMsWithSpeed() {
        return this.trimStartInMs;
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    @NonNull
    public String getClipInputName(boolean z6) {
        if (TextUtils.isEmpty(this.inputPath)) {
            return "default";
        }
        String[] strArrSplit = this.inputPath.split(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
        if (!z6) {
            return strArrSplit[strArrSplit.length - 1];
        }
        String str = strArrSplit[strArrSplit.length - 1];
        return str.substring(0, str.indexOf("."));
    }

    public PipInfoPack() {
        this.scaleX = 0.5f;
        this.scaleY = 0.5f;
    }

    @Override // com.narvii.video.model.BaseAttachmentInfoPack, com.narvii.video.interfaces.ITimelineClip
    @NotNull
    public PipInfoPack copy() {
        return (PipInfoPack) JacksonUtils.readAs(JacksonUtils.writeAsString(this), PipInfoPack.class);
    }

    @Override // com.narvii.video.interfaces.IAVClipInfoPack
    public int trimmedDurationInMs() {
        if (isTrimSectionValid()) {
            return this.trimEndInMs - this.trimStartInMs;
        }
        return this.visibleDurationInMs;
    }
}
