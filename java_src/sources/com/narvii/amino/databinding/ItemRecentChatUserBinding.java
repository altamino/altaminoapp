package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemRecentChatUserBinding implements ViewBinding {

    @NonNull
    public final View chatThreadUnread;

    @NonNull
    public final UserAvatarLayoutMiniBinding image;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemRecentChatUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemRecentChatUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_recent_chat_user, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemRecentChatUserBinding(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull UserAvatarLayoutMiniBinding userAvatarLayoutMiniBinding, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.chatThreadUnread = view;
        this.image = userAvatarLayoutMiniBinding;
        this.title = textView;
    }

    @NonNull
    public static ItemRecentChatUserBinding bind(@NonNull View view) {
        int i10 = R.id.chat_thread_unread;
        View viewA = ViewBindings.a(view, R.id.chat_thread_unread);
        if (viewA != null) {
            i10 = R.id.image;
            View viewA2 = ViewBindings.a(view, R.id.image);
            if (viewA2 != null) {
                UserAvatarLayoutMiniBinding userAvatarLayoutMiniBindingBind = UserAvatarLayoutMiniBinding.bind(viewA2);
                TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                if (textView != null) {
                    return new ItemRecentChatUserBinding((RelativeLayout) view, viewA, userAvatarLayoutMiniBindingBind, textView);
                }
                i10 = R.id.title;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
