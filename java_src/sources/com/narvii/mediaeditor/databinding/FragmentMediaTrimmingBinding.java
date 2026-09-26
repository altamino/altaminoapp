package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.mediaeditor.R;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.video.widget.MediaRetrieveController;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.VolumeProgressView;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.StatusBarPlaceHolder;

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentMediaTrimmingBinding implements ViewBinding {

    @NonNull
    public final LinearLayout contentPanel;

    @NonNull
    public final MediaOptionPanel optionsPanel;

    @NonNull
    public final View pauseShadow;

    @NonNull
    public final ImageView playerButton;

    @NonNull
    public final MediaRetrieveController retrieveController;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final StatusBarPlaceHolder statusBarPlaceholder;

    @NonNull
    public final TextView timeLineControllerLength;

    @NonNull
    public final FrameLayout videoContainer;

    @NonNull
    public final HorizontalRecyclerView videoTimeLine;

    @NonNull
    public final MediaTimeLineComponent videoTimeLineComponent;

    @NonNull
    public final NVEditorPreviewVideoVIew videoViewPlayer;

    @NonNull
    public final VolumeProgressView volumeProgressView;

    @NonNull
    public static FragmentMediaTrimmingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMediaTrimmingBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.contentPanel;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
        if (linearLayout != null) {
            i10 = R.id.options_panel;
            MediaOptionPanel mediaOptionPanel = (MediaOptionPanel) ViewBindings.a(view, i10);
            if (mediaOptionPanel != null && (viewA = ViewBindings.a(view, (i10 = R.id.pause_shadow))) != null) {
                i10 = R.id.player_button;
                ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                if (imageView != null) {
                    i10 = R.id.retrieve_controller;
                    MediaRetrieveController mediaRetrieveController = (MediaRetrieveController) ViewBindings.a(view, i10);
                    if (mediaRetrieveController != null) {
                        i10 = R.id.status_bar_placeholder;
                        StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, i10);
                        if (statusBarPlaceHolder != null) {
                            i10 = R.id.time_line_controller_length;
                            TextView textView = (TextView) ViewBindings.a(view, i10);
                            if (textView != null) {
                                i10 = R.id.video_container;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                                if (frameLayout != null) {
                                    i10 = R.id.video_time_line;
                                    HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, i10);
                                    if (horizontalRecyclerView != null) {
                                        i10 = R.id.video_time_line_component;
                                        MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) ViewBindings.a(view, i10);
                                        if (mediaTimeLineComponent != null) {
                                            i10 = R.id.video_view_player;
                                            NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew = (NVEditorPreviewVideoVIew) ViewBindings.a(view, i10);
                                            if (nVEditorPreviewVideoVIew != null) {
                                                i10 = R.id.volume_progress_view;
                                                VolumeProgressView volumeProgressView = (VolumeProgressView) ViewBindings.a(view, i10);
                                                if (volumeProgressView != null) {
                                                    return new FragmentMediaTrimmingBinding((FlexLayout) view, linearLayout, mediaOptionPanel, viewA, imageView, mediaRetrieveController, statusBarPlaceHolder, textView, frameLayout, horizontalRecyclerView, mediaTimeLineComponent, nVEditorPreviewVideoVIew, volumeProgressView);
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
    public static FragmentMediaTrimmingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_media_trimming, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMediaTrimmingBinding(@NonNull FlexLayout flexLayout, @NonNull LinearLayout linearLayout, @NonNull MediaOptionPanel mediaOptionPanel, @NonNull View view, @NonNull ImageView imageView, @NonNull MediaRetrieveController mediaRetrieveController, @NonNull StatusBarPlaceHolder statusBarPlaceHolder, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull MediaTimeLineComponent mediaTimeLineComponent, @NonNull NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew, @NonNull VolumeProgressView volumeProgressView) {
        this.rootView = flexLayout;
        this.contentPanel = linearLayout;
        this.optionsPanel = mediaOptionPanel;
        this.pauseShadow = view;
        this.playerButton = imageView;
        this.retrieveController = mediaRetrieveController;
        this.statusBarPlaceholder = statusBarPlaceHolder;
        this.timeLineControllerLength = textView;
        this.videoContainer = frameLayout;
        this.videoTimeLine = horizontalRecyclerView;
        this.videoTimeLineComponent = mediaTimeLineComponent;
        this.videoViewPlayer = nVEditorPreviewVideoVIew;
        this.volumeProgressView = volumeProgressView;
    }
}
