package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class ViewRankingTitleExactBinding implements ViewBinding {

    @NonNull
    public final ImageView badge;

    @NonNull
    public final ImageView badgeAnimate;

    @NonNull
    public final RelativeLayout progress;

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
    public static ViewRankingTitleExactBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.view_ranking_title_exact, viewGroup);
        return bind(viewGroup);
    }

    private ViewRankingTitleExactBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = view;
        this.badge = imageView;
        this.badgeAnimate = imageView2;
        this.progress = relativeLayout;
        this.progressBar = progressBar;
        this.role = textView;
        this.text = textView2;
    }

    @NonNull
    public static ViewRankingTitleExactBinding bind(@NonNull View view) {
        int i10 = R.id.badge;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.badge);
        if (imageView != null) {
            i10 = R.id.badge_animate;
            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.badge_animate);
            if (imageView2 != null) {
                i10 = R.id.progress;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.progress);
                if (relativeLayout != null) {
                    i10 = R.id.progress_bar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.progress_bar);
                    if (progressBar != null) {
                        i10 = R.id.role;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.role);
                        if (textView != null) {
                            i10 = R.id.text;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                            if (textView2 != null) {
                                return new ViewRankingTitleExactBinding(view, imageView, imageView2, relativeLayout, progressBar, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
