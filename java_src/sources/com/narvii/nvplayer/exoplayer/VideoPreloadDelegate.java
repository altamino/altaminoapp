package com.narvii.nvplayer.exoplayer;

import android.app.Application;
import android.content.SharedPreferences;
import com.narvii.app.NVApplication;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class VideoPreloadDelegate implements NVApplication.ApplicationLifecycleListener {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int DOWN_GRADE_BUFFERING_DURATION = 2000;
    private static final int HI_RES_WITH_PRELOAD_LEVEL = 3;
    private static final int LOW_RES_WITHOUT_PRELOAD_LEVEL = 1;
    private static final int LOW_RES_WITH_PRELOAD_LEVEL = 2;

    @NotNull
    private static final String TAG = "VideoPreloadDelegate";
    private static final int UP_GRADE_TO_LEVEL_1_FAIL_TIMES = 3;
    private static final int UP_GRADE_WITHOUT_BUFFERING_TIMES = 3;
    public static final int VIDEO_RES_360P = 2;
    public static final int VIDEO_RES_720P = 1;
    public static final int VIDEO_RES_DEFAULT = 0;

    @NotNull
    public static final String VIDEO_RES_PREFS_KEY = "video_res_prefs_key";
    private long bufferingStartTime;
    private int forceVideoRes;
    private boolean keepVideoRes;
    private int lastState;
    private int noBufferTimes;

    @NotNull
    private final NVExoPlayer player;
    private SharedPreferences prefs;
    private int preloadLevel;
    private boolean upgradeFailCountEnable;
    private int upgradeFailTimes;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final int getForceVideoRes() {
        return this.forceVideoRes;
    }

    @NotNull
    public final NVExoPlayer getPlayer() {
        return this.player;
    }

    public final boolean isHighPreloadLevel() {
        return this.preloadLevel == 3;
    }

    @Override // com.narvii.app.NVApplication.ApplicationLifecycleListener
    public void onApplicationPause(@Nullable Application application) {
        this.upgradeFailTimes = 0;
        this.noBufferTimes = 0;
    }

    @Override // com.narvii.app.NVApplication.ApplicationLifecycleListener
    public void onApplicationResume(@Nullable Application application) {
    }

    @Override // com.narvii.app.NVApplication.ApplicationLifecycleListener
    public void onApplicationStart(@Nullable Application application) {
    }

    @Override // com.narvii.app.NVApplication.ApplicationLifecycleListener
    public void onApplicationStop(@Nullable Application application) {
    }

    public VideoPreloadDelegate(@NotNull NVExoPlayer player) {
        t.j(player, "player");
        this.player = player;
        this.prefs = (SharedPreferences) NVApplication.instance().getService(IncubatorApplication.PREFS_SERVICE_KEY);
        NVApplication.instance().addLifecycleListener(this);
        int i10 = this.prefs.getInt(VIDEO_RES_PREFS_KEY, 0);
        if (a2.b.d(NVApplication.instance()) <= 2013) {
            setForceVideoRes(2);
        }
        if (i10 != 0) {
            setForceVideoRes(i10);
        }
        this.preloadLevel = 3;
        this.lastState = 1;
    }

    private final void downgradeLevel() {
        if (this.keepVideoRes) {
            return;
        }
        this.noBufferTimes = 0;
        this.player.updatePreloadLevel();
        int i10 = this.preloadLevel;
        if (i10 == 1) {
            return;
        }
        int i11 = i10 - 1;
        this.preloadLevel = i11;
        if (i11 == 2) {
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
            int i10 = this.preloadLevel;
            if (i10 == 3) {
                return;
            }
            int i11 = i10 + 1;
            this.preloadLevel = i11;
            if (i11 == 3) {
                videoResUpgrade();
            }
            this.upgradeFailCountEnable = true;
        }
    }

    private final void videoResDowngrade() {
        this.player.videoResDowngrade();
    }

    private final void videoResUpgrade() {
        this.player.videoResUpgrade();
    }

    public final void onPositionDiscontinuity() {
        if (this.keepVideoRes) {
            return;
        }
        int i10 = this.noBufferTimes + 1;
        this.noBufferTimes = i10;
        if (i10 > 3) {
            upgradeLevel();
        }
    }

    public final void onStateChanged(int i10) {
        if (this.keepVideoRes) {
            return;
        }
        if (this.lastState == 2 && i10 == 3) {
            if (System.currentTimeMillis() - this.bufferingStartTime >= 2000) {
                downgradeLevel();
                if (this.upgradeFailCountEnable) {
                    this.upgradeFailCountEnable = false;
                    this.upgradeFailTimes++;
                }
            } else {
                onPositionDiscontinuity();
            }
        } else if (i10 == 2) {
            this.bufferingStartTime = System.currentTimeMillis();
        }
        this.lastState = i10;
    }

    @NotNull
    public final String preloadStrategyDebugInfo() {
        if (this.keepVideoRes) {
            StringBuilder sb = new StringBuilder();
            sb.append("force preload ");
            sb.append(this.forceVideoRes == 2 ? "360P" : "720P");
            return sb.toString();
        }
        int i10 = this.preloadLevel;
        if (i10 == 1) {
            return "Lv3: Low-res, no preload";
        }
        if (i10 != 2) {
            return i10 != 3 ? "" : "Lv1: Hi-res, with preload";
        }
        return "Lv2: Low-res, with preload";
    }

    @NotNull
    public final List<Media> resetPreloadUrls(@NotNull List<? extends Media> medias) {
        t.j(medias, "medias");
        if (medias.isEmpty()) {
            return v.m();
        }
        if (this.keepVideoRes) {
            int i10 = this.forceVideoRes;
            if (i10 == 1) {
                d0.U0(medias);
            } else if (i10 == 2) {
                if (!Utils.videoSupportLowBitrate(medias.get(0).url)) {
                    return v.m();
                }
                ArrayList arrayList = new ArrayList();
                for (Media media : medias) {
                    String url = media.url;
                    t.i(url, "url");
                    if (url.length() > 0) {
                        media.url = Utils.getLowResVideoUrl(media.url);
                        arrayList.add(media);
                    }
                }
                return arrayList;
            }
        }
        int i11 = this.preloadLevel;
        if (i11 == 1) {
            return v.m();
        }
        if (i11 != 2) {
            return i11 != 3 ? v.m() : d0.U0(medias);
        }
        if (!Utils.videoSupportLowBitrate(medias.get(0).url)) {
            return v.m();
        }
        ArrayList arrayList2 = new ArrayList();
        for (Media media2 : medias) {
            String url2 = media2.url;
            t.i(url2, "url");
            if (url2.length() > 0) {
                media2.url = Utils.getLowResVideoUrl(media2.url);
                arrayList2.add(media2);
            }
        }
        return arrayList2;
    }

    public final void setForceVideoRes(int i10) {
        this.forceVideoRes = i10;
        if (i10 == 1) {
            this.player.loadLowResVideo = false;
            this.keepVideoRes = true;
        } else if (i10 != 2) {
            this.keepVideoRes = false;
        } else {
            this.player.loadLowResVideo = true;
            this.keepVideoRes = true;
        }
        this.prefs.edit().putInt(VIDEO_RES_PREFS_KEY, i10).apply();
    }
}
