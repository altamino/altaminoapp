package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.MultiAvatarView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class ChatInvitationBinding implements ViewBinding {

    @NonNull
    public final Button action;

    @NonNull
    public final MultiAvatarView chatAvatars;

    @NonNull
    public final ThumbImageView chatCover;

    @NonNull
    public final LinearLayout invitationContainer;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView subTitle;

    @NonNull
    public final TextView title;

    @NonNull
    public static ChatInvitationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatInvitationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_invitation, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatInvitationBinding(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull MultiAvatarView multiAvatarView, @NonNull ThumbImageView thumbImageView, @NonNull LinearLayout linearLayout2, @NonNull SpinningView spinningView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.action = button;
        this.chatAvatars = multiAvatarView;
        this.chatCover = thumbImageView;
        this.invitationContainer = linearLayout2;
        this.progress = spinningView;
        this.subTitle = textView;
        this.title = textView2;
    }

    @NonNull
    public static ChatInvitationBinding bind(@NonNull View view) {
        int i10 = R.id.action;
        Button button = (Button) ViewBindings.a(view, R.id.action);
        if (button != null) {
            i10 = R.id.chat_avatars;
            MultiAvatarView multiAvatarView = (MultiAvatarView) ViewBindings.a(view, R.id.chat_avatars);
            if (multiAvatarView != null) {
                i10 = R.id.chat_cover;
                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.chat_cover);
                if (thumbImageView != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i10 = R.id.progress;
                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
                    if (spinningView != null) {
                        i10 = R.id.subTitle;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.subTitle);
                        if (textView != null) {
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView2 != null) {
                                return new ChatInvitationBinding(linearLayout, button, multiAvatarView, thumbImageView, linearLayout, spinningView, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
