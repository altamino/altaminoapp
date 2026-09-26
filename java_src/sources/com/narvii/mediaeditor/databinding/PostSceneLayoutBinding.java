package com.narvii.mediaeditor.databinding;

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
import com.narvii.mediaeditor.R;
import com.narvii.scene.view.NvStoryBackgroundMusicButton;
import com.narvii.scene.view.PlayerContainerLayout;
import com.narvii.scene.view.SceneRecyclerView;
import com.narvii.widget.RadiusLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class PostSceneLayoutBinding implements ViewBinding {

    @NonNull
    public final NvStoryBackgroundMusicButton backgroundMusicButton;

    @NonNull
    public final FrameLayout createSceneLayout;

    @NonNull
    public final TextView emptyManageLayout;

    @NonNull
    public final LinearLayout emptyPlaceholderView;

    @NonNull
    public final LinearLayout errorPlaceholderView;

    @NonNull
    public final FrameLayout flWarning;

    @NonNull
    public final TintButton ivCreateScene;

    @NonNull
    public final TintButton ivWarning;

    @NonNull
    public final RelativeLayout manageLayout;

    @NonNull
    public final LinearLayout overlay;

    @NonNull
    public final PlayerContainerLayout playerContainer;

    @NonNull
    public final RelativeLayout playerView;

    @NonNull
    public final FrameLayout previewContainer;

    @NonNull
    public final RadiusLayout radiusLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ImageView roundCornerCover;

    @NonNull
    public final SceneRecyclerView sceneRecyclerView;

    @NonNull
    public final View timeSplit;

    @NonNull
    public final TextView tvAdvancedStory;

    @NonNull
    public final TextView tvManageScene;

    @NonNull
    public final TextView tvTimeCurrent;

    @NonNull
    public final TextView tvTimeTotal;

    @NonNull
    public final ImageView videoPlayButton;

    private PostSceneLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull NvStoryBackgroundMusicButton nvStoryBackgroundMusicButton, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull FrameLayout frameLayout2, @NonNull TintButton tintButton, @NonNull TintButton tintButton2, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout4, @NonNull PlayerContainerLayout playerContainerLayout, @NonNull RelativeLayout relativeLayout2, @NonNull FrameLayout frameLayout3, @NonNull RadiusLayout radiusLayout, @NonNull ImageView imageView, @NonNull SceneRecyclerView sceneRecyclerView, @NonNull View view, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.backgroundMusicButton = nvStoryBackgroundMusicButton;
        this.createSceneLayout = frameLayout;
        this.emptyManageLayout = textView;
        this.emptyPlaceholderView = linearLayout2;
        this.errorPlaceholderView = linearLayout3;
        this.flWarning = frameLayout2;
        this.ivCreateScene = tintButton;
        this.ivWarning = tintButton2;
        this.manageLayout = relativeLayout;
        this.overlay = linearLayout4;
        this.playerContainer = playerContainerLayout;
        this.playerView = relativeLayout2;
        this.previewContainer = frameLayout3;
        this.radiusLayout = radiusLayout;
        this.roundCornerCover = imageView;
        this.sceneRecyclerView = sceneRecyclerView;
        this.timeSplit = view;
        this.tvAdvancedStory = textView2;
        this.tvManageScene = textView3;
        this.tvTimeCurrent = textView4;
        this.tvTimeTotal = textView5;
        this.videoPlayButton = imageView2;
    }

    @NonNull
    public static PostSceneLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostSceneLayoutBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.background_music_button;
        NvStoryBackgroundMusicButton nvStoryBackgroundMusicButton = (NvStoryBackgroundMusicButton) ViewBindings.a(view, i10);
        if (nvStoryBackgroundMusicButton != null) {
            i10 = R.id.create_scene_layout;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
            if (frameLayout != null) {
                i10 = R.id.empty_manage_layout;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    i10 = R.id.empty_placeholder_view;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                    if (linearLayout != null) {
                        i10 = R.id.error_placeholder_view;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
                        if (linearLayout2 != null) {
                            i10 = R.id.fl_warning;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, i10);
                            if (frameLayout2 != null) {
                                i10 = R.id.iv_create_scene;
                                TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
                                if (tintButton != null) {
                                    i10 = R.id.iv_warning;
                                    TintButton tintButton2 = (TintButton) ViewBindings.a(view, i10);
                                    if (tintButton2 != null) {
                                        i10 = R.id.manage_layout;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, i10);
                                        if (relativeLayout != null) {
                                            LinearLayout linearLayout3 = (LinearLayout) view;
                                            i10 = R.id.player_container;
                                            PlayerContainerLayout playerContainerLayout = (PlayerContainerLayout) ViewBindings.a(view, i10);
                                            if (playerContainerLayout != null) {
                                                i10 = R.id.player_view;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.a(view, i10);
                                                if (relativeLayout2 != null) {
                                                    i10 = R.id.preview_container;
                                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, i10);
                                                    if (frameLayout3 != null) {
                                                        i10 = R.id.radius_layout;
                                                        RadiusLayout radiusLayout = (RadiusLayout) ViewBindings.a(view, i10);
                                                        if (radiusLayout != null) {
                                                            i10 = R.id.round_corner_cover;
                                                            ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                                                            if (imageView != null) {
                                                                i10 = R.id.scene_recycler_view;
                                                                SceneRecyclerView sceneRecyclerView = (SceneRecyclerView) ViewBindings.a(view, i10);
                                                                if (sceneRecyclerView != null && (viewA = ViewBindings.a(view, (i10 = R.id.time_split))) != null) {
                                                                    i10 = R.id.tv_advanced_story;
                                                                    TextView textView2 = (TextView) ViewBindings.a(view, i10);
                                                                    if (textView2 != null) {
                                                                        i10 = R.id.tv_manage_scene;
                                                                        TextView textView3 = (TextView) ViewBindings.a(view, i10);
                                                                        if (textView3 != null) {
                                                                            i10 = R.id.tv_time_current;
                                                                            TextView textView4 = (TextView) ViewBindings.a(view, i10);
                                                                            if (textView4 != null) {
                                                                                i10 = R.id.tv_time_total;
                                                                                TextView textView5 = (TextView) ViewBindings.a(view, i10);
                                                                                if (textView5 != null) {
                                                                                    i10 = R.id.video_play_button;
                                                                                    ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                                                                                    if (imageView2 != null) {
                                                                                        return new PostSceneLayoutBinding(linearLayout3, nvStoryBackgroundMusicButton, frameLayout, textView, linearLayout, linearLayout2, frameLayout2, tintButton, tintButton2, relativeLayout, linearLayout3, playerContainerLayout, relativeLayout2, frameLayout3, radiusLayout, imageView, sceneRecyclerView, viewA, textView2, textView3, textView4, textView5, imageView2);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PostSceneLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_scene_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
