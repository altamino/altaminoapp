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
import com.narvii.widget.CardView;
import com.narvii.widget.SecretImageView;
import com.narvii.widget.UserClickView;

/* JADX INFO: loaded from: classes11.dex */
public final class PollOptionCollectionActionItemBinding implements ViewBinding {

    @NonNull
    public final SecretImageView image;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final UserClickView userClick;

    @NonNull
    public final Button voteAction;

    @NonNull
    public final FrameLayout voteAction2;

    @NonNull
    public final CardView voteItem;

    @NonNull
    public static PollOptionCollectionActionItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PollOptionCollectionActionItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.poll_option_collection_action_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PollOptionCollectionActionItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull SecretImageView secretImageView, @NonNull TextView textView, @NonNull UserClickView userClickView, @NonNull Button button, @NonNull FrameLayout frameLayout, @NonNull CardView cardView) {
        this.rootView = relativeLayout;
        this.image = secretImageView;
        this.title = textView;
        this.userClick = userClickView;
        this.voteAction = button;
        this.voteAction2 = frameLayout;
        this.voteItem = cardView;
    }

    @NonNull
    public static PollOptionCollectionActionItemBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
        if (secretImageView != null) {
            i10 = R.id.title;
            TextView textView = (TextView) ViewBindings.a(view, R.id.title);
            if (textView != null) {
                i10 = R.id.user_click;
                UserClickView userClickView = (UserClickView) ViewBindings.a(view, R.id.user_click);
                if (userClickView != null) {
                    i10 = R.id.vote_action;
                    Button button = (Button) ViewBindings.a(view, R.id.vote_action);
                    if (button != null) {
                        i10 = R.id.vote_action2;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.vote_action2);
                        if (frameLayout != null) {
                            i10 = R.id.vote_item;
                            CardView cardView = (CardView) ViewBindings.a(view, R.id.vote_item);
                            if (cardView != null) {
                                return new PollOptionCollectionActionItemBinding((RelativeLayout) view, secretImageView, textView, userClickView, button, frameLayout, cardView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
