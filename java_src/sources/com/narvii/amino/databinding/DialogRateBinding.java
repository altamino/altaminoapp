package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class DialogRateBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView rateBackground;

    @NonNull
    public final ImageView rateClose;

    @NonNull
    public final ThumbImageView rateCommunityIcon;

    @NonNull
    public final AutoSizingTextView rateCommunityName;

    @NonNull
    public final AutoSizingTextView rateCommunityTitle;

    @NonNull
    public final ImageView rateFiveStar;

    @NonNull
    public final ImageView rateFourStar;

    @NonNull
    public final LinearLayout rateNever;

    @NonNull
    public final LinearLayout rateNow;

    @NonNull
    public final ImageView rateOneStar;

    @NonNull
    public final ImageView rateTwoStar;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogRateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogRateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_rate, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogRateBinding(@NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull ImageView imageView, @NonNull ThumbImageView thumbImageView2, @NonNull AutoSizingTextView autoSizingTextView, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView4, @NonNull ImageView imageView5) {
        this.rootView = linearLayout;
        this.rateBackground = thumbImageView;
        this.rateClose = imageView;
        this.rateCommunityIcon = thumbImageView2;
        this.rateCommunityName = autoSizingTextView;
        this.rateCommunityTitle = autoSizingTextView2;
        this.rateFiveStar = imageView2;
        this.rateFourStar = imageView3;
        this.rateNever = linearLayout2;
        this.rateNow = linearLayout3;
        this.rateOneStar = imageView4;
        this.rateTwoStar = imageView5;
    }

    @NonNull
    public static DialogRateBinding bind(@NonNull View view) {
        int i10 = R.id.rate_background;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.rate_background);
        if (thumbImageView != null) {
            i10 = R.id.rate_close;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.rate_close);
            if (imageView != null) {
                i10 = R.id.rate_community_icon;
                ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.rate_community_icon);
                if (thumbImageView2 != null) {
                    i10 = R.id.rate_community_name;
                    AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.rate_community_name);
                    if (autoSizingTextView != null) {
                        i10 = R.id.rate_community_title;
                        AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.rate_community_title);
                        if (autoSizingTextView2 != null) {
                            i10 = R.id.rate_five_star;
                            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.rate_five_star);
                            if (imageView2 != null) {
                                i10 = R.id.rate_four_star;
                                ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.rate_four_star);
                                if (imageView3 != null) {
                                    i10 = R.id.rate_never;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.rate_never);
                                    if (linearLayout != null) {
                                        i10 = R.id.rate_now;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.rate_now);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.rate_one_star;
                                            ImageView imageView4 = (ImageView) ViewBindings.a(view, R.id.rate_one_star);
                                            if (imageView4 != null) {
                                                i10 = R.id.rate_two_star;
                                                ImageView imageView5 = (ImageView) ViewBindings.a(view, R.id.rate_two_star);
                                                if (imageView5 != null) {
                                                    return new DialogRateBinding((LinearLayout) view, thumbImageView, imageView, thumbImageView2, autoSizingTextView, autoSizingTextView2, imageView2, imageView3, linearLayout, linearLayout2, imageView4, imageView5);
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
}
