package com.narvii.video.model;

/* loaded from: classes3.dex */
public class StreamInfo {
    public int durationInMs = 0;
    public int bitrateInKbps = 0;
    public int width = 0;
    public int height = 0;
    public String vCodecType = null;
    public String aCodecType = null;
    public int sampleRate = 0;
    public int fps = 0;
    public int frameCount = 0;
    public float dar = 0.0f;
    public boolean hasError = false;
    public int rotate = 0;

    public boolean isACodecInWhiteList() {
        String[] strArrSplit = "h264,hevc,mpeg4,mp3,aac,pcm,flac,yuv4,mjpeg,gif,png,bmp".split(",");
        if (strArrSplit.length <= 0) {
            return false;
        }
        for (String str : strArrSplit) {
            if (str.equalsIgnoreCase(this.aCodecType)) {
                return true;
            }
        }
        return false;
    }

    public boolean isVCodecInWhiteList() {
        String[] strArrSplit = "h264,hevc,mpeg4,mp3,aac,pcm,flac,yuv4,mjpeg,gif,png,bmp".split(",");
        if (strArrSplit.length <= 0) {
            return false;
        }
        for (String str : strArrSplit) {
            if (str.equalsIgnoreCase(this.vCodecType)) {
                return true;
            }
        }
        return false;
    }

    public boolean isResolutionValid() {
        return this.width <= 2560 && this.height <= 2560;
    }

    public void setMediaDuration(int i) {
        this.durationInMs = (i / 100) * 100;
    }
}
