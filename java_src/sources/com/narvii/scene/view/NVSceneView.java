package com.narvii.scene.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import androidx.webkit.ProxyConfig;
import com.narvii.app.NVApplication;
import com.narvii.mediaeditor.R;
import com.narvii.photos.PhotoManager;
import com.narvii.scene.SceneWrapper;
import com.narvii.scene.helper.SceneUtils;
import com.narvii.util.Utils;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;
import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
public class NVSceneView extends RelativeLayout {
    private int coverImageRes;
    private int defaultTimeTextColor;
    private int errorTimeTextColor;
    private NVImageLoader imageLoader;
    private boolean isEmptyShowTime;
    private ImageView ivAddVideo;
    private ThumbImageView ivCoverImage;
    private NVImageView ivPlayingIcon;
    private View overlayView;
    private PhotoManager photoManager;
    private SceneWrapper sceneWrapper;
    private TextView tvTime;
    private TextView tvTitle;
    private View warningView;

    public NVSceneView(Context context) {
        this(context, null);
    }

    protected int getErrorOverlayRes() {
        return R.drawable.scene_thumb_error_overlay;
    }

    public SceneWrapper getSceneWrapper() {
        return this.sceneWrapper;
    }

    public TextView getTvTitle() {
        return this.tvTitle;
    }

    public void setCoverImageRes(@DrawableRes int i10) {
        this.coverImageRes = i10;
    }

    public void setData(SceneWrapper sceneWrapper, @DrawableRes int i10) {
        setData(sceneWrapper, i10, -1);
    }

    public void setDefaultTimeTextColor(int i10) {
        this.defaultTimeTextColor = i10;
    }

    public void setEmptyShowTime(boolean z6) {
        this.isEmptyShowTime = z6;
    }

    public void setErrorTimeTextColor(int i10) {
        this.errorTimeTextColor = i10;
    }

    public void setSceneWrapper(SceneWrapper sceneWrapper) {
        this.sceneWrapper = sceneWrapper;
    }

    public NVSceneView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected void setCoverImage() {
        if (this.sceneWrapper.getCoverImage() != null && (this.sceneWrapper.getCoverImage().startsWith(ProxyConfig.MATCH_HTTP) || this.sceneWrapper.getCoverImage().startsWith("photo"))) {
            this.ivCoverImage.setImageUrl(null);
            this.ivCoverImage.setImageUrl(this.sceneWrapper.getCoverImage());
            return;
        }
        Rect rect = new Rect();
        this.ivCoverImage.getWindowVisibleDisplayFrame(rect);
        Bitmap local = this.imageLoader.getLocal(this.photoManager.getUri(new File(this.sceneWrapper.getCoverImage())), rect.width(), rect.height(), true);
        if (local != null) {
            this.ivCoverImage.setImageBitmap(local);
        } else {
            this.ivCoverImage.setImageDrawable(new ColorDrawable(-2013265920));
        }
    }

