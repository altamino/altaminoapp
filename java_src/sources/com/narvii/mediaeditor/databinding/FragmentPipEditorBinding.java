package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.mediaeditor.R;
import com.narvii.video.attachment.DrawRectView;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.StatusBarPlaceHolder;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentPipEditorBinding implements ViewBinding {

    @NonNull
    public final FrameLayout attachmentTab;

    @NonNull
    public final RelativeLayout contentPanel;

    @NonNull
    public final TextView debugText;

    @NonNull
    public final View divider;

    @NonNull
    public final DrawRectView drawRect;

    @NonNull
    public final ImageView optionAddPipVideo;

    @NonNull
    public final ImageView optionCancel;

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
    public final FrameLayout viceTimeLinePanelScroll;

    @NonNull
    public final ScrollView viceTimelineScrollView;

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

    private FragmentPipEditorBinding(@NonNull FlexLayout flexLayout, @NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull View view, @NonNull DrawRectView drawRectView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView4, @NonNull StatusBarPlaceHolder statusBarPlaceHolder, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout2, @NonNull ScrollView scrollView, @NonNull FrameLayout frameLayout3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull MediaTimeLineComponent mediaTimeLineComponent, @NonNull NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew) {
        this.rootView = flexLayout;
        this.attachmentTab = frameLayout;
        this.contentPanel = relativeLayout;
        this.debugText = textView;
        this.divider = view;
        this.drawRect = drawRectView;
        this.optionAddPipVideo = imageView;
        this.optionCancel = imageView2;
        this.optionDone = imageView3;
        this.optionsPanel = relativeLayout2;
        this.playerButton = imageView4;
        this.statusBarPlaceholder = statusBarPlaceHolder;
        this.viceTimeLinePanel = linearLayout;
        this.viceTimeLinePanelScroll = frameLayout2;
        this.viceTimelineScrollView = scrollView;
        this.videoContainer = frameLayout3;
        this.videoDuration = textView2;
        this.videoPlaybackTime = textView3;
        this.videoTimeLine = horizontalRecyclerView;
        this.videoTimeLineComponent = mediaTimeLineComponent;
        this.videoViewPlayer = nVEditorPreviewVideoVIew;
    }

    @NonNull
    public static FragmentPipEditorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentPipEditorBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.attachment_tab;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
        if (frameLayout != null) {
            i10 = R.id.contentPanel;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, i10);
            if (relativeLayout != null) {
                i10 = R.id.debug_text;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null && (viewA = ViewBindings.a(view, (i10 = R.id.divider))) != null) {
                    i10 = R.id.draw_rect;
                    DrawRectView drawRectView = (DrawRectView) ViewBindings.a(view, i10);
                    if (drawRectView != null) {
                        i10 = R.id.option_add_pip_video;
                        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                        if (imageView != null) {
                            i10 = R.id.option_cancel;
                            ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                            if (imageView2 != null) {
                                i10 = R.id.option_done;
                                ImageView imageView3 = (ImageView) ViewBindings.a(view, i10);
                                if (imageView3 != null) {
                                    i10 = R.id.options_panel;
                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.a(view, i10);
                                    if (relativeLayout2 != null) {
                                        i10 = R.id.player_button;
                                        ImageView imageView4 = (ImageView) ViewBindings.a(view, i10);
                                        if (imageView4 != null) {
                                            i10 = R.id.status_bar_placeholder;
                                            StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, i10);
                                            if (statusBarPlaceHolder != null) {
                                                i10 = R.id.vice_time_line_panel;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                                                if (linearLayout != null) {
                                                    i10 = R.id.vice_time_line_panel_scroll;
                                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, i10);
                                                    if (frameLayout2 != null) {
                                                        i10 = R.id.vice_timeline_scroll_view;
                                                        ScrollView scrollView = (ScrollView) ViewBindings.a(view, i10);
                                                        if (scrollView != null) {
                                                            i10 = R.id.video_container;
                                                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, i10);
                                                            if (frameLayout3 != null) {
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
                                                                                    return new FragmentPipEditorBinding((FlexLayout) view, frameLayout, relativeLayout, textView, viewA, drawRectView, imageView, imageView2, imageView3, relativeLayout2, imageView4, statusBarPlaceHolder, linearLayout, frameLayout2, scrollView, frameLayout3, textView2, textView3, horizontalRecyclerView, mediaTimeLineComponent, nVEditorPreviewVideoVIew);
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
    public static FragmentPipEditorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_pip_editor, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
