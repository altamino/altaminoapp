package io.agora.rtc;

/* JADX INFO: loaded from: classes11.dex */
public interface IMetadataObserver {
    public static final int UNKNOWN_METADATA = -1;
    public static final int VIDEO_METADATA = 0;

    int getMaxMetadataSize();

    void onMetadataReceived(byte[] buffer, int uid, long timeStampMs);

    byte[] onReadyToSendMetadata(long timeStampMs);
}
