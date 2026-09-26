package com.narvii.editor.cropping.dynamic.offscreen;

import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class FileMuxer {

    @NotNull
    public static final FileMuxer INSTANCE = new FileMuxer();

    @NotNull
    public static final String TAG = "FileMuxer";

    public final void muxeVideoAndAudio(@NotNull String audioPath, @NotNull String videoPath, @NotNull String destPath) throws IOException {
        String str;
        int i10;
        t.j(audioPath, "audioPath");
        t.j(videoPath, "videoPath");
        t.j(destPath, "destPath");
        MediaMuxer mediaMuxer = new MediaMuxer(destPath, 0);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1048576);
        MediaExtractor mediaExtractor = new MediaExtractor();
        mediaExtractor.setDataSource(audioPath);
        int trackCount = mediaExtractor.getTrackCount();
        int iAddTrack = 0;
        while (true) {
            str = "mime";
            if (iAddTrack >= trackCount) {
                iAddTrack = -1;
                break;
            }
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(iAddTrack);
            t.i(trackFormat, "getTrackFormat(...)");
            String string = trackFormat.getString("mime");
            if (string != null && kotlin.text.t.K(string, "audio", false, 2, null)) {
                break;
            } else {
                iAddTrack++;
            }
        }
        if (iAddTrack == -1) {
            Log.d(TAG, "no audio track : " + audioPath);
        } else {
            MediaFormat trackFormat2 = mediaExtractor.getTrackFormat(iAddTrack);
            t.i(trackFormat2, "getTrackFormat(...)");
            mediaExtractor.selectTrack(iAddTrack);
            iAddTrack = mediaMuxer.addTrack(trackFormat2);
        }
        MediaExtractor mediaExtractor2 = new MediaExtractor();
        mediaExtractor2.setDataSource(videoPath);
        int trackCount2 = mediaExtractor2.getTrackCount();
        int i11 = 0;
        while (true) {
            if (i11 >= trackCount2) {
                i10 = -1;
                i11 = -1;
                break;
            }
            MediaFormat trackFormat3 = mediaExtractor2.getTrackFormat(i11);
            t.i(trackFormat3, "getTrackFormat(...)");
            String string2 = trackFormat3.getString(str);
            String str2 = str;
            if (string2 != null && kotlin.text.t.K(string2, "video/", false, 2, null)) {
                i10 = -1;
                break;
            } else {
                i11++;
                str = str2;
            }
        }
        if (i11 == i10) {
            Log.d(TAG, "no video track: " + videoPath);
            return;
        }
        mediaExtractor2.selectTrack(i11);
        MediaFormat trackFormat4 = mediaExtractor2.getTrackFormat(i11);
        t.i(trackFormat4, "getTrackFormat(...)");
        int iAddTrack2 = mediaMuxer.addTrack(trackFormat4);
        mediaMuxer.start();
        byteBufferAllocate.clear();
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        bufferInfo.presentationTimeUs = 0L;
        for (int sampleData = mediaExtractor2.readSampleData(byteBufferAllocate, 0); sampleData > 0; sampleData = mediaExtractor2.readSampleData(byteBufferAllocate, 0)) {
            bufferInfo.size = sampleData;
            bufferInfo.flags = mediaExtractor2.getSampleFlags();
            bufferInfo.offset = 0;
            bufferInfo.presentationTimeUs = mediaExtractor2.getSampleTime();
            mediaMuxer.writeSampleData(iAddTrack2, byteBufferAllocate, bufferInfo);
            mediaExtractor2.advance();
        }
        byteBufferAllocate.clear();
        MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
        bufferInfo2.presentationTimeUs = 0L;
        for (int sampleData2 = mediaExtractor.readSampleData(byteBufferAllocate, 0); sampleData2 > 0; sampleData2 = mediaExtractor.readSampleData(byteBufferAllocate, 0)) {
            bufferInfo2.size = sampleData2;
            bufferInfo2.flags = mediaExtractor.getSampleFlags();
            bufferInfo2.offset = 0;
            bufferInfo2.presentationTimeUs = mediaExtractor.getSampleTime();
            mediaMuxer.writeSampleData(iAddTrack, byteBufferAllocate, bufferInfo2);
            mediaExtractor.advance();
        }
        mediaExtractor.release();
        mediaExtractor2.release();
        mediaMuxer.stop();
        mediaMuxer.release();
        File file = new File(videoPath);
        if (file.exists()) {
            file.delete();
        }
    }

    private FileMuxer() {
    }
}
