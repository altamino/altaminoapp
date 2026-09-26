package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.livelayer.detailview.LiveLayerDetailListItemView;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.FullHitFrameLayout;
import com.narvii.widget.SecretImageView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes9.dex */
public final class LiveLayerDetailQuizItemBinding implements ViewBinding {

    @NonNull
    public final SecretImageView image;

    @NonNull
    private final LiveLayerDetailListItemView rootView;

    @NonNull
    public final LinearLayout startQuiz;

    @NonNull
    public final FontAwesomeView startQuizIcon;

    @NonNull
    public final FullHitFrameLayout startQuizLayout;

    @NonNull
    public final SpinningView startQuizLoading;

    @NonNull
    public final TextView startQuizText;

    @NonNull
    public final TextView title;

    @NonNull
    public static LiveLayerDetailQuizItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LiveLayerDetailListItemView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerDetailQuizItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_detail_quiz_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerDetailQuizItemBinding(@NonNull LiveLayerDetailListItemView liveLayerDetailListItemView, @NonNull SecretImageView secretImageView, @NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull FullHitFrameLayout fullHitFrameLayout, @NonNull SpinningView spinningView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = liveLayerDetailListItemView;
        this.image = secretImageView;
        this.startQuiz = linearLayout;
        this.startQuizIcon = fontAwesomeView;
        this.startQuizLayout = fullHitFrameLayout;
        this.startQuizLoading = spinningView;
        this.startQuizText = textView;
        this.title = textView2;
    }

    @NonNull
    public static LiveLayerDetailQuizItemBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
        if (secretImageView != null) {
            i10 = R.id.start_quiz;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.start_quiz);
            if (linearLayout != null) {
                i10 = R.id.start_quiz_icon;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.start_quiz_icon);
                if (fontAwesomeView != null) {
                    i10 = R.id.start_quiz_layout;
                    FullHitFrameLayout fullHitFrameLayout = (FullHitFrameLayout) ViewBindings.a(view, R.id.start_quiz_layout);
                    if (fullHitFrameLayout != null) {
                        i10 = R.id.start_quiz_loading;
                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.start_quiz_loading);
                        if (spinningView != null) {
                            i10 = R.id.start_quiz_text;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.start_quiz_text);
                            if (textView != null) {
                                i10 = R.id.title;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView2 != null) {
                                    return new LiveLayerDetailQuizItemBinding((LiveLayerDetailListItemView) view, secretImageView, linearLayout, fontAwesomeView, fullHitFrameLayout, spinningView, textView, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
