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
import com.narvii.app.NVApplication;
import com.narvii.mediaeditor.R;
import com.narvii.photos.PhotoManager;
import com.narvii.scene.SceneWrapper;
import com.narvii.util.Utils;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;
import java.io.File;

/* loaded from: classes3.dex */
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

    public NVSceneView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NVSceneView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isEmptyShowTime = false;
    }

    public TextView getTvTitle() {
        return this.tvTitle;
    }

    public void setDefaultTimeTextColor(int i) {
        this.defaultTimeTextColor = i;
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

    public void setData(SceneWrapper sceneWrapper, int i) {
        setData(sceneWrapper, i, -1);
    }

    public void setData(SceneWrapper sceneWrapper, int i, int i2) {
        setData(sceneWrapper, i, i2, false);
    }

    public void setData(SceneWrapper sceneWrapper, int i, int i2, boolean z) {
        this.sceneWrapper = sceneWrapper;
        this.coverImageRes = i;
        this.errorTimeTextColor = i2;
        this.isEmptyShowTime = z;
        updateView();
    }

    public void setSceneWrapper(SceneWrapper sceneWrapper) {
        this.sceneWrapper = sceneWrapper;
    }

    public SceneWrapper getSceneWrapper() {
        return this.sceneWrapper;
    }

    public void setCoverImageRes(int i) {
        this.coverImageRes = i;
    }

    public void setErrorTimeTextColor(int i) {
        this.errorTimeTextColor = i;
    }

    public void setEmptyShowTime(boolean z) {
        this.isEmptyShowTime = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateView() {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.scene.view.NVSceneView.updateView():void");
    }

    protected int getErrorOverlayRes() {
        if (NVApplication.isStoryEditorApp()) {
            return R.drawable.scene_thumb_error_overlay_dark;
        }
        return R.drawable.scene_thumb_error_overlay;
    }

    protected void setCoverImage() {
        if (this.sceneWrapper.getCoverImage() != null && (this.sceneWrapper.getCoverImage().startsWith("http") || this.sceneWrapper.getCoverImage().startsWith("photo"))) {
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
}
