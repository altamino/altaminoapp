package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.RadiusLayout;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class DialogSceneMediaPickBinding implements ViewBinding {

    @NonNull
    public final ImageView blurBg;

    @NonNull
    public final TextView cancel;

    @NonNull
    public final LinearLayout contentView;

    @NonNull
    public final RadiusLayout mediaContentView;

    @NonNull
    public final LinearLayout onlineVideo;

    @NonNull
    public final LinearLayout photoLibrary;

    @NonNull
    public final RelativeLayout recentMedia;

    @NonNull
    public final LinearLayout recentMediaContainer;

    @NonNull
    public final ThumbImageView recentMediaIcon;

    @NonNull
    public final FrameLayout recentMediaIconLayout;

    @NonNull
    public final TextView recentMediaName;

    @NonNull
    public final TextView recentMediaPath;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final LinearLayout videoTemplate;

    @NonNull
    public final LinearLayout videoTemplateLayout;

    @NonNull
    public static DialogSceneMediaPickBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogSceneMediaPickBinding bind(@NonNull View view) {
        int i10 = R.id.blur_bg;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.cancel;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.content_view;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                if (linearLayout != null) {
                    i10 = R.id.media_content_view;
                    RadiusLayout radiusLayout = (RadiusLayout) ViewBindings.a(view, i10);
                    if (radiusLayout != null) {
                        i10 = R.id.online_video;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
                        if (linearLayout2 != null) {
                            i10 = R.id.photo_library;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, i10);
                            if (linearLayout3 != null) {
                                i10 = R.id.recent_media;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, i10);
                                if (relativeLayout != null) {
                                    i10 = R.id.recent_media_container;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, i10);
                                    if (linearLayout4 != null) {
                                        i10 = R.id.recent_media_icon;
                                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
                                        if (thumbImageView != null) {
                                            i10 = R.id.recent_media_icon_layout;
                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                                            if (frameLayout != null) {
                                                i10 = R.id.recent_media_name;
                                                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                                                if (textView2 != null) {
                                                    i10 = R.id.recent_media_path;
                                                    TextView textView3 = (TextView) ViewBindings.a(view, i10);
                                                    if (textView3 != null) {
                                                        i10 = R.id.video_template;
                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, i10);
                                                        if (linearLayout5 != null) {
                                                            i10 = R.id.video_template_layout;
                                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, i10);
                                                            if (linearLayout6 != null) {
                                                                return new DialogSceneMediaPickBinding((FrameLayout) view, imageView, textView, linearLayout, radiusLayout, linearLayout2, linearLayout3, relativeLayout, linearLayout4, thumbImageView, frameLayout, textView2, textView3, linearLayout5, linearLayout6);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogSceneMediaPickBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_scene_media_pick, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogSceneMediaPickBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull RadiusLayout radiusLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout4, @NonNull ThumbImageView thumbImageView, @NonNull FrameLayout frameLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6) {
        this.rootView = frameLayout;
        this.blurBg = imageView;
        this.cancel = textView;
        this.contentView = linearLayout;
        this.mediaContentView = radiusLayout;
        this.onlineVideo = linearLayout2;
        this.photoLibrary = linearLayout3;
        this.recentMedia = relativeLayout;
        this.recentMediaContainer = linearLayout4;
        this.recentMediaIcon = thumbImageView;
        this.recentMediaIconLayout = frameLayout2;
        this.recentMediaName = textView2;
        this.recentMediaPath = textView3;
        this.videoTemplate = linearLayout5;
        this.videoTemplateLayout = linearLayout6;
    }
}
