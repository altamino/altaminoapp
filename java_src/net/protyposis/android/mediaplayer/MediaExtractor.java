package net.protyposis.android.mediaplayer;

import android.content.Context;
import android.media.MediaFormat;
import android.net.Uri;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* loaded from: classes4.dex */
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

    public MediaExtractor() {
        renewExtractor();
    }

    protected void renewExtractor() {
        android.media.MediaExtractor mediaExtractor = this.mApiExtractor;
        if (mediaExtractor != null) {
            mediaExtractor.release();
        }
        this.mApiExtractor = new android.media.MediaExtractor();
    }

    public final void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException {
        this.mApiExtractor.setDataSource(context, uri, map);
    }

    public void release() {
        this.mApiExtractor.release();
    }

    public final int getTrackCount() {
        return this.mApiExtractor.getTrackCount();
    }

    public MediaFormat getTrackFormat(int i) {
        MediaFormat trackFormat = this.mApiExtractor.getTrackFormat(i);
        if (trackFormat.getString(IMediaFormat.KEY_MIME).startsWith("video/") && trackFormat.containsKey("width") && trackFormat.containsKey("height")) {
            trackFormat.setFloat(MEDIA_FORMAT_EXTENSION_KEY_DAR, trackFormat.getInteger("width") / trackFormat.getInteger("height"));
        }
        return trackFormat;
    }

    public void selectTrack(int i) {
        this.mApiExtractor.selectTrack(i);
    }

    public void seekTo(long j, int i) throws IOException {
        this.mApiExtractor.seekTo(j, i);
    }

    public boolean advance() {
        return this.mApiExtractor.advance();
    }

    public int readSampleData(ByteBuffer byteBuffer, int i) {
        return this.mApiExtractor.readSampleData(byteBuffer, i);
    }

    public int getSampleTrackIndex() {
        return this.mApiExtractor.getSampleTrackIndex();
    }

    public long getSampleTime() {
        return this.mApiExtractor.getSampleTime();
    }

    public long getCachedDuration() {
        return this.mApiExtractor.getCachedDuration();
    }

    public boolean hasCacheReachedEndOfStream() {
        return this.mApiExtractor.hasCacheReachedEndOfStream();
    }
}
