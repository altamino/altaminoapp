package com.narvii.scene.dialog;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
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
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes2.dex */
public final class SceneMediaPickerDialog extends NVDialog implements View.OnClickListener {

    @NotNull
    private final View backgroundImage;

    @NotNull
    private final View cancel;

    @NotNull
    private final View contentView;

    @Nullable
    private OnPickerListener onPickerListener;

    @NotNull
    private final View onlineVideo;

    @NotNull
    private final m photo$delegate;

    @NotNull
    private final View photoLibrary;

    @NotNull
    private final View recentMedia;

    @NotNull
    private final View recentMediaContainer;

    @NotNull
    private final ThumbImageView recentMediaIcon;

    @NotNull
    private final TextView recentMediaName;

    @NotNull
    private final TextView recentMediaPath;

    @Nullable
    private SceneRecentMedia sceneRecentMedia;

    @NotNull
    private final m sceneSpHelper$delegate;

    @NotNull
    private final View videoTempalteLayout;

    @NotNull
    private final View videoTemplate;

    public interface OnPickerListener {
        void onPickOnlineVideo();

        void onPickPhoto();

        void onPickRecentMedia(@Nullable Media media);

        void onPickVideoTemplate();
    }

    @NotNull
    public final View getBackgroundImage() {
        return this.backgroundImage;
    }

    @NotNull
    public final View getCancel() {
        return this.cancel;
    }

    @NotNull
    public final View getContentView() {
        return this.contentView;
    }

    @Nullable
    public final OnPickerListener getOnPickerListener() {
        return this.onPickerListener;
    }

    @NotNull
    public final View getOnlineVideo() {
        return this.onlineVideo;
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "scene_source";
    }

    @NotNull
    public final View getPhotoLibrary() {
        return this.photoLibrary;
    }

    @NotNull
    public final View getRecentMedia() {
        return this.recentMedia;
    }

    @NotNull
    public final View getRecentMediaContainer() {
        return this.recentMediaContainer;
    }

    @NotNull
    public final ThumbImageView getRecentMediaIcon() {
        return this.recentMediaIcon;
    }

    @NotNull
    public final TextView getRecentMediaName() {
        return this.recentMediaName;
    }

    @NotNull
    public final TextView getRecentMediaPath() {
        return this.recentMediaPath;
    }

    @Nullable
    public final SceneRecentMedia getSceneRecentMedia() {
        return this.sceneRecentMedia;
    }

    @NotNull
    public final View getVideoTempalteLayout() {
        return this.videoTempalteLayout;
    }

