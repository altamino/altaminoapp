package com.narvii.editor.cropping.dynamic.offscreen;

import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* compiled from: FileMuxer.kt */
/* loaded from: classes2.dex */
public final class FileMuxer {
    public static final FileMuxer INSTANCE = new FileMuxer();
    public static final String TAG = "FileMuxer";

    private FileMuxer() {
    }

    public final void muxeVideoAndAudio(String audioPath, String videoPath, String destPath) throws IOException {
        Intrinsics.checkParameterIsNotNull(audioPath, "audioPath");
        Intrinsics.checkParameterIsNotNull(videoPath, "videoPath");
        Intrinsics.checkParameterIsNotNull(destPath, "destPath");
        MediaMuxer mediaMuxer = new MediaMuxer(destPath, 0);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1048576);
        MediaExtractor mediaExtractor = new MediaExtractor();
        mediaExtractor.setDataSource(audioPath);
        int trackCount = mediaExtractor.getTrackCount();
        int iAddTrack = 0;
        while (true) {
            if (iAddTrack >= trackCount) {
                iAddTrack = -1;
                break;
            }
            String mime = mediaExtractor.getTrackFormat(iAddTrack).getString(IMediaFormat.KEY_MIME);
            Intrinsics.checkExpressionValueIsNotNull(mime, "mime");
            if (StringsKt__StringsJVMKt.startsWith$default(mime, "audio", false, 2, null)) {
                break;
            } else {
                iAddTrack++;
            }
        }
        if (iAddTrack == -1) {
            Log.d(TAG, "no audio track : " + audioPath);
        } else {
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(iAddTrack);
            Intrinsics.checkExpressionValueIsNotNull(trackFormat, "audioExtractor.getTrackFormat(audioTrackIndex)");
            mediaExtractor.selectTrack(iAddTrack);
            iAddTrack = mediaMuxer.addTrack(trackFormat);
        }
        MediaExtractor mediaExtractor2 = new MediaExtractor();
        mediaExtractor2.setDataSource(videoPath);
        int trackCount2 = mediaExtractor2.getTrackCount();
        int i = 0;
        while (true) {
            if (i >= trackCount2) {
                i = -1;
                break;
            }
            String mime2 = mediaExtractor2.getTrackFormat(i).getString(IMediaFormat.KEY_MIME);
            Intrinsics.checkExpressionValueIsNotNull(mime2, "mime");
            if (StringsKt__StringsJVMKt.startsWith$default(mime2, "video/", false, 2, null)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            Log.d(TAG, "no video track: " + videoPath);
            return;
        }
        mediaExtractor2.selectTrack(i);
        MediaFormat trackFormat2 = mediaExtractor2.getTrackFormat(i);
        Intrinsics.checkExpressionValueIsNotNull(trackFormat2, "videoExtractor.getTrackFormat(videoTrackIndex)");
        int iAddTrack2 = mediaMuxer.addTrack(trackFormat2);
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
}
