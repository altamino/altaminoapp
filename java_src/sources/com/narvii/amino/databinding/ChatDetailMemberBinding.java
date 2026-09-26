package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatDetailMemberBinding implements ViewBinding {

    @NonNull
    public final RelativeLayout chatMember;

    @NonNull
    public final TextView chatMemberInvited;

    @NonNull
    public final FontAwesomeView chatMemberRemove;

    @NonNull
    public final FrameLayout more;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static ChatDetailMemberBinding bind(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i10 = R.id.chat_member_invited;
        TextView textView = (TextView) ViewBindings.a(view, R.id.chat_member_invited);
        if (textView != null) {
            i10 = R.id.chat_member_remove;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.chat_member_remove);
            if (fontAwesomeView != null) {
                i10 = R.id.more;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.more);
                if (frameLayout != null) {
                    i10 = R.id.nickname;
                    NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                    if (nicknameView != null) {
                        return new ChatDetailMemberBinding(relativeLayout, relativeLayout, textView, fontAwesomeView, frameLayout, nicknameView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ChatDetailMemberBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailMemberBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_member, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailMemberBinding(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull FontAwesomeView fontAwesomeView, @NonNull FrameLayout frameLayout, @NonNull NicknameView nicknameView) {
        this.rootView = relativeLayout;
        this.chatMember = relativeLayout2;
        this.chatMemberInvited = textView;
        this.chatMemberRemove = fontAwesomeView;
        this.more = frameLayout;
        this.nickname = nicknameView;
    }
}
