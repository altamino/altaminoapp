package com.narvii.amino.databinding;

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
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.item.detail.HeaderLayout;
import com.narvii.widget.CardView;
import com.narvii.widget.KeywordsView;
import com.narvii.widget.SecretImageView;
import com.narvii.widget.SlideshowView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes9.dex */
public final class DetailItemHeaderBinding implements ViewBinding {

    @NonNull
    public final LinearLayout actionbar2;

    @NonNull
    public final RealtimeBlurView blur;

    @NonNull
    public final View gradient;

    @NonNull
    public final SecretImageView image;

    @NonNull
    public final SecretImageView image2;

    @NonNull
    public final CardView itemCard;

    @NonNull
    public final CardView itemCard2;

    @NonNull
    public final View itemGoldLine;

    @NonNull
    public final HeaderLayout itemHeader;

    @NonNull
    public final KeywordsView keywords;

    @NonNull
    public final FrameLayout keywordsLayout;

    @NonNull
    public final TextView label;

    @NonNull
    public final TextView labelActionBar;

    @NonNull
    private final HeaderLayout rootView;

    @NonNull
    public final SlideshowView slideshow;

    @NonNull
    public final View title;

    @NonNull
    public final TextView title2;

    @NonNull
    public final LinearLayout voteBtn;

    @NonNull
    public final TextView voteCount;

    @NonNull
    public final VoteIcon voteIcon;

    @NonNull
    public final FrameLayout voteLayout;

    @NonNull
    public final SpinningView voteProgress;

    private DetailItemHeaderBinding(@NonNull HeaderLayout headerLayout, @NonNull LinearLayout linearLayout, @NonNull RealtimeBlurView realtimeBlurView, @NonNull View view, @NonNull SecretImageView secretImageView, @NonNull SecretImageView secretImageView2, @NonNull CardView cardView, @NonNull CardView cardView2, @NonNull View view2, @NonNull HeaderLayout headerLayout2, @NonNull KeywordsView keywordsView, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SlideshowView slideshowView, @NonNull View view3, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4, @NonNull VoteIcon voteIcon, @NonNull FrameLayout frameLayout2, @NonNull SpinningView spinningView) {
        this.rootView = headerLayout;
        this.actionbar2 = linearLayout;
        this.blur = realtimeBlurView;
        this.gradient = view;
        this.image = secretImageView;
        this.image2 = secretImageView2;
        this.itemCard = cardView;
        this.itemCard2 = cardView2;
        this.itemGoldLine = view2;
        this.itemHeader = headerLayout2;
        this.keywords = keywordsView;
        this.keywordsLayout = frameLayout;
        this.label = textView;
        this.labelActionBar = textView2;
        this.slideshow = slideshowView;
        this.title = view3;
        this.title2 = textView3;
        this.voteBtn = linearLayout2;
        this.voteCount = textView4;
        this.voteIcon = voteIcon;
        this.voteLayout = frameLayout2;
        this.voteProgress = spinningView;
    }

    @NonNull
    public static DetailItemHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HeaderLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailItemHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar2;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.actionbar2);
        if (linearLayout != null) {
            i10 = R.id.blur;
            RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.blur);
            if (realtimeBlurView != null) {
                i10 = R.id.gradient;
                View viewA = ViewBindings.a(view, R.id.gradient);
                if (viewA != null) {
                    i10 = R.id.image;
                    SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
                    if (secretImageView != null) {
                        i10 = R.id.image_2;
                        SecretImageView secretImageView2 = (SecretImageView) ViewBindings.a(view, R.id.image_2);
                        if (secretImageView2 != null) {
                            i10 = R.id.item_card;
                            CardView cardView = (CardView) ViewBindings.a(view, R.id.item_card);
                            if (cardView != null) {
                                i10 = R.id.item_card2;
                                CardView cardView2 = (CardView) ViewBindings.a(view, R.id.item_card2);
                                if (cardView2 != null) {
                                    i10 = R.id.item_gold_line;
                                    View viewA2 = ViewBindings.a(view, R.id.item_gold_line);
                                    if (viewA2 != null) {
                                        HeaderLayout headerLayout = (HeaderLayout) view;
                                        i10 = R.id.keywords;
                                        KeywordsView keywordsView = (KeywordsView) ViewBindings.a(view, R.id.keywords);
                                        if (keywordsView != null) {
                                            i10 = R.id.keywords_layout;
                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.keywords_layout);
                                            if (frameLayout != null) {
                                                i10 = R.id.label;
                                                TextView textView = (TextView) ViewBindings.a(view, R.id.label);
                                                if (textView != null) {
                                                    i10 = R.id.label_action_bar;
                                                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.label_action_bar);
                                                    if (textView2 != null) {
                                                        i10 = R.id.slideshow;
                                                        SlideshowView slideshowView = (SlideshowView) ViewBindings.a(view, R.id.slideshow);
                                                        if (slideshowView != null) {
                                                            i10 = R.id.title;
                                                            View viewA3 = ViewBindings.a(view, R.id.title);
                                                            if (viewA3 != null) {
                                                                i10 = R.id.title_2;
                                                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.title_2);
                                                                if (textView3 != null) {
                                                                    i10 = R.id.vote_btn;
                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.vote_btn);
                                                                    if (linearLayout2 != null) {
                                                                        i10 = R.id.vote_count;
                                                                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.vote_count);
                                                                        if (textView4 != null) {
                                                                            i10 = R.id.vote_icon;
                                                                            VoteIcon voteIcon = (VoteIcon) ViewBindings.a(view, R.id.vote_icon);
                                                                            if (voteIcon != null) {
                                                                                i10 = R.id.vote_layout;
                                                                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.vote_layout);
                                                                                if (frameLayout2 != null) {
                                                                                    i10 = R.id.vote_progress;
                                                                                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.vote_progress);
                                                                                    if (spinningView != null) {
                                                                                        return new DetailItemHeaderBinding(headerLayout, linearLayout, realtimeBlurView, viewA, secretImageView, secretImageView2, cardView, cardView2, viewA2, headerLayout, keywordsView, frameLayout, textView, textView2, slideshowView, viewA3, textView3, linearLayout2, textView4, voteIcon, frameLayout2, spinningView);
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
    public static DetailItemHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_item_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
