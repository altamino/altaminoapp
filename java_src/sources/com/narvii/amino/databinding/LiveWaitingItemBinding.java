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
import com.narvii.chat.setting.widget.WaitListAcceptView;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes11.dex */
public final class LiveWaitingItemBinding implements ViewBinding {

    @NonNull
    public final WaitListAcceptView acceptView;

    @NonNull
    public final UserAvatarLayoutMiniBinding avatar;

    @NonNull
    public final TextView index;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static LiveWaitingItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveWaitingItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_waiting_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveWaitingItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull WaitListAcceptView waitListAcceptView, @NonNull UserAvatarLayoutMiniBinding userAvatarLayoutMiniBinding, @NonNull TextView textView, @NonNull NicknameView nicknameView) {
        this.rootView = relativeLayout;
        this.acceptView = waitListAcceptView;
        this.avatar = userAvatarLayoutMiniBinding;
        this.index = textView;
        this.nickname = nicknameView;
    }

    @NonNull
    public static LiveWaitingItemBinding bind(@NonNull View view) {
        int i10 = R.id.accept_view;
        WaitListAcceptView waitListAcceptView = (WaitListAcceptView) ViewBindings.a(view, R.id.accept_view);
        if (waitListAcceptView != null) {
            i10 = R.id.avatar;
            View viewA = ViewBindings.a(view, R.id.avatar);
            if (viewA != null) {
                UserAvatarLayoutMiniBinding userAvatarLayoutMiniBindingBind = UserAvatarLayoutMiniBinding.bind(viewA);
                i10 = R.id.index;
                TextView textView = (TextView) ViewBindings.a(view, R.id.index);
                if (textView != null) {
                    i10 = R.id.nickname;
                    NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                    if (nicknameView != null) {
                        return new LiveWaitingItemBinding((RelativeLayout) view, waitListAcceptView, userAvatarLayoutMiniBindingBind, textView, nicknameView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
