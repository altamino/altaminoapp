package com.narvii.nvplayer.exoplayer;

import android.app.Application;
import android.content.SharedPreferences;
import com.narvii.app.NVApplication;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VideoPreloadDelegate.kt */
/* loaded from: classes3.dex */
public final class VideoPreloadDelegate implements NVApplication.ApplicationLifecycleListener {
    public static final Companion Companion = new Companion(null);
    private static final int DOWN_GRADE_BUFFERING_DURATION = 2000;
    private static final int HI_RES_WITH_PRELOAD_LEVEL = 3;
    private static final int LOW_RES_WITHOUT_PRELOAD_LEVEL = 1;
    private static final int LOW_RES_WITH_PRELOAD_LEVEL = 2;
    private static final String TAG = "VideoPreloadDelegate";
    private static final int UP_GRADE_TO_LEVEL_1_FAIL_TIMES = 3;
    private static final int UP_GRADE_WITHOUT_BUFFERING_TIMES = 3;
    public static final int VIDEO_RES_360P = 2;
    public static final int VIDEO_RES_720P = 1;
    public static final int VIDEO_RES_DEFAULT = 0;
    public static final String VIDEO_RES_PREFS_KEY = "video_res_prefs_key";
    private long bufferingStartTime;
    private int forceVideoRes;
    private boolean keepVideoRes;
    private int lastState;
    private int noBufferTimes;
    private final NVExoPlayer player;
    private SharedPreferences prefs;
    private int preloadLevel;
    private boolean upgradeFailCountEnable;
    private int upgradeFailTimes;

    @Override // com.narvii.app.NVApplication.ApplicationLifecycleListener
    public void onApplicationResume(Application application) {
    }

    @Override // com.narvii.app.NVApplication.ApplicationLifecycleListener
    public void onApplicationStart(Application application) {
    }

    @Override // com.narvii.app.NVApplication.ApplicationLifecycleListener
    public void onApplicationStop(Application application) {
    }

    public VideoPreloadDelegate(NVExoPlayer player) {
        Intrinsics.checkParameterIsNotNull(player, "player");
        this.player = player;
        this.prefs = (SharedPreferences) NVApplication.instance().getService("prefs");
        NVApplication.instance().addLifecycleListener(this);
        int i = this.prefs.getInt(VIDEO_RES_PREFS_KEY, 0);
        if (i != 0) {
            setForceVideoRes(i);
        }
        this.preloadLevel = 3;
        this.lastState = 1;
    }

    public final NVExoPlayer getPlayer() {
        return this.player;
    }

    @Override // com.narvii.app.NVApplication.ApplicationLifecycleListener
    public void onApplicationPause(Application application) {
        this.upgradeFailTimes = 0;
        this.noBufferTimes = 0;
    }

    /* compiled from: VideoPreloadDelegate.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final int getForceVideoRes() {
        return this.forceVideoRes;
    }

    public final void setForceVideoRes(int i) {
        this.forceVideoRes = i;
        int i2 = this.forceVideoRes;
        if (i2 == 1) {
            this.player.loadLowResVideo = false;
            this.keepVideoRes = true;
        } else if (i2 == 2) {
            this.player.loadLowResVideo = true;
            this.keepVideoRes = true;
        } else {
            this.keepVideoRes = false;
        }
        this.prefs.edit().putInt(VIDEO_RES_PREFS_KEY, i).apply();
    }

    public final void onStateChanged(int i) {
        if (this.keepVideoRes) {
            return;
        }
        if (this.lastState == 2 && i == 3) {
            if (System.currentTimeMillis() - this.bufferingStartTime >= 2000) {
                downgradeLevel();
                if (this.upgradeFailCountEnable) {
                    this.upgradeFailCountEnable = false;
                    this.upgradeFailTimes++;
                }
            } else {
                onPositionDiscontinuity();
            }
        } else if (i == 2) {
            this.bufferingStartTime = System.currentTimeMillis();
        }
        this.lastState = i;
    }

    public final void onPositionDiscontinuity() {
        if (this.keepVideoRes) {
            return;
        }
        this.noBufferTimes++;
        if (this.noBufferTimes > 3) {
            upgradeLevel();
        }
    }

    private final void downgradeLevel() {
        if (this.keepVideoRes) {
            return;
        }
        this.noBufferTimes = 0;
        this.player.updatePreloadLevel();
        int i = this.preloadLevel;
        if (i == 1) {
            return;
        }
        this.preloadLevel = i - 1;
        if (this.preloadLevel == 2) {
            videoResDowngrade();
        }
    }

    private final void upgradeLevel() {
        if (this.keepVideoRes) {
            return;
        }
        this.noBufferTimes = 0;
        if (this.upgradeFailTimes < 3 || this.preloadLevel != 2) {
            this.player.updatePreloadLevel();
            int i = this.preloadLevel;
            if (i == 3) {
                return;
            }
            this.preloadLevel = i + 1;
            if (this.preloadLevel == 3) {
                videoResUpgrade();
            }
            this.upgradeFailCountEnable = true;
        }
    }

    private final void videoResUpgrade() {
        this.player.videoResUpgrade();
    }

    private final void videoResDowngrade() {
        this.player.videoResDowngrade();
    }

    public final List<Media> resetPreloadUrls(List<? extends Media> medias) {
        Intrinsics.checkParameterIsNotNull(medias, "medias");
        if (medias.isEmpty()) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        if (this.keepVideoRes) {
            int i = this.forceVideoRes;
            if (i == 1) {
                CollectionsKt___CollectionsKt.toList(medias);
            } else if (i == 2) {
                if (Utils.videoSupportLowBitrate(medias.get(0).url)) {
                    ArrayList arrayList = new ArrayList();
                    for (Media media : medias) {
                        String str = media.url;
                        Intrinsics.checkExpressionValueIsNotNull(str, "it.url");
                        if (str.length() > 0) {
                            media.url = Utils.getLowResVideoUrl(media.url);
                            arrayList.add(media);
                        }
                    }
                    return arrayList;
                }
                return CollectionsKt__CollectionsKt.emptyList();
            }
        }
        int i2 = this.preloadLevel;
        if (i2 == 1) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        if (i2 != 2) {
            if (i2 == 3) {
                return CollectionsKt___CollectionsKt.toList(medias);
            }
            return CollectionsKt__CollectionsKt.emptyList();
        }
        if (Utils.videoSupportLowBitrate(medias.get(0).url)) {
            ArrayList arrayList2 = new ArrayList();
            for (Media media2 : medias) {
                String str2 = media2.url;
                Intrinsics.checkExpressionValueIsNotNull(str2, "it.url");
                if (str2.length() > 0) {
                    media2.url = Utils.getLowResVideoUrl(media2.url);
                    arrayList2.add(media2);
                }
            }
            return arrayList2;
        }
        return CollectionsKt__CollectionsKt.emptyList();
    }

    public final String preloadStrategyDebugInfo() {
        if (this.keepVideoRes) {
            StringBuilder sb = new StringBuilder();
            sb.append("force preload ");
            sb.append(this.forceVideoRes == 2 ? "360P" : "720P");
            return sb.toString();
        }
        int i = this.preloadLevel;
        return i != 1 ? i != 2 ? i != 3 ? "" : "Lv1: Hi-res, with preload" : "Lv2: Low-res, with preload" : "Lv3: Low-res, no preload";
    }

    public final boolean isHighPreloadLevel() {
        return this.preloadLevel == 3;
    }
}
