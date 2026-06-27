package com.narvii.video;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
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

/* loaded from: classes3.dex */
public class NVFullScreenVideoActivity extends NVActivity implements IVideoListener, ISurfaceListener {
    private static final String TAG = "ExoFullScreen";
    private boolean animating;
    private INVPlayer mPlayer;
    private Surface mSurface;
    private IVideoController mVideoController;
    private NVVideoView mVideoView;

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public String getPageName() {
        return "VideoPlay";
    }

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public boolean isValidPage() {
        return true;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onCachedBytesRead(long j, long j2) {
        IVideoListener.CC.$default$onCachedBytesRead(this, j, j2);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onErrorDebug(NVVideoException nVVideoException) {
        IVideoListener.CC.$default$onErrorDebug(this, nVVideoException);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPositionDiscontinuity(int i) {
        IVideoListener.CC.$default$onPositionDiscontinuity(this, i);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPreloadStrategyChanged(String str) {
        IVideoListener.CC.$default$onPreloadStrategyChanged(this, str);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onRenderFirstFrameInterval(long j) {
        IVideoListener.CC.$default$onRenderFirstFrameInterval(this, j);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
        IVideoListener.CC.$default$onSurfaceSizeChanged(this, i, i2);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSizeChanged(int i, int i2, int i3, float f) {
        IVideoListener.CC.$default$onVideoSizeChanged(this, i, i2, i3, f);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSupportLowResVideo(boolean z) {
        IVideoListener.CC.$default$onVideoSupportLowResVideo(this, z);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ boolean shouldPauseForPageAboveVideo(int i) {
        return IVideoListener.CC.$default$shouldPauseForPageAboveVideo(this, i);
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceSizeChanged(Surface surface, int i, int i2) {
    }

    public static Intent intent(String str) {
        Intent intent = new Intent(NVApplication.instance(), (Class<?>) NVFullScreenVideoActivity.class);
        intent.putExtra("url", str);
        return intent;
    }

    public static Intent intent(Media media) {
        Intent intent = intent(media.url);
        intent.putExtra("url", media.url);
        intent.putExtra("thumbUrl", media.coverImage);
        intent.putExtra("title", media.caption);
        return intent;
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

    private NVObject getAttachedObject() {
        try {
            Class cls = (Class) getIntent().getSerializableExtra("parentClass");
            if (cls == null) {
                return null;
            }
            if (cls == Feed.class) {
                return (NVObject) JacksonUtils.readUsing(getStringParam("parent"), new Feed.FeedDeserializer());
            }
            return (NVObject) JacksonUtils.readAs(getStringParam("parent"), cls);
        } catch (Exception unused) {
            return null;
        }
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

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        INVPlayer iNVPlayer;
        super.onCreate(bundle);
        this.mVideoView = new NVVideoView(this);
        setContentView(this.mVideoView, new ViewGroup.LayoutParams(-1, -1));
        this.mPlayer = NVPlayerManager.getNVPlayer(this);
        Intent intent = getIntent();
        this.mVideoView.setScaleType(intent.getIntExtra("scale_type", 0));
        this.mVideoView.setPredictedRatio(intent.getFloatExtra("ratio", -1.0f));
        this.mVideoView.init(this);
        this.mVideoView.setPredictedRatio(intent.getFloatExtra("ratio", -1.0f));
        this.mVideoController = new NVFullScreenVideoController(this.mVideoView, this, this.mPlayer);
        this.mVideoController.init();
        String str = (this.mPlayer.getMediaSource() == null || this.mPlayer.getMediaSource().mediaList == null || this.mPlayer.getMediaSource().mediaList.size() == 0) ? null : this.mPlayer.getMediaSource().mediaList.get(0).url;
        String stringExtra = intent.getStringExtra("url");
        this.animating = getBooleanParam("animating", false);
        if (this.animating && TextUtils.equals(str, stringExtra) && (iNVPlayer = this.mPlayer) != null && !iNVPlayer.isError()) {
            INVPlayer iNVPlayer2 = this.mPlayer;
            if (iNVPlayer2 != null && iNVPlayer2.getMediaSource() != null) {
                this.mPlayer.getMediaSource().setNVContext(this);
                this.mPlayer.getMediaSource().setNvObject(getAttachedObject());
                this.mPlayer.getVideoLogHelper().resetIds();
            }
            if (Build.VERSION.SDK_INT >= 23) {
                ((View) this.mVideoView.getRenderView()).setTransitionName("renderView");
                DetailTransition detailTransition = new DetailTransition();
                detailTransition.setDuration(300L);
                getWindow().setSharedElementEnterTransition(detailTransition);
                getWindow().setSharedElementExitTransition(detailTransition);
                this.mPlayer.setVideoListener(this);
                this.mVideoController.setAnimating(true);
            } else {
                this.mPlayer.setVideoListener(this);
            }
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

    @Override // com.narvii.nvplayer.IVideoListener
    public void onVideoSizeChanged(int i, int i2) {
        NVVideoView nVVideoView = this.mVideoView;
        if (nVVideoView != null) {
            nVVideoView.setVideoSize(i, i2);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderedFirstFrame() {
        this.mVideoController.setTotalTime();
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mVideoController.pause();
        this.mPlayer.lockMute(false);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
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

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mVideoController.destroy();
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerStateChanged(boolean z, int i) {
        this.mVideoController.onPlayerStateChanged(z, i);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerError(NVVideoException nVVideoException) {
        this.mVideoController.onPlayerError(nVVideoException);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mVideoController.onOrientationChanged(configuration.orientation);
        super.onConfigurationChanged(configuration);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        this.mVideoController.onPressBack();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceCreated(Surface surface) {
        this.mSurface = surface;
        this.mPlayer.setVideoSurface(surface);
        if (Build.VERSION.SDK_INT < 23) {
            this.mPlayer.seekTo(Math.max(this.mPlayer.getCurrentPosition() - 1000, 0L), true);
        }
        this.mPlayer.setPlayWhenReady(true);
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceDestroyed(Surface surface) {
        this.mSurface = null;
    }
}
