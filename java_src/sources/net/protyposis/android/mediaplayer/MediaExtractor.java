package net.protyposis.android.mediaplayer;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.net.Uri;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes10.dex */
public class MediaExtractor {
    public static final String MEDIA_FORMAT_EXTENSION_KEY_DAR = "mpx-dar";
    public static final int SAMPLE_FLAG_ENCRYPTED = 2;
    public static final int SAMPLE_FLAG_SYNC = 1;
    public static final int SEEK_TO_CLOSEST_SYNC = 2;
    public static final int SEEK_TO_NEXT_SYNC = 1;
    public static final int SEEK_TO_PREVIOUS_SYNC = 0;
    private android.media.MediaExtractor mApiExtractor;

    public boolean hasTrackFormatChanged() {
        return false;
    }

    public final void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException {
        this.mApiExtractor.setDataSource(context, uri, map);
    }

    public boolean advance() {
        return this.mApiExtractor.advance();
    }

    public long getCachedDuration() {
        return this.mApiExtractor.getCachedDuration();
    }

    @TargetApi(18)
    public Map<UUID, byte[]> getPsshInfo() {
        return this.mApiExtractor.getPsshInfo();
    }

    public boolean getSampleCryptoInfo(MediaCodec.CryptoInfo cryptoInfo) {
        return this.mApiExtractor.getSampleCryptoInfo(cryptoInfo);
    }

    public int getSampleFlags() {
        return this.mApiExtractor.getSampleFlags();
    }

    public long getSampleTime() {
        return this.mApiExtractor.getSampleTime();
    }

    public int getSampleTrackIndex() {
        return this.mApiExtractor.getSampleTrackIndex();
    }

    public final int getTrackCount() {
        return this.mApiExtractor.getTrackCount();
    }

    public MediaFormat getTrackFormat(int i10) {
        MediaFormat trackFormat = this.mApiExtractor.getTrackFormat(i10);
        if (trackFormat.getString("mime").startsWith("video/") && trackFormat.containsKey("width") && trackFormat.containsKey("height")) {
            trackFormat.setFloat(MEDIA_FORMAT_EXTENSION_KEY_DAR, trackFormat.getInteger("width") / trackFormat.getInteger("height"));
        }
        return trackFormat;
    }

    public boolean hasCacheReachedEndOfStream() {
        return this.mApiExtractor.hasCacheReachedEndOfStream();
    }

    public int readSampleData(ByteBuffer byteBuffer, int i10) {
        return this.mApiExtractor.readSampleData(byteBuffer, i10);
    }

    public void release() {
        this.mApiExtractor.release();
    }

    protected void renewExtractor() {
        android.media.MediaExtractor mediaExtractor = this.mApiExtractor;
        if (mediaExtractor != null) {
            mediaExtractor.release();
        }
        this.mApiExtractor = new android.media.MediaExtractor();
    }

    public void seekTo(long j6, int i10) throws IOException {
        this.mApiExtractor.seekTo(j6, i10);
    }

    public void selectTrack(int i10) {
        this.mApiExtractor.selectTrack(i10);
    }

    public final void setDataSource(String str, Map<String, String> map) throws IOException {
        this.mApiExtractor.setDataSource(str, map);
    }

    public void unselectTrack(int i10) {
        this.mApiExtractor.unselectTrack(i10);
    }

    public MediaExtractor() {
        renewExtractor();
    }

    public final void setDataSource(String str) throws IOException {
        this.mApiExtractor.setDataSource(str);
    }

    public final void setDataSource(FileDescriptor fileDescriptor) throws IOException {
        this.mApiExtractor.setDataSource(fileDescriptor);
    }

    public final void setDataSource(FileDescriptor fileDescriptor, long j6, long j10) throws IOException {
        this.mApiExtractor.setDataSource(fileDescriptor, j6, j10);
    }
}
