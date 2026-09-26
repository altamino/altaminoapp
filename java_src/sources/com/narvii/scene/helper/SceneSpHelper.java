package com.narvii.scene.helper;

import android.content.SharedPreferences;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.scene.model.SceneRecentMedia;
import com.narvii.util.DateUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.YoutubeUtils;
import java.io.File;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes7.dex */
public final class SceneSpHelper {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int DAYMS = 86400000;

    @NotNull
    public static final String KEY_RECENT_VIDEO = "key_recent_video";

    @NotNull
    public static final String SP_RECENT_MEDIA = "recent_media";

    @NotNull
    private final NVContext ctx;

    @NotNull
    private final m photoManager$delegate;

    @NotNull
    private final m sp$delegate;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public SceneSpHelper(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        this.photoManager$delegate = o.a(new SceneSpHelper$photoManager$2(this));
        this.sp$delegate = o.a(new SceneSpHelper$sp$2(this));
    }

    private final SharedPreferences getSp() {
        return (SharedPreferences) this.sp$delegate.getValue();
    }

    @NotNull
    public final PhotoManager getPhotoManager() {
        Object value = this.photoManager$delegate.getValue();
        t.i(value, "getValue(...)");
        return (PhotoManager) value;
    }

    public final void saveRecentVideo(@NotNull Media media, @NotNull String title) {
        t.j(media, "media");
        t.j(title, "title");
        SceneRecentMedia sceneRecentMedia = new SceneRecentMedia();
        sceneRecentMedia.createTime = System.currentTimeMillis();
        sceneRecentMedia.media = media;
        sceneRecentMedia.title = title;
        String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(media.url);
        if (youtubeVideoIdFromUrl != null) {
            sceneRecentMedia.media.coverImage = YoutubeUtils.getDefaultYoutubeImage(youtubeVideoIdFromUrl);
        }
        getSp().edit().putString(KEY_RECENT_VIDEO, JacksonUtils.writeAsString(sceneRecentMedia)).apply();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:6:0x0023  */
    @Nullable
    public final SceneRecentMedia getRecentVideo() {
        Media media;
        String url;
        File path;
        SceneRecentMedia sceneRecentMedia = (SceneRecentMedia) JacksonUtils.readAs(getSp().getString(KEY_RECENT_VIDEO, null), SceneRecentMedia.class);
        if (sceneRecentMedia != null) {
            if (System.currentTimeMillis() - sceneRecentMedia.createTime > DateUtils.ONE_DAY || (media = sceneRecentMedia.media) == null || (url = media.url) == null) {
                sceneRecentMedia = null;
            } else {
                t.i(url, "url");
                if (!u.P(url, "file://", false, 2, null)) {
                    String url2 = sceneRecentMedia.media.url;
                    t.i(url2, "url");
                    if (u.P(url2, "photo://", false, 2, null)) {
                        path = getPhotoManager().getPath(sceneRecentMedia.media.url);
                        if (path != null || !path.exists()) {
                            sceneRecentMedia = null;
                        }
                    }
                } else {
                    path = getPhotoManager().getPath(sceneRecentMedia.media.url);
                    if (path != null) {
                        sceneRecentMedia = null;
                    } else {
                        sceneRecentMedia = null;
                    }
                }
            }
            if (sceneRecentMedia == null) {
                getSp().edit().putString(KEY_RECENT_VIDEO, null).apply();
            }
        }
        return sceneRecentMedia;
    }
}
