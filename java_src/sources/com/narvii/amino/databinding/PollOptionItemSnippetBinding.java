package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.poll.VoteBar;
import com.narvii.poll.VotersLayout;
import com.narvii.widget.CardView;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.LongPushButton;
import com.narvii.widget.SecretImageView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes11.dex */
public final class PollOptionItemSnippetBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView check;

    @NonNull
    public final TextView holdLonger;

    @NonNull
    public final SecretImageView image;

    @NonNull
    public final SecretImageView imageCard;

    @NonNull
    public final CardView itemCard;

    @NonNull
    public final VotersLayout pollOptionVoters;

    @NonNull
    public final SpinningView progress;

    @NonNull
    public final LongPushButton pushBtn;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public final TextView title1;

    @NonNull
    public final TextView title2;

    @NonNull
    public final TextView titleCard;

    @NonNull
    public final VoteBar voteBar;

    @NonNull
    public final TextView voteBarValue;

    @NonNull
    public static PollOptionItemSnippetBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PollOptionItemSnippetBinding bind(@NonNull View view) {
        int i10 = R.id.check;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.check);
        if (fontAwesomeView != null) {
            i10 = R.id.hold_longer;
            TextView textView = (TextView) ViewBindings.a(view, R.id.hold_longer);
            if (textView != null) {
                i10 = R.id.image;
                SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
                if (secretImageView != null) {
                    i10 = R.id.image_card;
                    SecretImageView secretImageView2 = (SecretImageView) ViewBindings.a(view, R.id.image_card);
                    if (secretImageView2 != null) {
                        i10 = R.id.item_card;
                        CardView cardView = (CardView) ViewBindings.a(view, R.id.item_card);
                        if (cardView != null) {
                            i10 = R.id.poll_option_voters;
                            VotersLayout votersLayout = (VotersLayout) ViewBindings.a(view, R.id.poll_option_voters);
                            if (votersLayout != null) {
                                i10 = R.id.progress;
                                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
                                if (spinningView != null) {
                                    i10 = R.id.push_btn;
                                    LongPushButton longPushButton = (LongPushButton) ViewBindings.a(view, R.id.push_btn);
                                    if (longPushButton != null) {
                                        i10 = R.id.stub1;
                                        View viewA = ViewBindings.a(view, R.id.stub1);
                                        if (viewA != null) {
                                            i10 = R.id.title1;
                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title1);
                                            if (textView2 != null) {
                                                i10 = R.id.title2;
                                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.title2);
                                                if (textView3 != null) {
                                                    i10 = R.id.title_card;
                                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.title_card);
                                                    if (textView4 != null) {
                                                        i10 = R.id.vote_bar;
                                                        VoteBar voteBar = (VoteBar) ViewBindings.a(view, R.id.vote_bar);
                                                        if (voteBar != null) {
                                                            i10 = R.id.vote_bar_value;
                                                            TextView textView5 = (TextView) ViewBindings.a(view, R.id.vote_bar_value);
                                                            if (textView5 != null) {
                                                                return new PollOptionItemSnippetBinding((FlexLayout) view, fontAwesomeView, textView, secretImageView, secretImageView2, cardView, votersLayout, spinningView, longPushButton, viewA, textView2, textView3, textView4, voteBar, textView5);
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
    public static PollOptionItemSnippetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.poll_option_item_snippet, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PollOptionItemSnippetBinding(@NonNull FlexLayout flexLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView, @NonNull SecretImageView secretImageView, @NonNull SecretImageView secretImageView2, @NonNull CardView cardView, @NonNull VotersLayout votersLayout, @NonNull SpinningView spinningView, @NonNull LongPushButton longPushButton, @NonNull View view, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull VoteBar voteBar, @NonNull TextView textView5) {
        this.rootView = flexLayout;
        this.check = fontAwesomeView;
        this.holdLonger = textView;
        this.image = secretImageView;
        this.imageCard = secretImageView2;
        this.itemCard = cardView;
        this.pollOptionVoters = votersLayout;
        this.progress = spinningView;
        this.pushBtn = longPushButton;
        this.stub1 = view;
        this.title1 = textView2;
        this.title2 = textView3;
        this.titleCard = textView4;
        this.voteBar = voteBar;
        this.voteBarValue = textView5;
    }
}
