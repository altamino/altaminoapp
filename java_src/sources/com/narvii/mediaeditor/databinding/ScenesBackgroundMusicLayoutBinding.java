package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.scene.view.AudioOptionPanel;
import com.narvii.scene.view.BalanceSeekBar;
import com.narvii.scene.view.EditSceneBGMLayout;
import com.narvii.scene.view.PlayerContainerLayout;
import com.narvii.scene.view.ScenePreviewLayout;
import com.narvii.video.widget.MediaRetrieveController;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.widget.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes3.dex */
public final class ScenesBackgroundMusicLayoutBinding implements ViewBinding {

    @NonNull
    public final BalanceSeekBar balanceSeekBar;

    @NonNull
    public final EditSceneBGMLayout editSceneBGMLayout;

    @NonNull
    public final TextView fadeInView;

    @NonNull
    public final TextView fadeOutView;

    @NonNull
    public final AudioOptionPanel optionsPanel;

    @NonNull
    public final LinearLayout overlay;

    @NonNull
    public final PlayerContainerLayout playerContainer;

    @NonNull
    public final ScenePreviewLayout previewLayout;

    @NonNull
    public final MediaRetrieveController retrieveController;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ImageView videoPlayButton;

    @NonNull
    public final HorizontalRecyclerView videoTimeLine;

    @NonNull
    public final MediaTimeLineComponent videoTimeLineComponent;

    @NonNull
    public static ScenesBackgroundMusicLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ScenesBackgroundMusicLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.balance_seek_bar;
        BalanceSeekBar balanceSeekBar = (BalanceSeekBar) ViewBindings.a(view, i10);
        if (balanceSeekBar != null) {
            i10 = R.id.edit_scene_BGM_Layout;
            EditSceneBGMLayout editSceneBGMLayout = (EditSceneBGMLayout) ViewBindings.a(view, i10);
            if (editSceneBGMLayout != null) {
                i10 = R.id.fade_in_view;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    i10 = R.id.fade_out_view;
                    TextView textView2 = (TextView) ViewBindings.a(view, i10);
                    if (textView2 != null) {
                        i10 = R.id.options_panel;
                        AudioOptionPanel audioOptionPanel = (AudioOptionPanel) ViewBindings.a(view, i10);
                        if (audioOptionPanel != null) {
                            LinearLayout linearLayout = (LinearLayout) view;
                            i10 = R.id.player_container;
                            PlayerContainerLayout playerContainerLayout = (PlayerContainerLayout) ViewBindings.a(view, i10);
                            if (playerContainerLayout != null) {
                                i10 = R.id.preview_layout;
                                ScenePreviewLayout scenePreviewLayout = (ScenePreviewLayout) ViewBindings.a(view, i10);
                                if (scenePreviewLayout != null) {
                                    i10 = R.id.retrieve_controller;
                                    MediaRetrieveController mediaRetrieveController = (MediaRetrieveController) ViewBindings.a(view, i10);
                                    if (mediaRetrieveController != null) {
                                        i10 = R.id.video_play_button;
                                        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                                        if (imageView != null) {
                                            i10 = R.id.video_time_line;
                                            HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, i10);
                                            if (horizontalRecyclerView != null) {
                                                i10 = R.id.video_time_line_component;
                                                MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) ViewBindings.a(view, i10);
                                                if (mediaTimeLineComponent != null) {
                                                    return new ScenesBackgroundMusicLayoutBinding(linearLayout, balanceSeekBar, editSceneBGMLayout, textView, textView2, audioOptionPanel, linearLayout, playerContainerLayout, scenePreviewLayout, mediaRetrieveController, imageView, horizontalRecyclerView, mediaTimeLineComponent);
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
    public static ScenesBackgroundMusicLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.scenes_background_music_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ScenesBackgroundMusicLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull BalanceSeekBar balanceSeekBar, @NonNull EditSceneBGMLayout editSceneBGMLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull AudioOptionPanel audioOptionPanel, @NonNull LinearLayout linearLayout2, @NonNull PlayerContainerLayout playerContainerLayout, @NonNull ScenePreviewLayout scenePreviewLayout, @NonNull MediaRetrieveController mediaRetrieveController, @NonNull ImageView imageView, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull MediaTimeLineComponent mediaTimeLineComponent) {
        this.rootView = linearLayout;
        this.balanceSeekBar = balanceSeekBar;
        this.editSceneBGMLayout = editSceneBGMLayout;
        this.fadeInView = textView;
        this.fadeOutView = textView2;
        this.optionsPanel = audioOptionPanel;
        this.overlay = linearLayout2;
        this.playerContainer = playerContainerLayout;
        this.previewLayout = scenePreviewLayout;
        this.retrieveController = mediaRetrieveController;
        this.videoPlayButton = imageView;
        this.videoTimeLine = horizontalRecyclerView;
        this.videoTimeLineComponent = mediaTimeLineComponent;
    }
}
