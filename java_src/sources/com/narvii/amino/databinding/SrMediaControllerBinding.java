package com.narvii.amino.databinding;

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
import com.narvii.amino.master.R;
import com.narvii.widget.MarqueeTextView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.StatusBarPlaceHolder;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class SrMediaControllerBinding implements ViewBinding {

    @NonNull
    public final View bottomGradient;

    @NonNull
    public final LinearLayout controllerBottomContainer;

    @NonNull
    public final TintButton fullscreen;

    @NonNull
    public final LinearLayout hostBottomLayout;

    @NonNull
    public final ImageView next;

    @NonNull
    public final ImageView pause;

    @NonNull
    public final LinearLayout playButtonsLayout;

    @NonNull
    public final TintButton playlist;

    @NonNull
    public final ImageView prev;

    @NonNull
    public final SeekBar progressBar;

    @NonNull
    public final LinearLayout progressLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final StatusBarPlaceHolder statusBarPlaceholder;

    @NonNull
    public final TextView time;

    @NonNull
    public final TextView timeCurrent;

    @NonNull
    public final View topGradient;

    @NonNull
    public final LinearLayout vcTopButtons;

    @NonNull
    public final FrameLayout videoControllerRoot;

    @NonNull
    public final MarqueeTextView videoName;

    @NonNull
    public final NVImageView videoPlayingIcon;

    @NonNull
    public final TextView videoTimeProgress;

    @NonNull
    public final LinearLayout videoTimeProgressContainer;

    @NonNull
    public final ImageView volume;

    @NonNull
    public final FrameLayout volumeSeekBarPlaceholder;

    private SrMediaControllerBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout3, @NonNull TintButton tintButton2, @NonNull ImageView imageView3, @NonNull SeekBar seekBar, @NonNull LinearLayout linearLayout4, @NonNull StatusBarPlaceHolder statusBarPlaceHolder, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view2, @NonNull LinearLayout linearLayout5, @NonNull FrameLayout frameLayout2, @NonNull MarqueeTextView marqueeTextView, @NonNull NVImageView nVImageView, @NonNull TextView textView3, @NonNull LinearLayout linearLayout6, @NonNull ImageView imageView4, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.bottomGradient = view;
        this.controllerBottomContainer = linearLayout;
        this.fullscreen = tintButton;
        this.hostBottomLayout = linearLayout2;
        this.next = imageView;
        this.pause = imageView2;
        this.playButtonsLayout = linearLayout3;
        this.playlist = tintButton2;
        this.prev = imageView3;
        this.progressBar = seekBar;
        this.progressLayout = linearLayout4;
        this.statusBarPlaceholder = statusBarPlaceHolder;
        this.time = textView;
        this.timeCurrent = textView2;
        this.topGradient = view2;
        this.vcTopButtons = linearLayout5;
        this.videoControllerRoot = frameLayout2;
        this.videoName = marqueeTextView;
        this.videoPlayingIcon = nVImageView;
        this.videoTimeProgress = textView3;
        this.videoTimeProgressContainer = linearLayout6;
        this.volume = imageView4;
        this.volumeSeekBarPlaceholder = frameLayout3;
    }

    @NonNull
    public static SrMediaControllerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SrMediaControllerBinding bind(@NonNull View view) {
        int i10 = R.id.bottom_gradient;
        View viewA = ViewBindings.a(view, R.id.bottom_gradient);
        if (viewA != null) {
            i10 = R.id.controller_bottom_container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.controller_bottom_container);
            if (linearLayout != null) {
                i10 = R.id.fullscreen;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.fullscreen);
                if (tintButton != null) {
                    i10 = R.id.host_bottom_layout;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.host_bottom_layout);
                    if (linearLayout2 != null) {
                        i10 = R.id.next;
                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.next);
                        if (imageView != null) {
                            i10 = R.id.pause;
                            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.pause);
                            if (imageView2 != null) {
                                i10 = R.id.play_buttons_layout;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.play_buttons_layout);
                                if (linearLayout3 != null) {
                                    i10 = R.id.playlist;
                                    TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.playlist);
                                    if (tintButton2 != null) {
                                        i10 = R.id.prev;
                                        ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.prev);
                                        if (imageView3 != null) {
                                            i10 = R.id.progress_bar;
                                            SeekBar seekBar = (SeekBar) ViewBindings.a(view, R.id.progress_bar);
                                            if (seekBar != null) {
                                                i10 = R.id.progress_layout;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.progress_layout);
                                                if (linearLayout4 != null) {
                                                    i10 = R.id.status_bar_placeholder;
                                                    StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, R.id.status_bar_placeholder);
                                                    if (statusBarPlaceHolder != null) {
                                                        i10 = R.id.time;
                                                        TextView textView = (TextView) ViewBindings.a(view, R.id.time);
                                                        if (textView != null) {
                                                            i10 = R.id.time_current;
                                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.time_current);
                                                            if (textView2 != null) {
                                                                i10 = R.id.top_gradient;
                                                                View viewA2 = ViewBindings.a(view, R.id.top_gradient);
                                                                if (viewA2 != null) {
                                                                    i10 = R.id.vc_top_buttons;
                                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, R.id.vc_top_buttons);
                                                                    if (linearLayout5 != null) {
                                                                        FrameLayout frameLayout = (FrameLayout) view;
                                                                        i10 = R.id.video_name;
                                                                        MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.a(view, R.id.video_name);
                                                                        if (marqueeTextView != null) {
                                                                            i10 = R.id.video_playing_icon;
                                                                            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.video_playing_icon);
                                                                            if (nVImageView != null) {
                                                                                i10 = R.id.video_time_progress;
                                                                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.video_time_progress);
                                                                                if (textView3 != null) {
                                                                                    i10 = R.id.video_time_progress_container;
                                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, R.id.video_time_progress_container);
                                                                                    if (linearLayout6 != null) {
                                                                                        i10 = R.id.volume;
                                                                                        ImageView imageView4 = (ImageView) ViewBindings.a(view, R.id.volume);
                                                                                        if (imageView4 != null) {
                                                                                            i10 = R.id.volume_seek_bar_placeholder;
                                                                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.volume_seek_bar_placeholder);
                                                                                            if (frameLayout2 != null) {
                                                                                                return new SrMediaControllerBinding(frameLayout, viewA, linearLayout, tintButton, linearLayout2, imageView, imageView2, linearLayout3, tintButton2, imageView3, seekBar, linearLayout4, statusBarPlaceHolder, textView, textView2, viewA2, linearLayout5, frameLayout, marqueeTextView, nVImageView, textView3, linearLayout6, imageView4, frameLayout2);
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
    public static SrMediaControllerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sr_media_controller, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
