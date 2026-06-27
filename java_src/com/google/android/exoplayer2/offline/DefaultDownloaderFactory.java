package com.google.android.exoplayer2.offline;

import android.net.Uri;
import java.lang.reflect.Constructor;
import java.util.List;

/* loaded from: classes.dex */
public class DefaultDownloaderFactory implements DownloaderFactory {
    private static final Constructor<? extends Downloader> DASH_DOWNLOADER_CONSTRUCTOR;
    private static final Constructor<? extends Downloader> HLS_DOWNLOADER_CONSTRUCTOR;
    private static final Constructor<? extends Downloader> SS_DOWNLOADER_CONSTRUCTOR;
    private final DownloaderConstructorHelper downloaderConstructorHelper;

    static {
        Constructor<? extends Downloader> downloaderConstructor;
        Constructor<? extends Downloader> downloaderConstructor2;
        Constructor<? extends Downloader> downloaderConstructor3 = null;
        try {
            downloaderConstructor = getDownloaderConstructor(Class.forName("com.google.android.exoplayer2.source.dash.offline.DashDownloader"));
        } catch (ClassNotFoundException unused) {
            downloaderConstructor = null;
        }
        DASH_DOWNLOADER_CONSTRUCTOR = downloaderConstructor;
        try {
            downloaderConstructor2 = getDownloaderConstructor(Class.forName("com.google.android.exoplayer2.source.hls.offline.HlsDownloader"));
        } catch (ClassNotFoundException unused2) {
            downloaderConstructor2 = null;
        }
        HLS_DOWNLOADER_CONSTRUCTOR = downloaderConstructor2;
        try {
            downloaderConstructor3 = getDownloaderConstructor(Class.forName("com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader"));
        } catch (ClassNotFoundException unused3) {
        }
        SS_DOWNLOADER_CONSTRUCTOR = downloaderConstructor3;
    }

    public DefaultDownloaderFactory(DownloaderConstructorHelper downloaderConstructorHelper) {
        this.downloaderConstructorHelper = downloaderConstructorHelper;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
    @Override // com.google.android.exoplayer2.offline.DownloaderFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.offline.Downloader createDownloader(com.google.android.exoplayer2.offline.DownloadRequest r7) {
        /*
            r6 = this;
            java.lang.String r0 = r7.type
            int r1 = r0.hashCode()
            r2 = 3680(0xe60, float:5.157E-42)
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == r2) goto L3c
            r2 = 103407(0x193ef, float:1.44904E-40)
            if (r1 == r2) goto L32
            r2 = 3075986(0x2eef92, float:4.310374E-39)
            if (r1 == r2) goto L28
            r2 = 1131547531(0x43720b8b, float:242.04509)
            if (r1 == r2) goto L1d
            goto L47
        L1d:
            java.lang.String r1 = "progressive"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L47
            r0 = 0
            goto L48
        L28:
            java.lang.String r1 = "dash"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L47
            r0 = 1
            goto L48
        L32:
            java.lang.String r1 = "hls"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L47
            r0 = 2
            goto L48
        L3c:
            java.lang.String r1 = "ss"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L47
            r0 = 3
            goto L48
        L47:
            r0 = -1
        L48:
            if (r0 == 0) goto L7e
            if (r0 == r5) goto L77
            if (r0 == r4) goto L70
            if (r0 != r3) goto L57
            java.lang.reflect.Constructor<? extends com.google.android.exoplayer2.offline.Downloader> r0 = com.google.android.exoplayer2.offline.DefaultDownloaderFactory.SS_DOWNLOADER_CONSTRUCTOR
            com.google.android.exoplayer2.offline.Downloader r7 = r6.createDownloader(r7, r0)
            return r7
        L57:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unsupported type: "
            r1.append(r2)
            java.lang.String r7 = r7.type
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            r0.<init>(r7)
            throw r0
        L70:
            java.lang.reflect.Constructor<? extends com.google.android.exoplayer2.offline.Downloader> r0 = com.google.android.exoplayer2.offline.DefaultDownloaderFactory.HLS_DOWNLOADER_CONSTRUCTOR
            com.google.android.exoplayer2.offline.Downloader r7 = r6.createDownloader(r7, r0)
            return r7
        L77:
            java.lang.reflect.Constructor<? extends com.google.android.exoplayer2.offline.Downloader> r0 = com.google.android.exoplayer2.offline.DefaultDownloaderFactory.DASH_DOWNLOADER_CONSTRUCTOR
            com.google.android.exoplayer2.offline.Downloader r7 = r6.createDownloader(r7, r0)
            return r7
        L7e:
            com.google.android.exoplayer2.offline.ProgressiveDownloader r0 = new com.google.android.exoplayer2.offline.ProgressiveDownloader
            android.net.Uri r1 = r7.uri
            java.lang.String r7 = r7.customCacheKey
            com.google.android.exoplayer2.offline.DownloaderConstructorHelper r2 = r6.downloaderConstructorHelper
            r0.<init>(r1, r7, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.offline.DefaultDownloaderFactory.createDownloader(com.google.android.exoplayer2.offline.DownloadRequest):com.google.android.exoplayer2.offline.Downloader");
    }

    private Downloader createDownloader(DownloadRequest downloadRequest, Constructor<? extends Downloader> constructor) {
        if (constructor == null) {
            throw new IllegalStateException("Module missing for: " + downloadRequest.type);
        }
        try {
            return constructor.newInstance(downloadRequest.uri, downloadRequest.streamKeys, this.downloaderConstructorHelper);
        } catch (Exception e) {
            throw new RuntimeException("Failed to instantiate downloader for: " + downloadRequest.type, e);
        }
    }

    private static Constructor<? extends Downloader> getDownloaderConstructor(Class<?> cls) {
        try {
            return cls.asSubclass(Downloader.class).getConstructor(Uri.class, List.class, DownloaderConstructorHelper.class);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException("Downloader constructor missing", e);
        }
    }
}
