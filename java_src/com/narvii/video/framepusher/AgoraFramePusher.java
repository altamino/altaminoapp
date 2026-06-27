package com.narvii.video.framepusher;

import com.narvii.video.gles.GlUtil;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.video.AgoraVideoFrame;
import javax.microedition.khronos.egl.EGLContext;

/* loaded from: classes3.dex */
public class AgoraFramePusher implements MediaFramePusher {
    public RtcEngine rtcEngine;

    public AgoraFramePusher(RtcEngine rtcEngine) {
        this.rtcEngine = rtcEngine;
    }

    @Override // com.narvii.video.framepusher.MediaFramePusher
    public void pushVideoFrame(EGLContext eGLContext, int i, int i2, int i3, int i4, float[] fArr) {
        if (this.rtcEngine == null) {
            return;
        }
        AgoraVideoFrame agoraVideoFrame = new AgoraVideoFrame();
        agoraVideoFrame.format = i2 == 0 ? 10 : 11;
        agoraVideoFrame.timeStamp = System.currentTimeMillis();
        agoraVideoFrame.stride = i3;
        agoraVideoFrame.height = i4;
        agoraVideoFrame.textureID = i;
        agoraVideoFrame.syncMode = true;
        agoraVideoFrame.eglContext11 = eGLContext;
        agoraVideoFrame.transform = GlUtil.IDENTITY_MATRIX;
        this.rtcEngine.pushExternalVideoFrame(agoraVideoFrame);
    }

    @Override // com.narvii.video.framepusher.MediaFramePusher
    public void pushVideoFrame(byte[] bArr, int i, int i2, int i3) {
        if (this.rtcEngine == null) {
            return;
        }
        AgoraVideoFrame agoraVideoFrame = new AgoraVideoFrame();
        agoraVideoFrame.format = 3;
        agoraVideoFrame.timeStamp = System.currentTimeMillis();
        agoraVideoFrame.stride = i;
        agoraVideoFrame.height = i2;
        agoraVideoFrame.rotation = i3;
        agoraVideoFrame.buf = bArr;
        this.rtcEngine.pushExternalVideoFrame(agoraVideoFrame);
    }

    @Override // com.narvii.video.framepusher.MediaFramePusher
    public void pushAudioFrame(byte[] bArr) {
        RtcEngine rtcEngine = this.rtcEngine;
        if (rtcEngine == null) {
            return;
        }
        rtcEngine.pushExternalAudioFrame(bArr, System.currentTimeMillis());
    }
}
