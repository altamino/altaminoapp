package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.EasyButton;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.FullHitFrameLayout;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class ActivityExoFeedListControllerBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView retry;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final EasyButton shareBtn;

    @NonNull
    public final TextView text;

    @NonNull
    public final LinearLayout videoError;

    @NonNull
    public final SpinningView videoLoading;

    @NonNull
    public final NVImageView videoPlayButton;

    @NonNull
    public final EasyButton volumeBtn;

    @NonNull
    public final FullHitFrameLayout volumeContainer;

    @NonNull
    public static ActivityExoFeedListControllerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ActivityExoFeedListControllerBinding bind(@NonNull View view) {
        int i10 = R.id.retry;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
        if (fontAwesomeView != null) {
            i10 = R.id.share_btn;
            EasyButton easyButton = (EasyButton) ViewBindings.a(view, i10);
            if (easyButton != null) {
                i10 = R.id.text;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    i10 = R.id.video_error;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                    if (linearLayout != null) {
                        i10 = R.id.video_loading;
                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
                        if (spinningView != null) {
                            i10 = R.id.video_play_button;
                            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
                            if (nVImageView != null) {
                                i10 = R.id.volume_btn;
                                EasyButton easyButton2 = (EasyButton) ViewBindings.a(view, i10);
                                if (easyButton2 != null) {
                                    i10 = R.id.volume_container;
                                    FullHitFrameLayout fullHitFrameLayout = (FullHitFrameLayout) ViewBindings.a(view, i10);
                                    if (fullHitFrameLayout != null) {
                                        return new ActivityExoFeedListControllerBinding((FrameLayout) view, fontAwesomeView, easyButton, textView, linearLayout, spinningView, nVImageView, easyButton2, fullHitFrameLayout);
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
    public static ActivityExoFeedListControllerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_exo_feed_list_controller, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ActivityExoFeedListControllerBinding(@NonNull FrameLayout frameLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull EasyButton easyButton, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull SpinningView spinningView, @NonNull NVImageView nVImageView, @NonNull EasyButton easyButton2, @NonNull FullHitFrameLayout fullHitFrameLayout) {
        this.rootView = frameLayout;
        this.retry = fontAwesomeView;
        this.shareBtn = easyButton;
        this.text = textView;
        this.videoError = linearLayout;
        this.videoLoading = spinningView;
        this.videoPlayButton = nVImageView;
        this.volumeBtn = easyButton2;
        this.volumeContainer = fullHitFrameLayout;
    }
}
