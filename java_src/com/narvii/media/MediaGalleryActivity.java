package com.narvii.media;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.app.NVActivity;
import com.narvii.lib.R;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.IVideoListener;
import com.narvii.nvplayer.NVMediaSource;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.nvplayer.NVVideoException;
import com.narvii.nvplayerview.ISurfaceListener;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PagerGalleryAdapter;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.widget.FullsizeImageView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.ShareMediaBar;
import com.narvii.widget.TouchImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MediaGalleryActivity extends NVActivity implements ISurfaceListener, IVideoListener {
    Adapter adapter;
    TextView caption;
    int downY;
    boolean firstLoad;
    WeakReference<View> lastView;
    View overlay;
    NVViewPager pager;
    protected NVObject parent;
    INVPlayer player;
    ShareMediaBar smb;
    Surface surface;
    View target;
    NVVideoView videoView;
    int position = 0;
    private ViewPager.OnPageChangeListener pageListener = new ViewPager.OnPageChangeListener() { // from class: com.narvii.media.MediaGalleryActivity.1
        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            Media item = MediaGalleryActivity.this.adapter.getItem(i);
            String str = item == null ? null : item.caption;
            MediaGalleryActivity.this.caption.setText(str);
            MediaGalleryActivity.this.caption.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
            MediaGalleryActivity mediaGalleryActivity = MediaGalleryActivity.this;
            mediaGalleryActivity.smb.setMedia(mediaGalleryActivity.parent, item, mediaGalleryActivity.adapter.list());
            int childCount = MediaGalleryActivity.this.pager.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = MediaGalleryActivity.this.pager.getChildAt(i2);
                if (childAt != null) {
                    View viewFindViewById = childAt.findViewById(R.id.image);
                    if (viewFindViewById instanceof TouchImageView) {
                        ((TouchImageView) viewFindViewById).resetZoom();
                    }
                }
            }
            MediaGalleryActivity.this.pageSelected(i);
            MediaGalleryActivity.this.onPageSelectedFinished(i);
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(final int i, float f, int i2) throws Resources.NotFoundException {
            if (i2 != 0 && MediaGalleryActivity.this.overlay.getVisibility() == 0) {
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(MediaGalleryActivity.this.getContext(), R.anim.fade_out_fast);
                MediaGalleryActivity.this.overlay.setVisibility(8);
                MediaGalleryActivity.this.overlay.startAnimation(animationLoadAnimation);
            }
            if (!MediaGalleryActivity.this.firstLoad) {
                Utils.postDelayed(new Runnable() { // from class: com.narvii.media.MediaGalleryActivity.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaGalleryActivity.this.pageSelected(i);
                    }
                }, 500L);
            }
            MediaGalleryActivity.this.firstLoad = true;
        }
    };

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public String getPageName() {
        return "MediaGallery";
    }

    @Override // com.narvii.app.NVActivity
    public boolean isModel() {
        return true;
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

    protected void onPageSelectedFinished(int i) {
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPlayerError(NVVideoException nVVideoException) {
        IVideoListener.CC.$default$onPlayerError(this, nVVideoException);
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: onShareMediaButtonClicked, reason: merged with bridge method [inline-methods] */
    public void lambda$onCreate$0$MediaGalleryActivity() {
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

    protected int getLayoutId() {
        return R.layout.gallery_layout;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        Class cls;
        super.onCreate(bundle);
        setContentView(getLayoutId());
        this.pager = (NVViewPager) findViewById(R.id.pager);
        this.overlay = findViewById(R.id.overlay);
        this.caption = (TextView) findViewById(R.id.text);
        this.smb = (ShareMediaBar) findViewById(R.id.share_media_bar);
        this.smb.source = "Fullscreen Media";
        boolean booleanParam = getBooleanParam("preview");
        this.smb.setVisibility((getBooleanParam("hideShareBar") || booleanParam) ? 8 : 0);
        if (!booleanParam && (cls = (Class) getIntent().getSerializableExtra("parentClass")) != null) {
            try {
                if (cls == Feed.class) {
                    this.parent = (NVObject) JacksonUtils.readUsing(getStringParam("parent"), new Feed.FeedDeserializer());
                } else {
                    this.parent = (NVObject) JacksonUtils.readAs(getStringParam("parent"), cls);
                }
            } catch (Exception e) {
                Log.e(e.getMessage());
            }
        }
        this.smb.setInnerClickListener(new ShareMediaBar.ShareMediaInnerClickListener() { // from class: com.narvii.media.-$$Lambda$MediaGalleryActivity$XpROrvZJa36zQlSMSvsitUn5XIQ
            @Override // com.narvii.widget.ShareMediaBar.ShareMediaInnerClickListener
            public final void onShareMediaClicked() {
                this.f$0.lambda$onCreate$0$MediaGalleryActivity();
            }
        });
        this.adapter = new Adapter();
        ArrayList listAs = JacksonUtils.readListAs(getStringParam("list"), Media.class);
        if (listAs != null) {
            this.adapter.setList(listAs);
        }
        this.pager.setAdapter(this.adapter);
        if (bundle == null) {
            this.position = getIntParam("position");
        } else {
            this.position = bundle.getInt("position");
        }
        int i = this.position;
        if (i >= 0) {
            this.pager.setCurrentItem(i);
        }
        this.pager.setOnPageChangeListener(this.pageListener);
        this.pageListener.onPageSelected(this.pager.getCurrentItem());
        StatusBarUtils.addMarginTopToContentChild(this.smb, getStatusBarOverlaySize());
        getWindow().setFormat(-3);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("position", this.pager.getCurrentItem());
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 82) {
            this.adapter.onLongClick(null);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.downY = (int) motionEvent.getY();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public Media getCurrentMedia() {
        int currentItem = this.pager.getCurrentItem();
        if (currentItem < 0 || currentItem >= this.adapter.getCount()) {
            return null;
        }
        return this.adapter.getItem(currentItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pageSelected(int i) {
        Media item = this.adapter.getItem(i);
        WeakReference<View> weakReference = this.lastView;
        if (weakReference != null && weakReference.get() != null) {
            View viewFindViewById = this.lastView.get().findViewById(R.id.image);
            NVVideoView nVVideoView = (NVVideoView) this.lastView.get().findViewById(R.id.video_view);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
            if (nVVideoView != null) {
                nVVideoView.addSurfaceListener(null);
            }
        }
        this.target = null;
        int i2 = 0;
        while (true) {
            if (i2 >= this.pager.getChildCount()) {
                break;
            }
            if (this.pager.getChildAt(i2).getTag() == item) {
                this.target = this.pager.getChildAt(i2);
                break;
            }
            i2++;
        }
        if (this.player == null) {
            this.player = NVPlayerManager.getNVPlayer(this);
            this.player.setVolume(1.0f);
        }
        if (this.videoView != null) {
            this.player.setPlayWhenReady(false);
            this.videoView.addSurfaceListener(null);
        }
        if (this.target == null || item == null || !item.isVideo()) {
            return;
        }
        this.videoView = (NVVideoView) this.target.findViewById(R.id.video_view);
        this.videoView.init(this, 1);
        this.videoView.addSurfaceListener(this);
        this.videoView.setPredictedRatio(com.narvii.nvplayerview.Utils.predictRatio(getParentContext(), item));
        NVMediaSource nVMediaSource = new NVMediaSource();
        nVMediaSource.mediaList = new ArrayList();
        nVMediaSource.mediaList.add(item);
        nVMediaSource.setNvObject(this.parent);
        nVMediaSource.setNVContext(this);
        this.player.quickSetting(this, nVMediaSource, null);
        this.player.setVideoListener(this);
        this.surface = this.videoView.getSurface();
        Surface surface = this.surface;
        if (surface != null) {
            this.player.setVideoSurface(surface);
            this.player.setPlayWhenReady(true);
        }
        this.lastView = new WeakReference<>(this.target);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        INVPlayer iNVPlayer = this.player;
        if (iNVPlayer == null || this.videoView == null) {
            return;
        }
        iNVPlayer.setPlayWhenReady(false);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        INVPlayer iNVPlayer = this.player;
        if (iNVPlayer == null || this.videoView == null) {
            return;
        }
        iNVPlayer.setPlayWhenReady(true);
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceCreated(Surface surface) {
        INVPlayer iNVPlayer = this.player;
        if (iNVPlayer == null || this.videoView == null) {
            return;
        }
        iNVPlayer.setVideoSurface(surface);
        this.player.setPlayWhenReady(true);
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceDestroyed(Surface surface) {
        if (this.player.getVideoSurface() == surface) {
            this.player.setPlayWhenReady(false);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onVideoSizeChanged(int i, int i2) {
        this.videoView.setVideoSize(i, i2);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderedFirstFrame() {
        View view = this.target;
        if (view != null) {
            view.findViewById(R.id.image).setVisibility(8);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerStateChanged(boolean z, int i) {
        View view = this.target;
        if (view != null) {
            if (i == 2) {
                view.findViewById(R.id.video_loading).setVisibility(0);
            } else {
                view.findViewById(R.id.video_loading).setVisibility(4);
            }
        }
    }

    private class Adapter extends PagerGalleryAdapter<Media> implements View.OnClickListener, View.OnLongClickListener {
        public Adapter() {
            super(MediaGalleryActivity.this, R.layout.gallery_media);
        }

        @Override // com.narvii.util.PagerGalleryAdapter
        public View getView(View view, final Media media) {
            final NVImageView nVImageView = (NVImageView) view.findViewById(R.id.image);
            NVVideoView nVVideoView = (NVVideoView) view.findViewById(R.id.video_view);
            String strReplaceUrl = NVImageView.replaceUrl(media.url, "uhq");
            final NVImageLoader nVImageLoader = (NVImageLoader) MediaGalleryActivity.this.getService("imageLoader");
            boolean z = false;
            boolean z2 = (nVImageLoader.getCachedBitmap(strReplaceUrl) == null && nVImageLoader.getDiskCachedBitmap(strReplaceUrl) == null) ? false : true;
            boolean z3 = z2 || !MediaGalleryActivity.this.getBooleanParam("showCheckHD");
            if (nVImageView instanceof FullsizeImageView) {
                FullsizeImageView fullsizeImageView = (FullsizeImageView) nVImageView;
                fullsizeImageView.supportUhq = z3;
                fullsizeImageView.forceUhq = MediaGalleryActivity.this.getBooleanParam("forceUHQ");
            }
            nVImageView.setImageMedia(media);
            nVImageView.setOnClickListener(this);
            nVImageView.setOnLongClickListener(this);
            nVVideoView.setOnClickListener(this);
            final ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.image_loading);
            if (nVImageView.getStatus() == 1) {
                ViewUtils.show(progressBar, nVImageView.getStatus() == 1);
                nVImageView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.media.MediaGalleryActivity.Adapter.1
                    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                    public void onImageChanged(NVImageView nVImageView2, int i, Media media2) {
                        ViewUtils.show(progressBar, nVImageView.getStatus() == 1);
                        if (i == 2 && MediaGalleryActivity.this.getCurrentMedia() == media) {
                            NVToast.makeText(MediaGalleryActivity.this.getContext(), R.string.image_not_available, 0).show();
                        }
                    }
                });
            }
            if (MediaGalleryActivity.this.getBooleanParam("showCheckHD")) {
                final View viewFindViewById = view.findViewById(R.id.downloading_container);
                final ProgressBar progressBar2 = (ProgressBar) view.findViewById(R.id.downloading_progress);
                final View viewFindViewById2 = view.findViewById(R.id.check_hd);
                String str = media.url;
                viewFindViewById2.setVisibility((str == null || !str.contains("v2_") || z2) ? 8 : 0);
                viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.MediaGalleryActivity.Adapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        viewFindViewById.setVisibility(0);
                        viewFindViewById2.setVisibility(8);
                        progressBar2.setProgress(media.getDownloadProgress());
                        final Runnable runnable = new Runnable() { // from class: com.narvii.media.MediaGalleryActivity.Adapter.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                int downloadProgress = media.getDownloadProgress();
                                if (downloadProgress >= 100) {
                                    Utils.handler.removeCallbacks(this);
                                }
                                Object tag = nVImageView.getTag(R.id.hq_image_load_finish);
                                int i = downloadProgress + 10;
                                if (i >= 100) {
                                    i = ((tag instanceof Boolean) && ((Boolean) tag).booleanValue()) ? 100 : 90;
                                }
                                media.setDownloadProgress(i);
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                progressBar2.setProgress(media.getDownloadProgress());
                                Utils.postDelayed(this, 200L);
                            }
                        };
                        Utils.post(runnable);
                        nVImageLoader.get(NVImageView.replaceUrl(media.url, "uhq"), new ImageLoader.ImageListener() { // from class: com.narvii.media.MediaGalleryActivity.Adapter.2.2
                            @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z4) {
                                Bitmap bitmap = imageContainer.getBitmap();
                                if (bitmap == null) {
                                    return;
                                }
                                nVImageView.setImageDrawable(new BitmapDrawable(bitmap));
                                nVImageView.setTag(R.id.hq_image_load_finish, true);
                                media.setDownloadProgress(100);
                                progressBar2.setProgress(100);
                                viewFindViewById.setVisibility(8);
                                Utils.handler.removeCallbacks(runnable);
                            }

                            @Override // com.android.volley.Response.ErrorListener
                            public void onErrorResponse(VolleyError volleyError) {
                                viewFindViewById2.setVisibility(0);
                                NVToast.makeText(MediaGalleryActivity.this.getContext(), R.string.media_save_fail, 1).show();
                                viewFindViewById.setVisibility(8);
                                nVImageView.setTag(R.id.hq_image_load_finish, true);
                            }
                        });
                    }
                });
            }
            if (nVImageView instanceof TouchImageView) {
                TouchImageView touchImageView = (TouchImageView) nVImageView;
                if (media != null && media.type == 100) {
                    z = true;
                }
                touchImageView.setZoomEnabled(z);
            }
            return view;
        }

        @Override // com.narvii.util.PagerGalleryAdapter, android.support.v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            return super.instantiateItem(viewGroup, i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Resources.NotFoundException {
            if (MediaGalleryActivity.this.overlay.getVisibility() == 0) {
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(MediaGalleryActivity.this.getContext(), android.R.anim.fade_out);
                MediaGalleryActivity.this.overlay.setVisibility(8);
                MediaGalleryActivity.this.overlay.startAnimation(animationLoadAnimation);
            } else {
                Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(MediaGalleryActivity.this.getContext(), android.R.anim.fade_in);
                MediaGalleryActivity.this.overlay.setVisibility(0);
                MediaGalleryActivity.this.overlay.startAnimation(animationLoadAnimation2);
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            Media currentMedia = MediaGalleryActivity.this.getCurrentMedia();
            if (currentMedia == null || currentMedia.type != 100) {
                return false;
            }
            try {
                new AlertDialog.Builder(MediaGalleryActivity.this).setItems(new CharSequence[]{MediaGalleryActivity.this.getText(R.string.save_image)}, new DialogInterface.OnClickListener() { // from class: com.narvii.media.MediaGalleryActivity.Adapter.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (i == 0) {
                            MediaGalleryActivity.this.saveImageToPhone();
                        }
                    }
                }).show();
            } catch (Exception e) {
                Log.e("show dialog", e);
            }
            return true;
        }
    }

    public void saveImageToPhone() {
        Media item = this.adapter.getItem(this.pager.getCurrentItem());
        if (item.type == 100) {
            SaveImageFragment saveImageFragment = (SaveImageFragment) getSupportFragmentManager().findFragmentByTag("saveImage");
            if (saveImageFragment == null) {
                saveImageFragment = new SaveImageFragment();
                getSupportFragmentManager().beginTransaction().add(saveImageFragment, "saveImage").commitAllowingStateLoss();
                getSupportFragmentManager().executePendingTransactions();
            }
            saveImageFragment.save(item);
        }
    }
}
