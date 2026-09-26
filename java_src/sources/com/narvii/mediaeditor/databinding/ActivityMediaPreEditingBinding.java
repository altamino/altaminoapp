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
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.pre_editing.widget.PreEditTimeLineComponent;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.widget.SpinningView;
import com.narvii.widget.StatusBarPlaceHolder;

/* JADX INFO: loaded from: classes11.dex */
public final class ActivityMediaPreEditingBinding implements ViewBinding {

    @NonNull
    public final LinearLayout contentPanel;

    @NonNull
    public final RelativeLayout contentRl;

    @NonNull
    public final MediaOptionPanel optionsPanel;

    @NonNull
    public final ImageView playerButton;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final StatusBarPlaceHolder statusBarPlaceholder;

    @NonNull
    public final TextView timeLineControllerLength;

    @NonNull
    public final FrameLayout videoContainer;

    @NonNull
    public final SpinningView videoProgressView;

    @NonNull
    public final PreEditTimeLineComponent videoTimeLineComponent;

    @NonNull
    public final NVVideoView videoViewPlayer;

    @NonNull
    public static ActivityMediaPreEditingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ActivityMediaPreEditingBinding bind(@NonNull View view) {
        int i10 = R.id.contentPanel;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
        if (linearLayout != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            i10 = R.id.options_panel;
            MediaOptionPanel mediaOptionPanel = (MediaOptionPanel) ViewBindings.a(view, i10);
            if (mediaOptionPanel != null) {
                i10 = R.id.player_button;
                ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                if (imageView != null) {
                    i10 = R.id.status_bar_placeholder;
                    StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, i10);
                    if (statusBarPlaceHolder != null) {
                        i10 = R.id.time_line_controller_length;
                        TextView textView = (TextView) ViewBindings.a(view, i10);
                        if (textView != null) {
                            i10 = R.id.video_container;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                            if (frameLayout != null) {
                                i10 = R.id.video_progress_view;
                                SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
                                if (spinningView != null) {
                                    i10 = R.id.video_time_line_component;
                                    PreEditTimeLineComponent preEditTimeLineComponent = (PreEditTimeLineComponent) ViewBindings.a(view, i10);
                                    if (preEditTimeLineComponent != null) {
                                        i10 = R.id.video_view_player;
                                        NVVideoView nVVideoView = (NVVideoView) ViewBindings.a(view, i10);
                                        if (nVVideoView != null) {
                                            return new ActivityMediaPreEditingBinding(relativeLayout, linearLayout, relativeLayout, mediaOptionPanel, imageView, statusBarPlaceHolder, textView, frameLayout, spinningView, preEditTimeLineComponent, nVVideoView);
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
    public static ActivityMediaPreEditingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_media_pre_editing, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ActivityMediaPreEditingBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull MediaOptionPanel mediaOptionPanel, @NonNull ImageView imageView, @NonNull StatusBarPlaceHolder statusBarPlaceHolder, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull SpinningView spinningView, @NonNull PreEditTimeLineComponent preEditTimeLineComponent, @NonNull NVVideoView nVVideoView) {
        this.rootView = relativeLayout;
        this.contentPanel = linearLayout;
        this.contentRl = relativeLayout2;
        this.optionsPanel = mediaOptionPanel;
        this.playerButton = imageView;
        this.statusBarPlaceholder = statusBarPlaceHolder;
        this.timeLineControllerLength = textView;
        this.videoContainer = frameLayout;
        this.videoProgressView = spinningView;
        this.videoTimeLineComponent = preEditTimeLineComponent;
        this.videoViewPlayer = nVVideoView;
    }
}
