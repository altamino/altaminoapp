package com.narvii.video;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.model.ChatMessage;
import com.narvii.model.Comment;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.SharedFile;
import com.narvii.model.User;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.IVideoListener;
import com.narvii.nvplayer.NVMediaSource;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.nvplayer.NVVideoException;
import com.narvii.nvplayerview.ISurfaceListener;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.controller.IVideoController;
import com.narvii.nvplayerview.controller.NVFullScreenVideoController;
import com.narvii.util.DetailTransition;
import com.narvii.util.JacksonUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class NVFullScreenVideoActivity extends NVActivity implements IVideoListener, ISurfaceListener {
    private static final String TAG = "ExoFullScreen";
    private boolean animating;
    private INVPlayer mPlayer;
    private Surface mSurface;
    private IVideoController mVideoController;
    private NVVideoView mVideoView;

    public static Intent intent(String str) {
        Intent intent = new Intent(NVApplication.instance(), (Class<?>) NVFullScreenVideoActivity.class);
        intent.putExtra(ImagesContract.URL, str);
        return intent;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public String getPageName() {
        return "video_play";
    }

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public boolean isValidPage() {
        return true;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onCachedBytesRead(long j6, long j10) {
        com.narvii.nvplayer.b.a(this, j6, j10);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onErrorDebug(NVVideoException nVVideoException) {
        com.narvii.nvplayer.b.b(this, nVVideoException);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPositionDiscontinuity(int i10) {
        com.narvii.nvplayer.b.e(this, i10);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPreloadStrategyChanged(String str) {
        com.narvii.nvplayer.b.f(this, str);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onRenderFirstFrameInterval(long j6) {
        com.narvii.nvplayer.b.g(this, j6);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onSurfaceSizeChanged(int i10, int i11) {
        com.narvii.nvplayer.b.i(this, i10, i11);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSizeChanged(int i10, int i11, int i12, float f) {
        com.narvii.nvplayer.b.k(this, i10, i11, i12, f);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSupportLowResVideo(boolean z6) {
        com.narvii.nvplayer.b.l(this, z6);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ boolean shouldPauseForPageAboveVideo(int i10) {
        return com.narvii.nvplayer.b.m(this, i10);
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceDestroyed(Surface surface) {
        this.mSurface = null;
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceSizeChanged(Surface surface, int i10, int i11) {
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.mVideoController.onPressBack();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mVideoController.onOrientationChanged(configuration.orientation);
        super.onConfigurationChanged(configuration);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerError(NVVideoException nVVideoException) {
        this.mVideoController.onPlayerError(nVVideoException);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerStateChanged(boolean z6, int i10) {
        this.mVideoController.onPlayerStateChanged(z6, i10);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderedFirstFrame() {
        this.mVideoController.setTotalTime();
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onVideoSizeChanged(int i10, int i11) {
        NVVideoView nVVideoView = this.mVideoView;
        if (nVVideoView != null) {
            nVVideoView.setVideoSize(i10, i11);
        }
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceCreated(Surface surface) {
        this.mSurface = surface;
        this.mPlayer.setVideoSurface(surface);
        this.mPlayer.setPlayWhenReady(true);
    }

    private NVObject getAttachedObject() {
        try {
            Class cls = (Class) getIntent().getSerializableExtra("parentClass");
            if (cls != null) {
                if (cls == Feed.class) {
                    return (NVObject) JacksonUtils.readUsing(getStringParam("parent"), new Feed.FeedDeserializer());
                }
                return (NVObject) JacksonUtils.readAs(getStringParam("parent"), cls);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Intent intent(Media media) {
        Intent intent = intent(media.url);
        intent.putExtra(ImagesContract.URL, media.url);
        intent.putExtra("thumbUrl", media.coverImage);
        intent.putExtra("title", media.caption);
        return intent;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        String str;
        INVPlayer iNVPlayer;
        super.onCreate(bundle);
        NVVideoView nVVideoView = new NVVideoView(this);
        this.mVideoView = nVVideoView;
        setContentView(nVVideoView, new ViewGroup.LayoutParams(-1, -1));
        this.mPlayer = NVPlayerManager.getNVPlayer(this);
        Intent intent = getIntent();
        this.mVideoView.setScaleType(intent.getIntExtra("scale_type", 0));
        this.mVideoView.setPredictedRatio(intent.getFloatExtra("ratio", -1.0f));
        this.mVideoView.init(this);
        this.mVideoView.setPredictedRatio(intent.getFloatExtra("ratio", -1.0f));
        NVFullScreenVideoController nVFullScreenVideoController = new NVFullScreenVideoController(this.mVideoView, this, this.mPlayer);
        this.mVideoController = nVFullScreenVideoController;
        nVFullScreenVideoController.init();
        if (this.mPlayer.getMediaSource() != null && this.mPlayer.getMediaSource().mediaList != null && this.mPlayer.getMediaSource().mediaList.size() != 0) {
            str = this.mPlayer.getMediaSource().mediaList.get(0).url;
        } else {
            str = null;
        }
        String stringExtra = intent.getStringExtra(ImagesContract.URL);
        boolean booleanParam = getBooleanParam("animating", false);
        this.animating = booleanParam;
        if (booleanParam && TextUtils.equals(str, stringExtra) && (iNVPlayer = this.mPlayer) != null && !iNVPlayer.isError()) {
            INVPlayer iNVPlayer2 = this.mPlayer;
            if (iNVPlayer2 != null && iNVPlayer2.getMediaSource() != null) {
                this.mPlayer.getMediaSource().setNVContext(this);
                this.mPlayer.getMediaSource().setNvObject(getAttachedObject());
                this.mPlayer.getVideoLogHelper().resetIds();
            }
            ((View) this.mVideoView.getRenderView()).setTransitionName("renderView");
            DetailTransition detailTransition = new DetailTransition();
            detailTransition.setDuration(300L);
            getWindow().setSharedElementEnterTransition(detailTransition);
            getWindow().setSharedElementExitTransition(detailTransition);
            this.mPlayer.setVideoListener(this);
            this.mVideoController.setAnimating(true);
        } else {
            this.mPlayer.reset();
            this.mPlayer.clearVideoSurface();
            NVMediaSource nVMediaSource = new NVMediaSource();
            nVMediaSource.mediaList = new ArrayList();
            Media media = (Media) JacksonUtils.readAs(getStringParam("media"), Media.class);
            if (media != null) {
                nVMediaSource.mediaList.add(media);
            } else {
                Media media2 = new Media();
                media2.type = 102;
                media2.url = stringExtra;
                nVMediaSource.mediaList.add(media2);
            }
            nVMediaSource.setNVContext(this);
            nVMediaSource.setNvObject(getAttachedObject());
            this.mPlayer.quickSetting(this, nVMediaSource, null);
            this.mPlayer.setVideoListener(this);
        }
        this.mVideoController.setOptionMenu();
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mVideoController.destroy();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mVideoController.pause();
        this.mPlayer.lockMute(false);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.setVideoListener(this);
            Surface surface = this.mSurface;
            if (surface != null) {
                this.mPlayer.setVideoSurface(surface);
                this.mPlayer.setPlayWhenReady(true);
            }
            this.mPlayer.lockMute(true);
        }
    }

    public static Intent intent(Media media, NVObject nVObject) {
        Intent intent = intent(media);
        intent.putExtra("media", JacksonUtils.writeAsString(media));
        intent.putExtra("parent", JacksonUtils.writeAsString(nVObject));
        if (nVObject instanceof Feed) {
            intent.putExtra("parentClass", Feed.class);
        } else if (nVObject instanceof SharedFile) {
            intent.putExtra("parentClass", SharedFile.class);
        } else if (nVObject instanceof ChatMessage) {
            intent.putExtra("parentClass", ChatMessage.class);
        } else if (nVObject instanceof Comment) {
            intent.putExtra("parentClass", Comment.class);
        } else if (nVObject instanceof User) {
            intent.putExtra("parentClass", User.class);
        }
        return intent;
    }

    public static Intent intent(Media media, NVObject nVObject, Class<? extends NVFragment> cls) {
        Intent intent = intent(media, nVObject);
        if (cls != null) {
            intent.putExtra("clz", cls.getName());
        }
        return intent;
    }

    public static Intent intent(Media media, NVObject nVObject, String str) {
        Intent intent = intent(media, nVObject);
        intent.putExtra("clz", str);
        return intent;
    }
}