    @NotNull
    public final View getVideoTemplate() {
        return this.videoTemplate;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i10 = R.id.photo_library;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("PhotoLibrary").send();
            OnPickerListener onPickerListener = this.onPickerListener;
            if (onPickerListener != null) {
                onPickerListener.onPickPhoto();
            }
            dismiss();
            return;
        }
        int i11 = R.id.online_video;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            OnPickerListener onPickerListener2 = this.onPickerListener;
            if (onPickerListener2 != null) {
                onPickerListener2.onPickOnlineVideo();
            }
            dismiss();
            return;
        }
        int i12 = R.id.video_template_layout;
        if (numValueOf == null || numValueOf.intValue() != i12) {
            int i13 = R.id.video_template;
            if (numValueOf == null || numValueOf.intValue() != i13) {
                int i14 = R.id.recent_media;
                if (numValueOf != null && numValueOf.intValue() == i14) {
                    OnPickerListener onPickerListener3 = this.onPickerListener;
                    if (onPickerListener3 != null) {
                        SceneRecentMedia sceneRecentMedia = this.sceneRecentMedia;
                        onPickerListener3.onPickRecentMedia(sceneRecentMedia != null ? sceneRecentMedia.media : null);
                    }
                    LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("RecentVideo").send();
                    dismiss();
                    return;
                }
                int i15 = R.id.blur_bg;
                if (numValueOf == null || numValueOf.intValue() != i15) {
                    int i16 = R.id.cancel;
                    if (numValueOf == null || numValueOf.intValue() != i16) {
                        return;
                    }
                }
                dismiss();
                return;
            }
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.scene.dialog.a
            @Override // java.lang.Runnable
            public final void run() {
                SceneMediaPickerDialog.onClick$lambda$0(this.f2665a);
            }
        }, 250L);
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("VideoTemplates").send();
        dismiss();
    }

    public final void setOnPickerListener(@Nullable OnPickerListener onPickerListener) {
        this.onPickerListener = onPickerListener;
    }

    public final void setSceneRecentMedia(@Nullable SceneRecentMedia sceneRecentMedia) {
        this.sceneRecentMedia = sceneRecentMedia;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SceneMediaPickerDialog(@NotNull NVContext ctx) {
        super(ctx, R.style.CustomDialogWithAnimation);
        t.j(ctx, "ctx");
        this.sceneSpHelper$delegate = o.a(new SceneMediaPickerDialog$sceneSpHelper$2(ctx));
        this.photo$delegate = o.a(new SceneMediaPickerDialog$photo$2(ctx));
        setContentView(R.layout.dialog_scene_media_pick);
        View viewFindViewById = findViewById(R.id.photo_library);
        t.i(viewFindViewById, "findViewById(...)");
        this.photoLibrary = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.online_video);
        t.i(viewFindViewById2, "findViewById(...)");
        this.onlineVideo = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.video_template);
        t.i(viewFindViewById3, "findViewById(...)");
        this.videoTemplate = viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.video_template_layout);
        t.i(viewFindViewById4, "findViewById(...)");
        this.videoTempalteLayout = viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.cancel);
        t.i(viewFindViewById5, "findViewById(...)");
        this.cancel = viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.recent_media_container);
        t.i(viewFindViewById6, "findViewById(...)");
        this.recentMediaContainer = viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.recent_media);
        t.i(viewFindViewById7, "findViewById(...)");
        this.recentMedia = viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.recent_media_icon);
        t.i(viewFindViewById8, "findViewById(...)");
        this.recentMediaIcon = (ThumbImageView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.recent_media_name);
        t.i(viewFindViewById9, "findViewById(...)");
        this.recentMediaName = (TextView) viewFindViewById9;
        View viewFindViewById10 = findViewById(R.id.recent_media_path);
        t.i(viewFindViewById10, "findViewById(...)");
        this.recentMediaPath = (TextView) viewFindViewById10;
        View viewFindViewById11 = findViewById(R.id.media_content_view);
        t.i(viewFindViewById11, "findViewById(...)");
        this.contentView = viewFindViewById11;
        View viewFindViewById12 = findViewById(R.id.blur_bg);
        t.i(viewFindViewById12, "findViewById(...)");
        this.backgroundImage = viewFindViewById12;
        viewFindViewById.setOnClickListener(this);
        viewFindViewById2.setOnClickListener(this);
        viewFindViewById3.setOnClickListener(this);
        viewFindViewById4.setOnClickListener(this);
        viewFindViewById5.setOnClickListener(this);
        viewFindViewById6.setOnClickListener(this);
        viewFindViewById7.setOnClickListener(this);
        viewFindViewById12.setOnClickListener(this);
        viewFindViewById4.setVisibility(0);
        viewFindViewById3.setVisibility(8);
        viewFindViewById2.setVisibility(8);
    }

    private final String getMediaPath(Media media) {
        String str = media.url;
        if (str == null) {
            str = "";
        }
        String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(str);
        if (youtubeVideoIdFromUrl == null) {
            File path = getPhoto().getPath(str);
            String absolutePath = path != null ? path.getAbsolutePath() : null;
            return absolutePath == null ? str : absolutePath;
        }
        return "http://youtu.be/" + youtubeVideoIdFromUrl;
    }

    @NotNull
    public final PhotoManager getPhoto() {
        Object value = this.photo$delegate.getValue();
        t.i(value, "getValue(...)");
        return (PhotoManager) value;
    }

    @NotNull
    public final SceneSpHelper getSceneSpHelper() {
        return (SceneSpHelper) this.sceneSpHelper$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClick$lambda$0(SceneMediaPickerDialog this$0) {
        t.j(this$0, "this$0");
        OnPickerListener onPickerListener = this$0.onPickerListener;
        if (onPickerListener != null) {
            onPickerListener.onPickVideoTemplate();
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        SceneRecentMedia recentVideo = getSceneSpHelper().getRecentVideo();
        this.sceneRecentMedia = recentVideo;
        if (recentVideo != null) {
            this.recentMediaContainer.setVisibility(0);
            ThumbImageView thumbImageView = this.recentMediaIcon;
            SceneRecentMedia sceneRecentMedia = this.sceneRecentMedia;
            t.g(sceneRecentMedia);
            thumbImageView.setImageMedia(sceneRecentMedia.media);
            TextView textView = this.recentMediaName;
            SceneRecentMedia sceneRecentMedia2 = this.sceneRecentMedia;
            t.g(sceneRecentMedia2);
            textView.setText(sceneRecentMedia2.title);
            TextView textView2 = this.recentMediaPath;
            SceneRecentMedia sceneRecentMedia3 = this.sceneRecentMedia;
            t.g(sceneRecentMedia3);
            Media media = sceneRecentMedia3.media;
            t.i(media, "media");
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
}
