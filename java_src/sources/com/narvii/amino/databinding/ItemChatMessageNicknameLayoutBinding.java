package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ReversibleLinearLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemChatMessageNicknameLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView hostLabel;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final ReversibleLinearLayout nicknameContainer;

    @NonNull
    private final ReversibleLinearLayout rootView;

    @NonNull
    public static ItemChatMessageNicknameLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ReversibleLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemChatMessageNicknameLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_chat_message_nickname_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemChatMessageNicknameLayoutBinding(@NonNull ReversibleLinearLayout reversibleLinearLayout, @NonNull TextView textView, @NonNull NicknameView nicknameView, @NonNull ReversibleLinearLayout reversibleLinearLayout2) {
        this.rootView = reversibleLinearLayout;
        this.hostLabel = textView;
        this.nickname = nicknameView;
        this.nicknameContainer = reversibleLinearLayout2;
    }

    @NonNull
    public static ItemChatMessageNicknameLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.host_label;
        TextView textView = (TextView) ViewBindings.a(view, R.id.host_label);
        if (textView != null) {
            i10 = R.id.nickname;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
            if (nicknameView != null) {
                ReversibleLinearLayout reversibleLinearLayout = (ReversibleLinearLayout) view;
                return new ItemChatMessageNicknameLayoutBinding(reversibleLinearLayout, textView, nicknameView, reversibleLinearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
