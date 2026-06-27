package com.narvii.scene.dialog;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.photos.PhotoManager;
import com.narvii.scene.helper.SceneSpHelper;
import com.narvii.scene.model.SceneRecentMedia;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.widget.ThumbImageView;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: SceneMediaPickerDialog.kt */
/* loaded from: classes3.dex */
public final class SceneMediaPickerDialog extends NVDialog implements View.OnClickListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneMediaPickerDialog.class), "sceneSpHelper", "getSceneSpHelper()Lcom/narvii/scene/helper/SceneSpHelper;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneMediaPickerDialog.class), "photo", "getPhoto()Lcom/narvii/photos/PhotoManager;"))};
    private final View backgroundImage;
    private final View cancel;
    private final View contentView;
    private OnPickerListener onPickerListener;
    private final View onlineVideo;
    private final Lazy photo$delegate;
    private final View photoLibrary;
    private final View recentMedia;
    private final View recentMediaContainer;
    private final ThumbImageView recentMediaIcon;
    private final TextView recentMediaName;
    private final TextView recentMediaPath;
    private SceneRecentMedia sceneRecentMedia;
    private final Lazy sceneSpHelper$delegate;
    private final View videoTempalteLayout;
    private final View videoTemplate;

    /* compiled from: SceneMediaPickerDialog.kt */
    public interface OnPickerListener {
        void onPickOnlineVideo();

        void onPickPhoto();

        void onPickRecentMedia(Media media);

        void onPickVideoTemplate();
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "SceneSource";
    }

    public final PhotoManager getPhoto() {
        Lazy lazy = this.photo$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (PhotoManager) lazy.getValue();
    }

    public final SceneSpHelper getSceneSpHelper() {
        Lazy lazy = this.sceneSpHelper$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (SceneSpHelper) lazy.getValue();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SceneMediaPickerDialog(final NVContext ctx) {
        super(ctx, R.style.CustomDialogWithAnimation);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.sceneSpHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<SceneSpHelper>() { // from class: com.narvii.scene.dialog.SceneMediaPickerDialog$sceneSpHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SceneSpHelper invoke() {
                return new SceneSpHelper(ctx);
            }
        });
        this.photo$delegate = LazyKt__LazyJVMKt.lazy(new Function0<PhotoManager>() { // from class: com.narvii.scene.dialog.SceneMediaPickerDialog$photo$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final PhotoManager invoke() {
                return (PhotoManager) ctx.getService("photo");
            }
        });
        setContentView(R.layout.dialog_scene_media_pick);
        View viewFindViewById = findViewById(R.id.photo_library);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.photo_library)");
        this.photoLibrary = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.online_video);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.online_video)");
        this.onlineVideo = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.video_template);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.video_template)");
        this.videoTemplate = viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.video_template_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.video_template_layout)");
        this.videoTempalteLayout = viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.cancel);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.cancel)");
        this.cancel = viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.recent_media_container);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "findViewById(R.id.recent_media_container)");
        this.recentMediaContainer = viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.recent_media);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById7, "findViewById(R.id.recent_media)");
        this.recentMedia = viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.recent_media_icon);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById8, "findViewById(R.id.recent_media_icon)");
        this.recentMediaIcon = (ThumbImageView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.recent_media_name);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById9, "findViewById(R.id.recent_media_name)");
        this.recentMediaName = (TextView) viewFindViewById9;
        View viewFindViewById10 = findViewById(R.id.recent_media_path);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById10, "findViewById(R.id.recent_media_path)");
        this.recentMediaPath = (TextView) viewFindViewById10;
        View viewFindViewById11 = findViewById(R.id.media_content_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById11, "findViewById(R.id.media_content_view)");
        this.contentView = viewFindViewById11;
        View viewFindViewById12 = findViewById(R.id.blur_bg);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById12, "findViewById(R.id.blur_bg)");
        this.backgroundImage = viewFindViewById12;
        this.photoLibrary.setOnClickListener(this);
        this.onlineVideo.setOnClickListener(this);
        this.videoTemplate.setOnClickListener(this);
        this.videoTempalteLayout.setOnClickListener(this);
        this.cancel.setOnClickListener(this);
        this.recentMediaContainer.setOnClickListener(this);
        this.recentMedia.setOnClickListener(this);
        this.backgroundImage.setOnClickListener(this);
        if (NVApplication.isStoryEditorApp()) {
            this.videoTempalteLayout.setVisibility(8);
            this.videoTemplate.setVisibility(0);
            this.onlineVideo.setVisibility(0);
        } else {
            this.videoTempalteLayout.setVisibility(0);
            this.videoTemplate.setVisibility(8);
            this.onlineVideo.setVisibility(8);
        }
    }

    public final View getPhotoLibrary() {
        return this.photoLibrary;
    }

    public final View getOnlineVideo() {
        return this.onlineVideo;
    }

    public final View getVideoTemplate() {
        return this.videoTemplate;
    }

    public final View getVideoTempalteLayout() {
        return this.videoTempalteLayout;
    }

    public final View getCancel() {
        return this.cancel;
    }

    public final View getRecentMedia() {
        return this.recentMedia;
    }

    public final View getRecentMediaContainer() {
        return this.recentMediaContainer;
    }

    public final ThumbImageView getRecentMediaIcon() {
        return this.recentMediaIcon;
    }

    public final TextView getRecentMediaName() {
        return this.recentMediaName;
    }

    public final TextView getRecentMediaPath() {
        return this.recentMediaPath;
    }

    public final View getContentView() {
        return this.contentView;
    }

    public final View getBackgroundImage() {
        return this.backgroundImage;
    }

    public final OnPickerListener getOnPickerListener() {
        return this.onPickerListener;
    }

    public final void setOnPickerListener(OnPickerListener onPickerListener) {
        this.onPickerListener = onPickerListener;
    }

    public final SceneRecentMedia getSceneRecentMedia() {
        return this.sceneRecentMedia;
    }

    public final void setSceneRecentMedia(SceneRecentMedia sceneRecentMedia) {
        this.sceneRecentMedia = sceneRecentMedia;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i = R.id.photo_library;
        if (numValueOf != null && numValueOf.intValue() == i) {
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("PhotoLibrary").send();
            OnPickerListener onPickerListener = this.onPickerListener;
            if (onPickerListener != null) {
                onPickerListener.onPickPhoto();
            }
            dismiss();
            return;
        }
        int i2 = R.id.online_video;
        if (numValueOf != null && numValueOf.intValue() == i2) {
            OnPickerListener onPickerListener2 = this.onPickerListener;
            if (onPickerListener2 != null) {
                onPickerListener2.onPickOnlineVideo();
            }
            dismiss();
            return;
        }
        int i3 = R.id.video_template_layout;
        if (numValueOf == null || numValueOf.intValue() != i3) {
            int i4 = R.id.video_template;
            if (numValueOf == null || numValueOf.intValue() != i4) {
                int i5 = R.id.recent_media;
                if (numValueOf != null && numValueOf.intValue() == i5) {
                    OnPickerListener onPickerListener3 = this.onPickerListener;
                    if (onPickerListener3 != null) {
                        SceneRecentMedia sceneRecentMedia = this.sceneRecentMedia;
                        onPickerListener3.onPickRecentMedia(sceneRecentMedia != null ? sceneRecentMedia.media : null);
                    }
                    LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("RecentVideo").send();
                    dismiss();
                    return;
                }
                int i6 = R.id.blur_bg;
                if (numValueOf == null || numValueOf.intValue() != i6) {
                    int i7 = R.id.cancel;
                    if (numValueOf == null || numValueOf.intValue() != i7) {
                        return;
                    }
                }
                dismiss();
                return;
            }
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.scene.dialog.SceneMediaPickerDialog.onClick.1
            @Override // java.lang.Runnable
            public final void run() {
                OnPickerListener onPickerListener4 = SceneMediaPickerDialog.this.getOnPickerListener();
                if (onPickerListener4 != null) {
                    onPickerListener4.onPickVideoTemplate();
                }
            }
        }, 250L);
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("VideoTemplates").send();
        dismiss();
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        this.sceneRecentMedia = getSceneSpHelper().getRecentVideo();
        if (this.sceneRecentMedia != null) {
            this.recentMediaContainer.setVisibility(0);
            ThumbImageView thumbImageView = this.recentMediaIcon;
            SceneRecentMedia sceneRecentMedia = this.sceneRecentMedia;
            if (sceneRecentMedia == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            thumbImageView.setImageMedia(sceneRecentMedia.media);
            TextView textView = this.recentMediaName;
            SceneRecentMedia sceneRecentMedia2 = this.sceneRecentMedia;
            if (sceneRecentMedia2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            textView.setText(sceneRecentMedia2.title);
            TextView textView2 = this.recentMediaPath;
            SceneRecentMedia sceneRecentMedia3 = this.sceneRecentMedia;
            if (sceneRecentMedia3 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            Media media = sceneRecentMedia3.media;
            Intrinsics.checkExpressionValueIsNotNull(media, "sceneRecentMedia!!.media");
            textView2.setText(getMediaPath(media));
        } else {
            this.recentMediaContainer.setVisibility(8);
        }
        super.show();
        View view = this.backgroundImage;
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(200L);
        view.startAnimation(alphaAnimation);
        this.contentView.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_up));
    }

    private final String getMediaPath(Media media) {
        String absolutePath;
        String str = media.url;
        if (str == null) {
            str = "";
        }
        String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(str);
        if (youtubeVideoIdFromUrl != null) {
            return "http://youtu.be/" + youtubeVideoIdFromUrl;
        }
        File path = getPhoto().getPath(str);
        return (path == null || (absolutePath = path.getAbsolutePath()) == null) ? str : absolutePath;
    }
}
