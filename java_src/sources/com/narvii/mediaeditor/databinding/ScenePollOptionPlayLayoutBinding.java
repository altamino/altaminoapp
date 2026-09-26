package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.poll.VoteBar;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.LongPushButton;
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class ScenePollOptionPlayLayoutBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView check;

    @NonNull
    public final TextView holdLonger;

    @NonNull
    public final ThumbImageView optionIv;

    @NonNull
    public final SpinningView progress;

    @NonNull
    public final LongPushButton pushBtn;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final AutoSizingTextView title1;

    @NonNull
    public final AutoSizingTextView title2;

    @NonNull
    public final VoteBar voteBar;

    @NonNull
    public final TextView voteBarValue;

    @NonNull
    public static ScenePollOptionPlayLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ScenePollOptionPlayLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.check;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
        if (fontAwesomeView != null) {
            i10 = R.id.hold_longer;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.option_iv;
                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
                if (thumbImageView != null) {
                    i10 = R.id.progress;
                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
                    if (spinningView != null) {
                        i10 = R.id.push_btn;
                        LongPushButton longPushButton = (LongPushButton) ViewBindings.a(view, i10);
                        if (longPushButton != null) {
                            i10 = R.id.title1;
                            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, i10);
                            if (autoSizingTextView != null) {
                                i10 = R.id.title2;
                                AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, i10);
                                if (autoSizingTextView2 != null) {
                                    i10 = R.id.vote_bar;
                                    VoteBar voteBar = (VoteBar) ViewBindings.a(view, i10);
                                    if (voteBar != null) {
                                        i10 = R.id.vote_bar_value;
                                        TextView textView2 = (TextView) ViewBindings.a(view, i10);
                                        if (textView2 != null) {
                                            return new ScenePollOptionPlayLayoutBinding((LinearLayout) view, fontAwesomeView, textView, thumbImageView, spinningView, longPushButton, autoSizingTextView, autoSizingTextView2, voteBar, textView2);
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
    public static ScenePollOptionPlayLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.scene_poll_option_play_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ScenePollOptionPlayLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull SpinningView spinningView, @NonNull LongPushButton longPushButton, @NonNull AutoSizingTextView autoSizingTextView, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull VoteBar voteBar, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.check = fontAwesomeView;
        this.holdLonger = textView;
        this.optionIv = thumbImageView;
        this.progress = spinningView;
        this.pushBtn = longPushButton;
        this.title1 = autoSizingTextView;
        this.title2 = autoSizingTextView2;
        this.voteBar = voteBar;
        this.voteBarValue = textView2;
    }
}
