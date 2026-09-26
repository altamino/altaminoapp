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
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemThreadMemberBinding implements ViewBinding {

    @NonNull
    public final TextView chatMemberInvited;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final UserAvatarLayoutMiniBinding userAvatarLayout;

    @NonNull
    public static ItemThreadMemberBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemThreadMemberBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_thread_member, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemThreadMemberBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull NicknameView nicknameView, @NonNull UserAvatarLayoutMiniBinding userAvatarLayoutMiniBinding) {
        this.rootView = flexLayout;
        this.chatMemberInvited = textView;
        this.nickname = nicknameView;
        this.userAvatarLayout = userAvatarLayoutMiniBinding;
    }

    @NonNull
    public static ItemThreadMemberBinding bind(@NonNull View view) {
        int i10 = R.id.chat_member_invited;
        TextView textView = (TextView) ViewBindings.a(view, R.id.chat_member_invited);
        if (textView != null) {
            i10 = R.id.nickname;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
            if (nicknameView != null) {
                i10 = R.id.user_avatar_layout;
                View viewA = ViewBindings.a(view, R.id.user_avatar_layout);
                if (viewA != null) {
                    return new ItemThreadMemberBinding((FlexLayout) view, textView, nicknameView, UserAvatarLayoutMiniBinding.bind(viewA));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
