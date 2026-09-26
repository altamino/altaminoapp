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
import com.github.mmin18.widget.FlexLayout;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.mediaeditor.R;
import com.narvii.video.widget.ClipFastSwitchingPanel;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import com.narvii.widget.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentSceneEditorBinding implements ViewBinding {

    @NonNull
    public final ClipFastSwitchingPanel clipFastSwitchingPanel;

    @NonNull
    public final View coverLayer;

    @NonNull
    public final View divider;

    @NonNull
    public final ImageView emptyViewOptionAddVideo;

    @NonNull
    public final LinearLayout opCrop;

    @NonNull
    public final LinearLayout opMusic;

    @NonNull
    public final LinearLayout opPip;

    @NonNull
    public final LinearLayout opSfx;

    @NonNull
    public final LinearLayout opSpeed;

    @NonNull
    public final LinearLayout opSplit;

    @NonNull
    public final LinearLayout opSticker;

    @NonNull
    public final LinearLayout opText;

    @NonNull
    public final LinearLayout opTrim;

    @NonNull
    public final LinearLayout operationPanel;

    @NonNull
    public final LinearLayout operationPanelForTemplate;

    @NonNull
    public final ImageView optionAddVideo;

    @NonNull
    public final View pauseShadow;

    @NonNull
    public final ImageView playerButton;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final RelativeLayout sceneEmptyView;

    @NonNull
    public final TextView sceneInvalidHint;

    @NonNull
    public final OverlayListPlaceholder topBarPlaceholder;

    @NonNull
    public final FrameLayout videoContainer;

    @NonNull
    public final TextView videoDuration;

    @NonNull
    public final TextView videoPlaybackTime;

    @NonNull
    public final HorizontalRecyclerView videoTimeLine;

    @NonNull
    public final MediaTimeLineComponent videoTimeLineComponent;

    @NonNull
    public final NVEditorPreviewVideoVIew videoViewPlayer;

    private FragmentSceneEditorBinding(@NonNull FlexLayout flexLayout, @NonNull ClipFastSwitchingPanel clipFastSwitchingPanel, @NonNull View view, @NonNull View view2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull LinearLayout linearLayout8, @NonNull LinearLayout linearLayout9, @NonNull LinearLayout linearLayout10, @NonNull LinearLayout linearLayout11, @NonNull ImageView imageView2, @NonNull View view3, @NonNull ImageView imageView3, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull FrameLayout frameLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull MediaTimeLineComponent mediaTimeLineComponent, @NonNull NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew) {
        this.rootView = flexLayout;
        this.clipFastSwitchingPanel = clipFastSwitchingPanel;
        this.coverLayer = view;
        this.divider = view2;
        this.emptyViewOptionAddVideo = imageView;
        this.opCrop = linearLayout;
        this.opMusic = linearLayout2;
        this.opPip = linearLayout3;
        this.opSfx = linearLayout4;
        this.opSpeed = linearLayout5;
        this.opSplit = linearLayout6;
        this.opSticker = linearLayout7;
        this.opText = linearLayout8;
        this.opTrim = linearLayout9;
        this.operationPanel = linearLayout10;
        this.operationPanelForTemplate = linearLayout11;
        this.optionAddVideo = imageView2;
        this.pauseShadow = view3;
        this.playerButton = imageView3;
        this.sceneEmptyView = relativeLayout;
        this.sceneInvalidHint = textView;
        this.topBarPlaceholder = overlayListPlaceholder;
        this.videoContainer = frameLayout;
        this.videoDuration = textView2;
        this.videoPlaybackTime = textView3;
        this.videoTimeLine = horizontalRecyclerView;
        this.videoTimeLineComponent = mediaTimeLineComponent;
        this.videoViewPlayer = nVEditorPreviewVideoVIew;
    }

    @NonNull
    public static FragmentSceneEditorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSceneEditorBinding bind(@NonNull View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i10 = R.id.clip_fast_switching_panel;
        ClipFastSwitchingPanel clipFastSwitchingPanel = (ClipFastSwitchingPanel) ViewBindings.a(view, i10);
        if (clipFastSwitchingPanel != null && (viewA = ViewBindings.a(view, (i10 = R.id.cover_layer))) != null && (viewA2 = ViewBindings.a(view, (i10 = R.id.divider))) != null) {
            i10 = R.id.empty_view_option_add_video;
            ImageView imageView = (ImageView) ViewBindings.a(view, i10);
            if (imageView != null) {
                i10 = R.id.op_crop;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                if (linearLayout != null) {
                    i10 = R.id.op_music;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
                    if (linearLayout2 != null) {
                        i10 = R.id.op_pip;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, i10);
                        if (linearLayout3 != null) {
                            i10 = R.id.op_sfx;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, i10);
                            if (linearLayout4 != null) {
                                i10 = R.id.op_speed;
                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, i10);
                                if (linearLayout5 != null) {
                                    i10 = R.id.op_split;
                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, i10);
                                    if (linearLayout6 != null) {
                                        i10 = R.id.op_sticker;
                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.a(view, i10);
                                        if (linearLayout7 != null) {
                                            i10 = R.id.op_text;
                                            LinearLayout linearLayout8 = (LinearLayout) ViewBindings.a(view, i10);
                                            if (linearLayout8 != null) {
                                                i10 = R.id.op_trim;
                                                LinearLayout linearLayout9 = (LinearLayout) ViewBindings.a(view, i10);
                                                if (linearLayout9 != null) {
                                                    i10 = R.id.operation_panel;
                                                    LinearLayout linearLayout10 = (LinearLayout) ViewBindings.a(view, i10);
                                                    if (linearLayout10 != null) {
                                                        i10 = R.id.operation_panel_for_template;
                                                        LinearLayout linearLayout11 = (LinearLayout) ViewBindings.a(view, i10);
                                                        if (linearLayout11 != null) {
                                                            i10 = R.id.option_add_video;
                                                            ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                                                            if (imageView2 != null && (viewA3 = ViewBindings.a(view, (i10 = R.id.pause_shadow))) != null) {
                                                                i10 = R.id.player_button;
                                                                ImageView imageView3 = (ImageView) ViewBindings.a(view, i10);
                                                                if (imageView3 != null) {
                                                                    i10 = R.id.scene_empty_view;
                                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, i10);
                                                                    if (relativeLayout != null) {
                                                                        i10 = R.id.scene_invalid_hint;
                                                                        TextView textView = (TextView) ViewBindings.a(view, i10);
                                                                        if (textView != null) {
                                                                            i10 = R.id.top_bar_placeholder;
                                                                            OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, i10);
                                                                            if (overlayListPlaceholder != null) {
                                                                                i10 = R.id.video_container;
                                                                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                                                                                if (frameLayout != null) {
                                                                                    i10 = R.id.video_duration;
                                                                                    TextView textView2 = (TextView) ViewBindings.a(view, i10);
                                                                                    if (textView2 != null) {
                                                                                        i10 = R.id.video_playback_time;
                                                                                        TextView textView3 = (TextView) ViewBindings.a(view, i10);
                                                                                        if (textView3 != null) {
                                                                                            i10 = R.id.video_time_line;
                                                                                            HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, i10);
                                                                                            if (horizontalRecyclerView != null) {
                                                                                                i10 = R.id.video_time_line_component;
                                                                                                MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) ViewBindings.a(view, i10);
                                                                                                if (mediaTimeLineComponent != null) {
                                                                                                    i10 = R.id.video_view_player;
                                                                                                    NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew = (NVEditorPreviewVideoVIew) ViewBindings.a(view, i10);
                                                                                                    if (nVEditorPreviewVideoVIew != null) {
                                                                                                        return new FragmentSceneEditorBinding((FlexLayout) view, clipFastSwitchingPanel, viewA, viewA2, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, linearLayout10, linearLayout11, imageView2, viewA3, imageView3, relativeLayout, textView, overlayListPlaceholder, frameLayout, textView2, textView3, horizontalRecyclerView, mediaTimeLineComponent, nVEditorPreviewVideoVIew);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentSceneEditorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_scene_editor, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
