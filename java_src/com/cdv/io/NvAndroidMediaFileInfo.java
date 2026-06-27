package com.cdv.io;

/* loaded from: classes.dex */
public class NvAndroidMediaFileInfo {

    public static class MediaInfo {
        boolean hasVideoStream = false;
        long videoStreamDurationUs = 0;
        int height = 0;
        int width = 0;
        int rotation = 0;
        int frameRate = 0;
        boolean hasAudioStream = false;
        long audioStreamDurationUs = 0;
        int channelCount = 0;
        int sampleRate = 0;

        MediaInfo() {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.cdv.io.NvAndroidMediaFileInfo.MediaInfo getMediaInfoFromFile(java.lang.String r10, android.content.res.AssetManager r11) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "frame-rate"
            java.lang.String r1 = "rotation-degrees"
            r2 = 0
            android.media.MediaExtractor r9 = new android.media.MediaExtractor     // Catch: java.lang.Throwable -> Lba java.lang.Exception -> Lbd
            r9.<init>()     // Catch: java.lang.Throwable -> Lba java.lang.Exception -> Lbd
            if (r11 != 0) goto L11
            r9.setDataSource(r10)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            goto L28
        L11:
            android.content.res.AssetFileDescriptor r10 = r11.openFd(r10)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.io.FileDescriptor r4 = r10.getFileDescriptor()     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            long r5 = r10.getStartOffset()     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            long r7 = r10.getLength()     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r3 = r9
            r3.setDataSource(r4, r5, r7)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r10.close()     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
        L28:
            int r10 = r9.getTrackCount()     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r11 = 0
            r3 = -1
            r4 = -1
        L2f:
            if (r11 >= r10) goto L56
            android.media.MediaFormat r5 = r9.getTrackFormat(r11)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r6 = "mime"
            java.lang.String r5 = r5.getString(r6)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            if (r3 >= 0) goto L48
            java.lang.String r6 = "video/"
            boolean r6 = r5.startsWith(r6)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            if (r6 == 0) goto L48
            r3 = r11
            goto L53
        L48:
            if (r4 >= 0) goto L53
            java.lang.String r6 = "audio/"
            boolean r5 = r5.startsWith(r6)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            if (r5 == 0) goto L53
            r4 = r11
        L53:
            int r11 = r11 + 1
            goto L2f
        L56:
            com.cdv.io.NvAndroidMediaFileInfo$MediaInfo r10 = new com.cdv.io.NvAndroidMediaFileInfo$MediaInfo     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r10.<init>()     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r11 = "durationUs"
            r5 = 1
            if (r3 < 0) goto L95
            android.media.MediaFormat r3 = r9.getTrackFormat(r3)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            long r6 = r3.getLong(r11)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r10.videoStreamDurationUs = r6     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r6 = "width"
            int r6 = r3.getInteger(r6)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r10.width = r6     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r6 = "height"
            int r6 = r3.getInteger(r6)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r10.height = r6     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            boolean r6 = r3.containsKey(r1)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            if (r6 == 0) goto L87
            int r1 = r3.getInteger(r1)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r10.rotation = r1     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
        L87:
            boolean r1 = r3.containsKey(r0)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            if (r1 == 0) goto L93
            int r0 = r3.getInteger(r0)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r10.frameRate = r0     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
        L93:
            r10.hasVideoStream = r5     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
        L95:
            if (r4 < 0) goto Lb4
            android.media.MediaFormat r0 = r9.getTrackFormat(r4)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            long r3 = r0.getLong(r11)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r10.audioStreamDurationUs = r3     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r11 = "channel-count"
            int r11 = r0.getInteger(r11)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r10.channelCount = r11     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r11 = "sample-rate"
            int r11 = r0.getInteger(r11)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r10.sampleRate = r11     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r10.hasAudioStream = r5     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
        Lb4:
            r9.release()
            return r10
        Lb8:
            r10 = move-exception
            goto Lbf
        Lba:
            r10 = move-exception
            r9 = r2
            goto Lc9
        Lbd:
            r10 = move-exception
            r9 = r2
        Lbf:
            r10.printStackTrace()     // Catch: java.lang.Throwable -> Lc8
            if (r9 == 0) goto Lc7
            r9.release()
        Lc7:
            return r2
        Lc8:
            r10 = move-exception
        Lc9:
            if (r9 == 0) goto Lce
            r9.release()
        Lce:
            goto Ld0
        Lcf:
            throw r10
        Ld0:
            goto Lcf
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cdv.io.NvAndroidMediaFileInfo.getMediaInfoFromFile(java.lang.String, android.content.res.AssetManager):com.cdv.io.NvAndroidMediaFileInfo$MediaInfo");
    }
}
