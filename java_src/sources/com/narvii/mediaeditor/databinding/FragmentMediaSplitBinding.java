package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.mediaeditor.R;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.StatusBarPlaceHolder;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentMediaSplitBinding implements ViewBinding {

    @NonNull
    public final RelativeLayout contentPanel;

    @NonNull
    public final ImageView doSplit;

    @NonNull
    public final MediaOptionPanel optionsPanel;

    @NonNull
    public final View pauseShadow;

    @NonNull
    public final ImageView playerButton;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final StatusBarPlaceHolder statusBarPlaceholder;

    @NonNull
    public final ImageView undoSplit;

    @NonNull
    public final FrameLayout videoContainer;

    @NonNull
    public final TextView videoPlaybackTime;

    @NonNull
    public final HorizontalRecyclerView videoTimeLine;

    @NonNull
    public final MediaTimeLineComponent videoTimeLineComponent;

    @NonNull
    public final NVEditorPreviewVideoVIew videoViewPlayer;

    @NonNull
    public static FragmentMediaSplitBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMediaSplitBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.contentPanel;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, i10);
        if (relativeLayout != null) {
            i10 = R.id.do_split;
            ImageView imageView = (ImageView) ViewBindings.a(view, i10);
            if (imageView != null) {
                i10 = R.id.options_panel;
                MediaOptionPanel mediaOptionPanel = (MediaOptionPanel) ViewBindings.a(view, i10);
                if (mediaOptionPanel != null && (viewA = ViewBindings.a(view, (i10 = R.id.pause_shadow))) != null) {
                    i10 = R.id.player_button;
                    ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                    if (imageView2 != null) {
                        i10 = R.id.status_bar_placeholder;
                        StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, i10);
                        if (statusBarPlaceHolder != null) {
                            i10 = R.id.undo_split;
                            ImageView imageView3 = (ImageView) ViewBindings.a(view, i10);
                            if (imageView3 != null) {
                                i10 = R.id.video_container;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                                if (frameLayout != null) {
                                    i10 = R.id.video_playback_time;
                                    TextView textView = (TextView) ViewBindings.a(view, i10);
                                    if (textView != null) {
                                        i10 = R.id.video_time_line;
                                        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, i10);
                                        if (horizontalRecyclerView != null) {
                                            i10 = R.id.video_time_line_component;
                                            MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) ViewBindings.a(view, i10);
                                            if (mediaTimeLineComponent != null) {
                                                i10 = R.id.video_view_player;
                                                NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew = (NVEditorPreviewVideoVIew) ViewBindings.a(view, i10);
                                                if (nVEditorPreviewVideoVIew != null) {
                                                    return new FragmentMediaSplitBinding((FlexLayout) view, relativeLayout, imageView, mediaOptionPanel, viewA, imageView2, statusBarPlaceHolder, imageView3, frameLayout, textView, horizontalRecyclerView, mediaTimeLineComponent, nVEditorPreviewVideoVIew);
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
    public static FragmentMediaSplitBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_media_split, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMediaSplitBinding(@NonNull FlexLayout flexLayout, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull MediaOptionPanel mediaOptionPanel, @NonNull View view, @NonNull ImageView imageView2, @NonNull StatusBarPlaceHolder statusBarPlaceHolder, @NonNull ImageView imageView3, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull MediaTimeLineComponent mediaTimeLineComponent, @NonNull NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew) {
        this.rootView = flexLayout;
        this.contentPanel = relativeLayout;
        this.doSplit = imageView;
        this.optionsPanel = mediaOptionPanel;
        this.pauseShadow = view;
        this.playerButton = imageView2;
        this.statusBarPlaceholder = statusBarPlaceHolder;
        this.undoSplit = imageView3;
        this.videoContainer = frameLayout;
        this.videoPlaybackTime = textView;
        this.videoTimeLine = horizontalRecyclerView;
        this.videoTimeLineComponent = mediaTimeLineComponent;
        this.videoViewPlayer = nVEditorPreviewVideoVIew;
    }
}
