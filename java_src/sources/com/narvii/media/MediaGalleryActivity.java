package com.narvii.media;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
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
import androidx.viewpager.widget.ViewPager;
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

/* JADX INFO: loaded from: classes3.dex */
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
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(final int i10, float f, int i11) {
            if (i11 != 0 && MediaGalleryActivity.this.overlay.getVisibility() == 0) {
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(MediaGalleryActivity.this.getContext(), R.anim.fade_out_fast);
                MediaGalleryActivity.this.overlay.setVisibility(8);
                MediaGalleryActivity.this.overlay.startAnimation(animationLoadAnimation);
            }
            if (!MediaGalleryActivity.this.firstLoad) {
                Utils.postDelayed(new Runnable() { // from class: com.narvii.media.MediaGalleryActivity.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaGalleryActivity.this.pageSelected(i10);
                    }
                }, 500L);
            }
            MediaGalleryActivity.this.firstLoad = true;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            Media item = MediaGalleryActivity.this.adapter.getItem(i10);
            String str = item == null ? null : item.caption;
            MediaGalleryActivity.this.caption.setText(str);
            MediaGalleryActivity.this.caption.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
            MediaGalleryActivity mediaGalleryActivity = MediaGalleryActivity.this;
            mediaGalleryActivity.smb.setMedia(mediaGalleryActivity.parent, item, mediaGalleryActivity.adapter.list());
            int childCount = MediaGalleryActivity.this.pager.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = MediaGalleryActivity.this.pager.getChildAt(i11);
                if (childAt != null) {
                    View viewFindViewById = childAt.findViewById(R.id.image);
                    if (viewFindViewById instanceof TouchImageView) {
                        ((TouchImageView) viewFindViewById).resetZoom();
                    }
                }
            }
            MediaGalleryActivity.this.pageSelected(i10);
            MediaGalleryActivity.this.onPageSelectedFinished(i10);
        }
    };

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
            boolean z6 = (nVImageLoader.getCachedBitmap(strReplaceUrl) == null && nVImageLoader.getDiskCachedBitmap(strReplaceUrl) == null) ? false : true;
            boolean z10 = z6 || !MediaGalleryActivity.this.getBooleanParam("showCheckHD");
            if (nVImageView instanceof FullsizeImageView) {
                FullsizeImageView fullsizeImageView = (FullsizeImageView) nVImageView;
                fullsizeImageView.supportUhq = z10;
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
                    public void onImageChanged(NVImageView nVImageView2, int i10, Media media2) {
                        ViewUtils.show(progressBar, nVImageView.getStatus() == 1);
                        if (i10 == 2 && MediaGalleryActivity.this.getCurrentMedia() == media) {
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
                viewFindViewById2.setVisibility((str == null || !str.contains("v2_") || z6) ? 8 : 0);
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
                                int i10 = downloadProgress + 10;
                                if (i10 >= 100) {
                                    i10 = ((tag instanceof Boolean) && ((Boolean) tag).booleanValue()) ? 100 : 90;
                                }
                                media.setDownloadProgress(i10);
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                progressBar2.setProgress(media.getDownloadProgress());
                                Utils.postDelayed(this, 200L);
                            }
                        };
                        Utils.post(runnable);
                        nVImageLoader.get(NVImageView.replaceUrl(media.url, "uhq"), new ImageLoader.ImageListener() { // from class: com.narvii.media.MediaGalleryActivity.Adapter.2.2
                            @Override // com.android.volley.Response.ErrorListener
                            public void onErrorResponse(VolleyError volleyError) {
                                viewFindViewById2.setVisibility(0);
                                NVToast.makeText(MediaGalleryActivity.this.getContext(), R.string.media_save_fail, 1).show();
                                viewFindViewById.setVisibility(8);
                                nVImageView.setTag(R.id.hq_image_load_finish, Boolean.TRUE);
                            }

                            @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z11) {
                                Bitmap bitmap = imageContainer.getBitmap();
                                if (bitmap == null) {
                                    return;
                                }
                                nVImageView.setImageDrawable(new BitmapDrawable(bitmap));
                                nVImageView.setTag(R.id.hq_image_load_finish, Boolean.TRUE);
                                media.setDownloadProgress(100);
                                progressBar2.setProgress(100);
                                viewFindViewById.setVisibility(8);
                                Utils.handler.removeCallbacks(runnable);
                            }
                        });
                    }
                });
            }
            if (nVImageView instanceof TouchImageView) {
                ((TouchImageView) nVImageView).setZoomEnabled(media.type == 100);
            }
            return view;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
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
                    public void onClick(DialogInterface dialogInterface, int i10) {
                        if (i10 == 0) {
                            MediaGalleryActivity.this.saveImageToPhone();
                        }
                    }
                }).show();
            } catch (Exception e) {
                Log.e("show dialog", e);
            }
            return true;
        }

        @Override // com.narvii.util.PagerGalleryAdapter, androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i10) {
            return super.instantiateItem(viewGroup, i10);
        }
    }

    protected int getLayoutId() {
        return R.layout.gallery_layout;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public String getPageName() {
        return "media_gallery";
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
    public /* synthetic */ void onCachedBytesRead(long j6, long j10) {
        com.narvii.nvplayer.b.a(this, j6, j10);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onErrorDebug(NVVideoException nVVideoException) {
        com.narvii.nvplayer.b.b(this, nVVideoException);
    }

    protected void onPageSelectedFinished(int i10) {
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPlayerError(NVVideoException nVVideoException) {
        com.narvii.nvplayer.b.c(this, nVVideoException);
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: onShareMediaButtonClicked, reason: merged with bridge method [inline-methods] */
    public void lambda$onCreate$0() {
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
    public void surfaceSizeChanged(Surface surface, int i10, int i11) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pageSelected(int i10) {
        Media item = this.adapter.getItem(i10);
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
        for (int i11 = 0; i11 < this.pager.getChildCount(); i11++) {
            if (this.pager.getChildAt(i11).getTag() == item) {
                this.target = this.pager.getChildAt(i11);
                break;
            }
        }
        if (this.player == null) {
            INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(this);
            this.player = nVPlayer;
            nVPlayer.setVolume(1.0f);
        }
        if (this.videoView != null) {
            this.player.setPlayWhenReady(false);
            this.videoView.addSurfaceListener(null);
        }
        if (this.target == null || item == null || !item.isVideo()) {
            return;
        }
        NVVideoView nVVideoView2 = (NVVideoView) this.target.findViewById(R.id.video_view);
        this.videoView = nVVideoView2;
        nVVideoView2.init(this, 1);
        this.videoView.addSurfaceListener(this);
        this.videoView.setPredictedRatio(com.narvii.nvplayerview.Utils.predictRatio(getParentContext(), item));
        NVMediaSource nVMediaSource = new NVMediaSource();
        ArrayList arrayList = new ArrayList();
        nVMediaSource.mediaList = arrayList;
        arrayList.add(item);
        nVMediaSource.setNvObject(this.parent);
        nVMediaSource.setNVContext(this);
        this.player.quickSetting(this, nVMediaSource, null);
        this.player.setVideoListener(this);
        Surface surface = this.videoView.getSurface();
        this.surface = surface;
        if (surface != null) {
            this.player.setVideoSurface(surface);
            this.player.setPlayWhenReady(true);
        }
        this.lastView = new WeakReference<>(this.target);
    }

    public Media getCurrentMedia() {
        int currentItem = this.pager.getCurrentItem();
        if (currentItem < 0 || currentItem >= this.adapter.getCount()) {
            return null;
        }
        return this.adapter.getItem(currentItem);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 != 82) {
            return super.onKeyDown(i10, keyEvent);
        }
        this.adapter.onLongClick(null);
        return true;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerStateChanged(boolean z6, int i10) {
        View view = this.target;
        if (view != null) {
            if (i10 == 2) {
                view.findViewById(R.id.video_loading).setVisibility(0);
            } else {
                view.findViewById(R.id.video_loading).setVisibility(4);
            }
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderedFirstFrame() {
        View view = this.target;
        if (view != null) {
            view.findViewById(R.id.image).setVisibility(8);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onVideoSizeChanged(int i10, int i11) {
        this.videoView.setVideoSize(i10, i11);
    }

    public void saveImageToPhone() {
        Media item = this.adapter.getItem(this.pager.getCurrentItem());
        if (item.type == 100) {
            SaveImageFragment saveImageFragment = (SaveImageFragment) getSupportFragmentManager().m0("saveImage");
            if (saveImageFragment == null) {
                saveImageFragment = new SaveImageFragment();
                getSupportFragmentManager().q().e(saveImageFragment, "saveImage").k();
                getSupportFragmentManager().i0();
            }
            saveImageFragment.save(item);
        }
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

    @Override // com.narvii.app.NVActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.downY = (int) motionEvent.getY();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        int i10;
        Class cls;
        super.onCreate(bundle);
        setContentView(getLayoutId());
        this.pager = (NVViewPager) findViewById(R.id.pager);
        this.overlay = findViewById(R.id.overlay);
        this.caption = (TextView) findViewById(R.id.text);
        ShareMediaBar shareMediaBar = (ShareMediaBar) findViewById(R.id.share_media_bar);
        this.smb = shareMediaBar;
        shareMediaBar.source = "Fullscreen Media";
        boolean booleanParam = getBooleanParam("preview");
        ShareMediaBar shareMediaBar2 = this.smb;
        if (!getBooleanParam("hideShareBar") && !booleanParam) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        shareMediaBar2.setVisibility(i10);
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
        this.smb.setInnerClickListener(new ShareMediaBar.ShareMediaInnerClickListener() { // from class: com.narvii.media.a
            @Override // com.narvii.widget.ShareMediaBar.ShareMediaInnerClickListener
            public final void onShareMediaClicked() {
                this.f2447a.lambda$onCreate$0();
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
        int i11 = this.position;
        if (i11 >= 0) {
            this.pager.setCurrentItem(i11);
        }
        this.pager.setOnPageChangeListener(this.pageListener);
        this.pageListener.onPageSelected(this.pager.getCurrentItem());
        StatusBarUtils.addMarginTopToContentChild(this.smb, getStatusBarOverlaySize());
        getWindow().setFormat(-3);
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        INVPlayer iNVPlayer = this.player;
        if (iNVPlayer != null && this.videoView != null) {
            iNVPlayer.setPlayWhenReady(false);
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        INVPlayer iNVPlayer = this.player;
        if (iNVPlayer != null && this.videoView != null) {
            iNVPlayer.setPlayWhenReady(true);
        }
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("position", this.pager.getCurrentItem());
    }
}
