package com.narvii.scene.helper;

import android.content.SharedPreferences;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.scene.model.SceneRecentMedia;
import com.narvii.util.JacksonUtils;
import com.narvii.util.YoutubeUtils;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: SceneSpHelper.kt */
/* loaded from: classes3.dex */
public final class SceneSpHelper {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneSpHelper.class), "photoManager", "getPhotoManager()Lcom/narvii/photos/PhotoManager;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneSpHelper.class), "sp", "getSp()Landroid/content/SharedPreferences;"))};
    public static final Companion Companion = new Companion(null);
    public static final int DAYMS = 86400000;
    public static final String KEY_RECENT_VIDEO = "key_recent_video";
    public static final String SP_RECENT_MEDIA = "recent_media";
    private final NVContext ctx;
    private final Lazy photoManager$delegate;
    private final Lazy sp$delegate;

    private final SharedPreferences getSp() {
        Lazy lazy = this.sp$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (SharedPreferences) lazy.getValue();
    }

    public final PhotoManager getPhotoManager() {
        Lazy lazy = this.photoManager$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (PhotoManager) lazy.getValue();
    }

    public SceneSpHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.photoManager$delegate = LazyKt__LazyJVMKt.lazy(new Function0<PhotoManager>() { // from class: com.narvii.scene.helper.SceneSpHelper$photoManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final PhotoManager invoke() {
                return (PhotoManager) this.this$0.getCtx().getService("photo");
            }
        });
        this.sp$delegate = LazyKt__LazyJVMKt.lazy(new Function0<SharedPreferences>() { // from class: com.narvii.scene.helper.SceneSpHelper$sp$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SharedPreferences invoke() {
                return this.this$0.getCtx().getContext().getSharedPreferences(SceneSpHelper.SP_RECENT_MEDIA, 0);
            }
        });
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    /* compiled from: SceneSpHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void saveRecentVideo(Media media, String title) {
        Intrinsics.checkParameterIsNotNull(media, "media");
        Intrinsics.checkParameterIsNotNull(title, "title");
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

    /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.narvii.scene.model.SceneRecentMedia getRecentVideo() {
        /*
            r8 = this;
            android.content.SharedPreferences r0 = r8.getSp()
            java.lang.String r1 = "key_recent_video"
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            java.lang.Class<com.narvii.scene.model.SceneRecentMedia> r3 = com.narvii.scene.model.SceneRecentMedia.class
            java.lang.Object r0 = com.narvii.util.JacksonUtils.readAs(r0, r3)
            com.narvii.scene.model.SceneRecentMedia r0 = (com.narvii.scene.model.SceneRecentMedia) r0
            if (r0 == 0) goto L73
            long r3 = java.lang.System.currentTimeMillis()
            long r5 = r0.createTime
            long r3 = r3 - r5
            r5 = 86400000(0x5265c00, float:7.82218E-36)
            long r5 = (long) r5
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L26
        L24:
            r0 = r2
            goto L62
        L26:
            com.narvii.model.Media r3 = r0.media
            if (r3 == 0) goto L24
            java.lang.String r3 = r3.url
            if (r3 != 0) goto L2f
            goto L24
        L2f:
            java.lang.String r4 = "srm.media.url"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4)
            r5 = 2
            r6 = 0
            java.lang.String r7 = "file://"
            boolean r3 = kotlin.text.StringsKt.contains$default(r3, r7, r6, r5, r2)
            if (r3 != 0) goto L4d
            com.narvii.model.Media r3 = r0.media
            java.lang.String r3 = r3.url
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4)
            java.lang.String r4 = "photo://"
            boolean r3 = kotlin.text.StringsKt.contains$default(r3, r4, r6, r5, r2)
            if (r3 == 0) goto L62
        L4d:
            com.narvii.photos.PhotoManager r3 = r8.getPhotoManager()
            com.narvii.model.Media r4 = r0.media
            java.lang.String r4 = r4.url
            java.io.File r3 = r3.getPath(r4)
            if (r3 == 0) goto L24
            boolean r3 = r3.exists()
            if (r3 != 0) goto L62
            goto L24
        L62:
            if (r0 != 0) goto L73
            android.content.SharedPreferences r3 = r8.getSp()
            android.content.SharedPreferences$Editor r3 = r3.edit()
            android.content.SharedPreferences$Editor r1 = r3.putString(r1, r2)
            r1.apply()
        L73:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.scene.helper.SceneSpHelper.getRecentVideo():com.narvii.scene.model.SceneRecentMedia");
    }
}
