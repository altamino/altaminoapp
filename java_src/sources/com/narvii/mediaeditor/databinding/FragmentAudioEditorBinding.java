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
import com.narvii.mediaeditor.R;
import com.narvii.video.widget.AudioEditorPanel;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.VolumeProgressView;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.StatusBarPlaceHolder;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentAudioEditorBinding implements ViewBinding {

    @NonNull
    public final AudioEditorPanel audioEditorPanel;

    @NonNull
    public final RelativeLayout contentPanel;

    @NonNull
    public final View divider;

    @NonNull
    public final ImageView muteIv;

    @NonNull
    public final RelativeLayout muteRl;

    @NonNull
    public final ImageView optionAddMusic;

    @NonNull
    public final ImageView optionAddSfx;

    @NonNull
    public final ImageView optionDone;

    @NonNull
    public final RelativeLayout optionsPanel;

    @NonNull
    public final ImageView playerButton;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final StatusBarPlaceHolder statusBarPlaceholder;

    @NonNull
    public final LinearLayout viceTimeLinePanel;

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

    @NonNull
    public final FrameLayout videoVolumePanel;

    @NonNull
    public final FrameLayout videoVolumePanelProgressBackground;

    @NonNull
    public final VolumeProgressView videoVolumePanelProgressView;

    private FragmentAudioEditorBinding(@NonNull FlexLayout flexLayout, @NonNull AudioEditorPanel audioEditorPanel, @NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull RelativeLayout relativeLayout3, @NonNull ImageView imageView5, @NonNull StatusBarPlaceHolder statusBarPlaceHolder, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull MediaTimeLineComponent mediaTimeLineComponent, @NonNull NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull VolumeProgressView volumeProgressView) {
        this.rootView = flexLayout;
        this.audioEditorPanel = audioEditorPanel;
        this.contentPanel = relativeLayout;
        this.divider = view;
        this.muteIv = imageView;
        this.muteRl = relativeLayout2;
        this.optionAddMusic = imageView2;
        this.optionAddSfx = imageView3;
        this.optionDone = imageView4;
        this.optionsPanel = relativeLayout3;
        this.playerButton = imageView5;
        this.statusBarPlaceholder = statusBarPlaceHolder;
        this.viceTimeLinePanel = linearLayout;
        this.videoContainer = frameLayout;
        this.videoDuration = textView;
        this.videoPlaybackTime = textView2;
        this.videoTimeLine = horizontalRecyclerView;
        this.videoTimeLineComponent = mediaTimeLineComponent;
        this.videoViewPlayer = nVEditorPreviewVideoVIew;
        this.videoVolumePanel = frameLayout2;
        this.videoVolumePanelProgressBackground = frameLayout3;
        this.videoVolumePanelProgressView = volumeProgressView;
    }

    @NonNull
    public static FragmentAudioEditorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentAudioEditorBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.audio_editor_panel;
        AudioEditorPanel audioEditorPanel = (AudioEditorPanel) ViewBindings.a(view, i10);
        if (audioEditorPanel != null) {
            i10 = R.id.contentPanel;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, i10);
            if (relativeLayout != null && (viewA = ViewBindings.a(view, (i10 = R.id.divider))) != null) {
                i10 = R.id.mute_iv;
                ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                if (imageView != null) {
                    i10 = R.id.mute_rl;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.a(view, i10);
                    if (relativeLayout2 != null) {
                        i10 = R.id.option_add_music;
                        ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                        if (imageView2 != null) {
                            i10 = R.id.option_add_sfx;
                            ImageView imageView3 = (ImageView) ViewBindings.a(view, i10);
                            if (imageView3 != null) {
                                i10 = R.id.option_done;
                                ImageView imageView4 = (ImageView) ViewBindings.a(view, i10);
                                if (imageView4 != null) {
                                    i10 = R.id.options_panel;
                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.a(view, i10);
                                    if (relativeLayout3 != null) {
                                        i10 = R.id.player_button;
                                        ImageView imageView5 = (ImageView) ViewBindings.a(view, i10);
                                        if (imageView5 != null) {
                                            i10 = R.id.status_bar_placeholder;
                                            StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, i10);
                                            if (statusBarPlaceHolder != null) {
                                                i10 = R.id.vice_time_line_panel;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                                                if (linearLayout != null) {
                                                    i10 = R.id.video_container;
                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                                                    if (frameLayout != null) {
                                                        i10 = R.id.video_duration;
                                                        TextView textView = (TextView) ViewBindings.a(view, i10);
                                                        if (textView != null) {
                                                            i10 = R.id.video_playback_time;
                                                            TextView textView2 = (TextView) ViewBindings.a(view, i10);
                                                            if (textView2 != null) {
                                                                i10 = R.id.video_time_line;
                                                                HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, i10);
                                                                if (horizontalRecyclerView != null) {
                                                                    i10 = R.id.video_time_line_component;
                                                                    MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) ViewBindings.a(view, i10);
                                                                    if (mediaTimeLineComponent != null) {
                                                                        i10 = R.id.video_view_player;
                                                                        NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew = (NVEditorPreviewVideoVIew) ViewBindings.a(view, i10);
                                                                        if (nVEditorPreviewVideoVIew != null) {
                                                                            i10 = R.id.video_volume_panel;
                                                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, i10);
                                                                            if (frameLayout2 != null) {
                                                                                i10 = R.id.video_volume_panel_progress_background;
                                                                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, i10);
                                                                                if (frameLayout3 != null) {
                                                                                    i10 = R.id.video_volume_panel_progress_view;
                                                                                    VolumeProgressView volumeProgressView = (VolumeProgressView) ViewBindings.a(view, i10);
                                                                                    if (volumeProgressView != null) {
                                                                                        return new FragmentAudioEditorBinding((FlexLayout) view, audioEditorPanel, relativeLayout, viewA, imageView, relativeLayout2, imageView2, imageView3, imageView4, relativeLayout3, imageView5, statusBarPlaceHolder, linearLayout, frameLayout, textView, textView2, horizontalRecyclerView, mediaTimeLineComponent, nVEditorPreviewVideoVIew, frameLayout2, frameLayout3, volumeProgressView);
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
    public static FragmentAudioEditorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_audio_editor, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
