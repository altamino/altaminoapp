package com.narvii.nvplayer.exoplayer;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.upstream.cache.CacheUtil;
import com.google.android.exoplayer2.upstream.cache.ContentMetadata;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.text.TextUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* compiled from: ExoPreloadUtil.kt */
/* loaded from: classes3.dex */
public final class ExoPreloadUtil {
    public static final String TAG = "ExoPreloadUtil";
    private static VideoPreloadDelegate videoPreloadDelegate;
    public static final ExoPreloadUtil INSTANCE = new ExoPreloadUtil();
    private static ThreadPoolExecutor threadPoolExecutor = Utils.createThreadPoolExecutor(3, "exo-preload");
    private static WeakHashMap<String, Runnable> mWeakHashMap = new WeakHashMap<>();
    private static final ArrayList<Media> mediaList = new ArrayList<>();

    private ExoPreloadUtil() {
    }

    public final VideoPreloadDelegate getVideoPreloadDelegate() {
        return videoPreloadDelegate;
    }

    public final void setVideoPreloadDelegate(VideoPreloadDelegate videoPreloadDelegate2) {
        videoPreloadDelegate = videoPreloadDelegate2;
    }

    private final void cancelAllPreload() {
        Iterator<Map.Entry<String, Runnable>> it = mWeakHashMap.entrySet().iterator();
        while (it.hasNext()) {
            Runnable value = it.next().getValue();
            if (value != null) {
                Log.d(TAG, "cache: cancel");
                threadPoolExecutor.remove(value);
            }
        }
        mWeakHashMap.clear();
        mediaList.clear();
    }

    public final void startPreload(List<? extends Media> medias, final NVExoPlayer player, final Context context, boolean z) {
        Intrinsics.checkParameterIsNotNull(medias, "medias");
        Intrinsics.checkParameterIsNotNull(player, "player");
        Intrinsics.checkParameterIsNotNull(context, "context");
        if (z) {
            cancelAllPreload();
        }
        mediaList.clear();
        mediaList.addAll(resetPreloadUrlsAccordingToStrategy(medias));
        if (mediaList.isEmpty()) {
            return;
        }
        int size = mediaList.size();
        for (int i = 0; i < size; i++) {
            Media media = mediaList.get(i);
            Intrinsics.checkExpressionValueIsNotNull(media, "mediaList[i]");
            final Media media2 = media;
            String str = media2.url;
            Intrinsics.checkExpressionValueIsNotNull(str, "media.url");
            if (str.length() == 0) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: com.narvii.nvplayer.exoplayer.ExoPreloadUtil$startPreload$runnable$1
                @Override // java.lang.Runnable
                public final void run() throws IOException {
                    if (TextUtils.isEmpty(media2.url) || YoutubeUtils.isYtvScheme(media2.url)) {
                        return;
                    }
                    ExoPreloadUtil.INSTANCE.prepareCatch(media2, player, context);
                }
            };
            mWeakHashMap.put(media2.url, runnable);
            threadPoolExecutor.execute(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareCatch(Media media, NVExoPlayer nVExoPlayer, Context context) throws IOException {
        String url = media.url;
        Intrinsics.checkExpressionValueIsNotNull(url, "url");
        if (StringsKt__StringsJVMKt.startsWith$default(url, "http", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(url, "https", false, 2, null)) {
            Uri uri = Uri.parse(url);
            Log.d(TAG, "cache: " + uri + " started");
            if (((int) nVExoPlayer.getCache().getContentMetadata(Utils.getUrlWithoutQuery(url)).get(ContentMetadata.KEY_CONTENT_LENGTH, -1)) != -1) {
                Log.d(TAG, "cache: " + uri + " finished");
                return;
            }
            DataSpec dataSpec = new DataSpec(uri, 0L, determineCacheSize(media, nVExoPlayer), null);
            CacheDataSource cacheDataSourceCreateDataSource = nVExoPlayer.createCacheDataSourceFactory(uri, context).createDataSource();
            try {
                try {
                    CacheUtil.cache(dataSpec, nVExoPlayer.getCache(), nVExoPlayer.cacheKeyFactory, cacheDataSourceCreateDataSource, null, null);
                } catch (Exception e) {
                    Log.d(TAG, "cache exception: " + e.getLocalizedMessage() + ' ' + uri);
                    e.printStackTrace();
                }
                Log.d(TAG, "cache success: " + uri + ' ' + dataSpec.length);
            } finally {
                cacheDataSourceCreateDataSource.close();
            }
        }
    }

    private final List<Media> resetPreloadUrlsAccordingToStrategy(List<? extends Media> list) {
        VideoPreloadDelegate videoPreloadDelegate2 = videoPreloadDelegate;
        if (videoPreloadDelegate2 == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        if (videoPreloadDelegate2 != null) {
            return videoPreloadDelegate2.resetPreloadUrls(list);
        }
        Intrinsics.throwNpe();
        throw null;
    }

    public final String preloadStrategyDebugInfo() {
        VideoPreloadDelegate videoPreloadDelegate2 = videoPreloadDelegate;
        if (videoPreloadDelegate2 == null) {
            return "";
        }
        if (videoPreloadDelegate2 != null) {
            return videoPreloadDelegate2.preloadStrategyDebugInfo();
        }
        Intrinsics.throwNpe();
        throw null;
    }

    public final boolean isHighPreloadLevel() {
        VideoPreloadDelegate videoPreloadDelegate2 = videoPreloadDelegate;
        if (videoPreloadDelegate2 == null) {
            return false;
        }
        if (videoPreloadDelegate2 != null) {
            return videoPreloadDelegate2.isHighPreloadLevel();
        }
        Intrinsics.throwNpe();
        throw null;
    }

    private final long getContentLength(String str) {
        try {
            Response responseExecute = new OkHttpClient().newCall(new Request.Builder().url(str).build()).execute();
            if (responseExecute == null || !responseExecute.isSuccessful() || responseExecute.body() == null) {
                return 0L;
            }
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            long jContentLength = responseBodyBody.contentLength();
            ResponseBody responseBodyBody2 = responseExecute.body();
            if (responseBodyBody2 != null) {
                responseBodyBody2.close();
                return jContentLength;
            }
            Intrinsics.throwNpe();
            throw null;
        } catch (IOException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    private final long determineCacheSize(Media media, NVExoPlayer nVExoPlayer) {
        if (media.duration > 7000) {
            return nVExoPlayer.getPreCachedSize();
        }
        String str = media.url;
        Intrinsics.checkExpressionValueIsNotNull(str, "media.url");
        long contentLength = getContentLength(str);
        if (((int) contentLength) <= 0) {
            return nVExoPlayer.getPreCachedSize();
        }
        return Math.min(contentLength, nVExoPlayer.getPreCachedSize());
    }
}
