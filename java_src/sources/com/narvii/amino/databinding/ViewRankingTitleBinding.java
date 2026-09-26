package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.ScaledImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class ViewRankingTitleBinding implements ViewBinding {

    @NonNull
    public final ScaledImageView badge;

    @NonNull
    public final ScaledImageView badgeAnimate;

    @NonNull
    public final FlexLayout progress;

    @NonNull
    public final ProgressBar progressBar;

    @NonNull
    public final TextView role;

    @NonNull
    private final View rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ViewRankingTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.view_ranking_title, viewGroup);
        return bind(viewGroup);
    }

    private ViewRankingTitleBinding(@NonNull View view, @NonNull ScaledImageView scaledImageView, @NonNull ScaledImageView scaledImageView2, @NonNull FlexLayout flexLayout, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = view;
        this.badge = scaledImageView;
        this.badgeAnimate = scaledImageView2;
        this.progress = flexLayout;
        this.progressBar = progressBar;
        this.role = textView;
        this.text = textView2;
    }

    @NonNull
    public static ViewRankingTitleBinding bind(@NonNull View view) {
        int i10 = R.id.badge;
        ScaledImageView scaledImageView = (ScaledImageView) ViewBindings.a(view, R.id.badge);
        if (scaledImageView != null) {
            i10 = R.id.badge_animate;
            ScaledImageView scaledImageView2 = (ScaledImageView) ViewBindings.a(view, R.id.badge_animate);
            if (scaledImageView2 != null) {
                i10 = R.id.progress;
                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.progress);
                if (flexLayout != null) {
                    i10 = R.id.progress_bar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.progress_bar);
                    if (progressBar != null) {
                        i10 = R.id.role;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.role);
                        if (textView != null) {
                            i10 = R.id.text;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                            if (textView2 != null) {
                                return new ViewRankingTitleBinding(view, scaledImageView, scaledImageView2, flexLayout, progressBar, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
