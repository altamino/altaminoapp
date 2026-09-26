package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class PollOptionPlainActionItemBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView image;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView subTitle;

    @NonNull
    public final TextView title;

    @NonNull
    public final Button voteAction;

    @NonNull
    public final FrameLayout voteAction2;

    @NonNull
    public final RelativeLayout voteImage;

    @NonNull
    public static PollOptionPlainActionItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PollOptionPlainActionItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.poll_option_plain_action_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PollOptionPlainActionItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull Button button, @NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = relativeLayout;
        this.image = thumbImageView;
        this.subTitle = textView;
        this.title = textView2;
        this.voteAction = button;
        this.voteAction2 = frameLayout;
        this.voteImage = relativeLayout2;
    }

    @NonNull
    public static PollOptionPlainActionItemBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
        if (thumbImageView != null) {
            i10 = R.id.subTitle;
            TextView textView = (TextView) ViewBindings.a(view, R.id.subTitle);
            if (textView != null) {
                i10 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                if (textView2 != null) {
                    i10 = R.id.vote_action;
                    Button button = (Button) ViewBindings.a(view, R.id.vote_action);
                    if (button != null) {
                        i10 = R.id.vote_action2;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.vote_action2);
                        if (frameLayout != null) {
                            i10 = R.id.vote_image;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.vote_image);
                            if (relativeLayout != null) {
                                return new PollOptionPlainActionItemBinding((RelativeLayout) view, thumbImageView, textView, textView2, button, frameLayout, relativeLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
