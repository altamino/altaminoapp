package com.narvii.video.framepusher;

import com.narvii.video.gles.GlUtil;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.video.AgoraVideoFrame;
import javax.microedition.khronos.egl.EGLContext;

/* JADX INFO: loaded from: classes11.dex */
public class AgoraFramePusher implements MediaFramePusher {
    public RtcEngine rtcEngine;

    @Override // com.narvii.video.framepusher.MediaFramePusher
    public void pushVideoFrame(EGLContext eGLContext, int i10, int i11, int i12, int i13, float[] fArr) {
        if (this.rtcEngine == null) {
            return;
        }
        AgoraVideoFrame agoraVideoFrame = new AgoraVideoFrame();
        agoraVideoFrame.format = i11 == 0 ? 10 : 11;
        agoraVideoFrame.timeStamp = System.currentTimeMillis();
        agoraVideoFrame.stride = i12;
        agoraVideoFrame.height = i13;
        agoraVideoFrame.textureID = i10;
        agoraVideoFrame.syncMode = true;
        agoraVideoFrame.eglContext11 = eGLContext;
        agoraVideoFrame.transform = GlUtil.IDENTITY_MATRIX;
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

    public AgoraFramePusher(RtcEngine rtcEngine) {
        this.rtcEngine = rtcEngine;
    }

    @Override // com.narvii.video.framepusher.MediaFramePusher
    public void pushVideoFrame(byte[] bArr, int i10, int i11, int i12) {
        if (this.rtcEngine == null) {
            return;
        }
        AgoraVideoFrame agoraVideoFrame = new AgoraVideoFrame();
        agoraVideoFrame.format = 3;
        agoraVideoFrame.timeStamp = System.currentTimeMillis();
        agoraVideoFrame.stride = i10;
        agoraVideoFrame.height = i11;
        agoraVideoFrame.rotation = i12;
        agoraVideoFrame.buf = bArr;
        this.rtcEngine.pushExternalVideoFrame(agoraVideoFrame);
    }
}
