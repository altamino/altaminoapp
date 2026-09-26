package com.narvii.nvplayer.exoplayer;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.OptIn;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.datasource.cache.CacheWriter;
import androidx.media3.datasource.cache.ContentMetadata;
import androidx.webkit.ProxyConfig;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
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
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class ExoPreloadUtil {

    @NotNull
    public static final String TAG = "ExoPreloadUtil";

    @Nullable
    private static VideoPreloadDelegate videoPreloadDelegate;

    @NotNull
    public static final ExoPreloadUtil INSTANCE = new ExoPreloadUtil();
    private static ThreadPoolExecutor threadPoolExecutor = Utils.createThreadPoolExecutor(3, "exo-preload");

    @NotNull
    private static WeakHashMap<String, Runnable> mWeakHashMap = new WeakHashMap<>();

    @NotNull
    private static final ArrayList<Media> mediaList = new ArrayList<>();

    @Nullable
    public final VideoPreloadDelegate getVideoPreloadDelegate() {
        return videoPreloadDelegate;
    }

    public final void setVideoPreloadDelegate(@Nullable VideoPreloadDelegate videoPreloadDelegate2) {
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

    private final long determineCacheSize(Media media, NVExoPlayer nVExoPlayer) {
        if (media.duration > 7000) {
            return nVExoPlayer.getPreCachedSize();
        }
        String url = media.url;
        t.i(url, "url");
        long contentLength = getContentLength(url);
        return ((int) contentLength) <= 0 ? nVExoPlayer.getPreCachedSize() : Math.min(contentLength, nVExoPlayer.getPreCachedSize());
    }

    private final long getContentLength(String str) {
        try {
            Response responseExecute = FirebasePerfOkHttpClient.execute(new OkHttpClient().newCall(new Request.Builder().url(str).build()));
            if (responseExecute == null || !responseExecute.isSuccessful() || responseExecute.body() == null) {
                return 0L;
            }
            ResponseBody responseBodyBody = responseExecute.body();
            t.g(responseBodyBody);
            long jContentLength = responseBodyBody.contentLength();
            ResponseBody responseBodyBody2 = responseExecute.body();
            t.g(responseBodyBody2);
            responseBodyBody2.close();
            return jContentLength;
        } catch (IOException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    @OptIn
    private final void prepareCatch(Media media, NVExoPlayer nVExoPlayer, Context context) throws IOException {
        String str = media.url;
        t.g(str);
        if (kotlin.text.t.K(str, ProxyConfig.MATCH_HTTP, false, 2, null) || kotlin.text.t.K(str, ProxyConfig.MATCH_HTTPS, false, 2, null)) {
            Uri uri = Uri.parse(str);
            Log.d(TAG, "cache: " + uri + " started");
            if (((int) nVExoPlayer.getCache().getContentMetadata(Utils.getUrlWithoutQuery(str)).get(ContentMetadata.KEY_CONTENT_LENGTH, -1L)) != -1) {
                Log.d(TAG, "cache: " + uri + " finished");
                return;
            }
            DataSpec dataSpecA = new DataSpec.Builder().i(uri).k(0L).g(determineCacheSize(media, nVExoPlayer)).a();
            t.i(dataSpecA, "build(...)");
            CacheDataSource cacheDataSourceCreateDataSource = nVExoPlayer.createCacheDataSourceFactory(uri, context).createDataSource();
            t.i(cacheDataSourceCreateDataSource, "createDataSource(...)");
            try {
                try {
                    new CacheWriter(cacheDataSourceCreateDataSource, dataSpecA, null, null).a();
                } catch (Exception e) {
                    Log.d(TAG, "cache exception: " + e.getLocalizedMessage() + ' ' + uri);
                    e.printStackTrace();
                }
                cacheDataSourceCreateDataSource.close();
                Log.d(TAG, "cache success: " + uri + ' ' + dataSpecA.length);
            } catch (Throwable th) {
                cacheDataSourceCreateDataSource.close();
                throw th;
            }
        }
    }

    private final List<Media> resetPreloadUrlsAccordingToStrategy(List<? extends Media> list) {
        VideoPreloadDelegate videoPreloadDelegate2 = videoPreloadDelegate;
        if (videoPreloadDelegate2 == null) {
            return v.m();
        }
        t.g(videoPreloadDelegate2);
        return videoPreloadDelegate2.resetPreloadUrls(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startPreload$lambda$0(Media media, NVExoPlayer player, Context context) throws IOException {
        t.j(media, "$media");
        t.j(player, "$player");
        t.j(context, "$context");
        if (TextUtils.isEmpty(media.url) || YoutubeUtils.isYtvScheme(media.url)) {
            return;
        }
        INSTANCE.prepareCatch(media, player, context);
    }

    public final boolean isHighPreloadLevel() {
        VideoPreloadDelegate videoPreloadDelegate2 = videoPreloadDelegate;
        if (videoPreloadDelegate2 == null) {
            return false;
        }
        t.g(videoPreloadDelegate2);
        return videoPreloadDelegate2.isHighPreloadLevel();
    }

    @NotNull
    public final String preloadStrategyDebugInfo() {
        VideoPreloadDelegate videoPreloadDelegate2 = videoPreloadDelegate;
        if (videoPreloadDelegate2 == null) {
            return "";
        }
        t.g(videoPreloadDelegate2);
        return videoPreloadDelegate2.preloadStrategyDebugInfo();
    }

    @OptIn
    public final void startPreload(@NotNull List<? extends Media> medias, @NotNull final NVExoPlayer player, @NotNull final Context context, boolean z6) {
        t.j(medias, "medias");
        t.j(player, "player");
        t.j(context, "context");
        if (z6) {
            cancelAllPreload();
        }
        ArrayList<Media> arrayList = mediaList;
        arrayList.clear();
        arrayList.addAll(resetPreloadUrlsAccordingToStrategy(medias));
        if (arrayList.isEmpty()) {
            return;
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Media media = mediaList.get(i10);
            t.i(media, "get(...)");
            final Media media2 = media;
            String url = media2.url;
            t.i(url, "url");
            if (url.length() == 0) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: com.narvii.nvplayer.exoplayer.a
                @Override // java.lang.Runnable
                public final void run() throws IOException {
                    ExoPreloadUtil.startPreload$lambda$0(media2, player, context);
                }
            };
            mWeakHashMap.put(media2.url, runnable);
            threadPoolExecutor.execute(runnable);
        }
    }

    private ExoPreloadUtil() {
    }
}
