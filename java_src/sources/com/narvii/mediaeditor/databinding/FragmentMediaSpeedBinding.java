package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.mediaeditor.R;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.video.widget.MediaSpeedSelectView;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import com.narvii.widget.StatusBarPlaceHolder;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentMediaSpeedBinding implements ViewBinding {

    @NonNull
    public final LinearLayout contentPanel;

    @NonNull
    public final MediaOptionPanel optionsPanel;

    @NonNull
    public final View pauseShadow;

    @NonNull
    public final ImageView playerButton;

    @NonNull
    public final LinearLayout progressLl;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final SeekBar seekbar;

    @NonNull
    public final MediaSpeedSelectView speedSelectView;

    @NonNull
    public final StatusBarPlaceHolder statusBarPlaceholder;

    @NonNull
    public final TextView timeView;

    @NonNull
    public final TextView totalTimeView;

    @NonNull
    public final FrameLayout videoContainer;

    @NonNull
    public final NVEditorPreviewVideoVIew videoViewPlayer;

    @NonNull
    public static FragmentMediaSpeedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMediaSpeedBinding bind(@NonNull View view) {
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
                    i10 = R.id.progress_ll;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
                    if (linearLayout2 != null) {
                        i10 = R.id.seekbar;
                        SeekBar seekBar = (SeekBar) ViewBindings.a(view, i10);
                        if (seekBar != null) {
                            i10 = R.id.speed_select_view;
                            MediaSpeedSelectView mediaSpeedSelectView = (MediaSpeedSelectView) ViewBindings.a(view, i10);
                            if (mediaSpeedSelectView != null) {
                                i10 = R.id.status_bar_placeholder;
                                StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, i10);
                                if (statusBarPlaceHolder != null) {
                                    i10 = R.id.time_view;
                                    TextView textView = (TextView) ViewBindings.a(view, i10);
                                    if (textView != null) {
                                        i10 = R.id.total_time_view;
                                        TextView textView2 = (TextView) ViewBindings.a(view, i10);
                                        if (textView2 != null) {
                                            i10 = R.id.video_container;
                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                                            if (frameLayout != null) {
                                                i10 = R.id.video_view_player;
                                                NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew = (NVEditorPreviewVideoVIew) ViewBindings.a(view, i10);
                                                if (nVEditorPreviewVideoVIew != null) {
                                                    return new FragmentMediaSpeedBinding((FlexLayout) view, linearLayout, mediaOptionPanel, viewA, imageView, linearLayout2, seekBar, mediaSpeedSelectView, statusBarPlaceHolder, textView, textView2, frameLayout, nVEditorPreviewVideoVIew);
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
    public static FragmentMediaSpeedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_media_speed, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMediaSpeedBinding(@NonNull FlexLayout flexLayout, @NonNull LinearLayout linearLayout, @NonNull MediaOptionPanel mediaOptionPanel, @NonNull View view, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull SeekBar seekBar, @NonNull MediaSpeedSelectView mediaSpeedSelectView, @NonNull StatusBarPlaceHolder statusBarPlaceHolder, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout, @NonNull NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew) {
        this.rootView = flexLayout;
        this.contentPanel = linearLayout;
        this.optionsPanel = mediaOptionPanel;
        this.pauseShadow = view;
        this.playerButton = imageView;
        this.progressLl = linearLayout2;
        this.seekbar = seekBar;
        this.speedSelectView = mediaSpeedSelectView;
        this.statusBarPlaceholder = statusBarPlaceHolder;
        this.timeView = textView;
        this.totalTimeView = textView2;
        this.videoContainer = frameLayout;
        this.videoViewPlayer = nVEditorPreviewVideoVIew;
    }
}
