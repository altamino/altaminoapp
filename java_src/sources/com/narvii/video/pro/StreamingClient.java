package com.narvii.video.pro;

/* JADX INFO: loaded from: classes8.dex */
public abstract class StreamingClient {
    public abstract void sendPCMData(byte[] bArr);

    public abstract void sendYUVData(byte[] bArr, int i10, int i11);

    public abstract void startStreaming();

    public abstract void stopStreaming();
}
