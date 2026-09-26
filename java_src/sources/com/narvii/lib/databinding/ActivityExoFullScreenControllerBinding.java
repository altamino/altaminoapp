package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.EasyButton;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes8.dex */
public final class ActivityExoFullScreenControllerBinding implements ViewBinding {

    @NonNull
    public final ImageView actionbarBack;

    @NonNull
    public final FontAwesomeView actionbarOps;

    @NonNull
    public final RelativeLayout controllers;

    @NonNull
    public final ImageView mini;

    @NonNull
    public final FrameLayout optionMenuContainer;

    @NonNull
    public final FrameLayout parent;

    @NonNull
    public final EasyButton play;

    @NonNull
    public final FontAwesomeView retry;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final SeekBar seekBar;

    @NonNull
    public final TextView text;

    @NonNull
    public final TextView timeCurrent;

    @NonNull
    public final TextView timeTotal;

    @NonNull
    public final LinearLayout videoError;

    @NonNull
    public final FontAwesomeView videoFullscreen;

    @NonNull
    public final SpinningView videoLoading;

    private ActivityExoFullScreenControllerBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FontAwesomeView fontAwesomeView, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull EasyButton easyButton, @NonNull FontAwesomeView fontAwesomeView2, @NonNull SeekBar seekBar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView3, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.actionbarBack = imageView;
        this.actionbarOps = fontAwesomeView;
        this.controllers = relativeLayout;
        this.mini = imageView2;
        this.optionMenuContainer = frameLayout2;
        this.parent = frameLayout3;
        this.play = easyButton;
        this.retry = fontAwesomeView2;
        this.seekBar = seekBar;
        this.text = textView;
        this.timeCurrent = textView2;
        this.timeTotal = textView3;
        this.videoError = linearLayout;
        this.videoFullscreen = fontAwesomeView3;
        this.videoLoading = spinningView;
    }

    @NonNull
    public static ActivityExoFullScreenControllerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ActivityExoFullScreenControllerBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_back;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.actionbar_ops;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
            if (fontAwesomeView != null) {
                i10 = R.id.controllers;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, i10);
                if (relativeLayout != null) {
                    i10 = R.id.mini;
                    ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                    if (imageView2 != null) {
                        i10 = R.id.option_menu_container;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                        if (frameLayout != null) {
                            FrameLayout frameLayout2 = (FrameLayout) view;
                            i10 = R.id.play;
                            EasyButton easyButton = (EasyButton) ViewBindings.a(view, i10);
                            if (easyButton != null) {
                                i10 = R.id.retry;
                                FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, i10);
                                if (fontAwesomeView2 != null) {
                                    i10 = R.id.seek_bar;
                                    SeekBar seekBar = (SeekBar) ViewBindings.a(view, i10);
                                    if (seekBar != null) {
                                        i10 = R.id.text;
                                        TextView textView = (TextView) ViewBindings.a(view, i10);
                                        if (textView != null) {
                                            i10 = R.id.time_current;
                                            TextView textView2 = (TextView) ViewBindings.a(view, i10);
                                            if (textView2 != null) {
                                                i10 = R.id.time_total;
                                                TextView textView3 = (TextView) ViewBindings.a(view, i10);
                                                if (textView3 != null) {
                                                    i10 = R.id.video_error;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                                                    if (linearLayout != null) {
                                                        i10 = R.id.video_fullscreen;
                                                        FontAwesomeView fontAwesomeView3 = (FontAwesomeView) ViewBindings.a(view, i10);
                                                        if (fontAwesomeView3 != null) {
                                                            i10 = R.id.video_loading;
                                                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
                                                            if (spinningView != null) {
                                                                return new ActivityExoFullScreenControllerBinding(frameLayout2, imageView, fontAwesomeView, relativeLayout, imageView2, frameLayout, frameLayout2, easyButton, fontAwesomeView2, seekBar, textView, textView2, textView3, linearLayout, fontAwesomeView3, spinningView);
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
    public static ActivityExoFullScreenControllerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_exo_full_screen_controller, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