    public void setData(SceneWrapper sceneWrapper, @DrawableRes int i10, int i11) {
        setData(sceneWrapper, i10, i11, false);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:43:0x0102  */
    /* JADX WARN: Code duplicated, block: B:44:0x0104  */
    /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
    public void updateView() {
        View view;
        NVImageView nVImageView;
        int i10;
        SceneWrapper sceneWrapper;
        int i11;
        View view2 = this.warningView;
        int i12 = 8;
        boolean z6 = view2 == null || view2.getVisibility() == 8;
        int states = this.sceneWrapper.getStates();
        if (states != 1) {
            if (states == 2) {
                this.tvTitle.setText(this.sceneWrapper.getTitle());
                this.tvTime.setVisibility(0);
                this.tvTime.setText(this.sceneWrapper.getDurationText());
                this.tvTime.setTextColor(this.defaultTimeTextColor);
                this.ivAddVideo.setVisibility(8);
                this.overlayView.setVisibility(this.sceneWrapper.isPlaying ? 0 : 8);
                this.overlayView.setBackgroundResource(R.drawable.scene_thumb_playing_overlay);
                setCoverImage();
            } else if (states == 3) {
                this.tvTitle.setText(this.sceneWrapper.getTitle());
                this.tvTime.setVisibility(0);
                this.tvTime.setText(this.sceneWrapper.getDurationText());
                int i13 = this.errorTimeTextColor;
                if (i13 != -1) {
                    this.tvTime.setTextColor(i13);
                }
                this.ivAddVideo.setVisibility(8);
                this.overlayView.setVisibility(0);
                this.overlayView.setBackgroundResource(getErrorOverlayRes());
                setCoverImage();
                z6 = false;
            }
            view = this.warningView;
            if (view != null) {
                if (z6 || !this.sceneWrapper.isCanPlaying()) {
                    i11 = 0;
                } else {
                    i11 = 8;
                }
                view.setVisibility(i11);
            }
            nVImageView = this.ivPlayingIcon;
            if (nVImageView != null) {
                if (this.sceneWrapper.isPlaying) {
                    i10 = 0;
                } else {
                    i10 = 8;
                }
                nVImageView.setVisibility(i10);
                TextView textView = this.tvTime;
                sceneWrapper = this.sceneWrapper;
                if (!sceneWrapper.isPlaying && (sceneWrapper.getStates() != 1 || this.isEmptyShowTime)) {
                    i12 = 0;
                }
                textView.setVisibility(i12);
            }
        }
        this.overlayView.setVisibility(8);
        this.tvTime.setVisibility(this.isEmptyShowTime ? 0 : 8);
        this.tvTime.setText(SceneUtils.durationMsToUIText(0L));
        this.tvTime.setTextColor(this.defaultTimeTextColor);
        this.ivCoverImage.setImageDrawable(ContextCompat.getDrawable(getContext(), this.coverImageRes));
        this.ivAddVideo.setVisibility(0);
        this.tvTitle.setText(this.sceneWrapper.getTitle());
        z6 = true;
        view = this.warningView;
        if (view != null) {
            if (z6) {
                i11 = 0;
            } else {
                i11 = 0;
            }
            view.setVisibility(i11);
        }
        nVImageView = this.ivPlayingIcon;
        if (nVImageView != null) {
            if (this.sceneWrapper.isPlaying) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            nVImageView.setVisibility(i10);
            TextView textView2 = this.tvTime;
            sceneWrapper = this.sceneWrapper;
            if (!sceneWrapper.isPlaying) {
                i12 = 0;
            }
            textView2.setVisibility(i12);
        }
    }

    public NVSceneView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.isEmptyShowTime = false;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.tvTitle = (TextView) findViewById(R.id.tv_title);
        this.tvTime = (TextView) findViewById(R.id.tv_time);
        this.warningView = findViewById(R.id.warning_view);
        this.overlayView = findViewById(R.id.ic_overlay);
        this.ivCoverImage = (ThumbImageView) findViewById(R.id.iv_cover_image);
        this.ivPlayingIcon = (NVImageView) findViewById(R.id.iv_playing_icon);
        this.ivAddVideo = (ImageView) findViewById(R.id.iv_add_video);
        this.photoManager = (PhotoManager) NVApplication.instance().getService("photo");
        this.defaultTimeTextColor = this.tvTime.getTextColors().getDefaultColor();
        if (this.ivPlayingIcon != null) {
            this.ivPlayingIcon.setImageDrawable(((GifLoader) Utils.getNVContext(getContext()).getService("gifLoader")).getLocalGifDrawable("assets://media_playing.gif"));
        }
        this.imageLoader = (NVImageLoader) Utils.getNVContext(getContext()).getService("imageLoader");
    }

    public void setData(SceneWrapper sceneWrapper, @DrawableRes int i10, int i11, boolean z6) {
        this.sceneWrapper = sceneWrapper;
        this.coverImageRes = i10;
        this.errorTimeTextColor = i11;
        this.isEmptyShowTime = z6;
        updateView();
    }
}
