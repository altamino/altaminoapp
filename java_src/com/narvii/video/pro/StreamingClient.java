package com.narvii.video.pro;

/* loaded from: classes3.dex */
public abstract class StreamingClient {
    public abstract void sendPCMData(byte[] bArr);

    public abstract void sendYUVData(byte[] bArr, int i, int i2);

    public abstract void startStreaming();

    public abstract void stopStreaming();
}
