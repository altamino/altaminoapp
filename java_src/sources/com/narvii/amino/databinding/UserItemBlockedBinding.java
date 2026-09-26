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
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class UserItemBlockedBinding implements ViewBinding {

    @NonNull
    public final TextView address;

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final Button btnUnblock;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static UserItemBlockedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserItemBlockedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_item_blocked, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserItemBlockedBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull Button button, @NonNull NicknameView nicknameView) {
        this.rootView = linearLayout;
        this.address = textView;
        this.avatar = thumbImageView;
        this.btnUnblock = button;
        this.nickname = nicknameView;
    }

    @NonNull
    public static UserItemBlockedBinding bind(@NonNull View view) {
        int i10 = R.id.address;
        TextView textView = (TextView) ViewBindings.a(view, R.id.address);
        if (textView != null) {
            i10 = R.id.avatar;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
            if (thumbImageView != null) {
                i10 = R.id.btn_unblock;
                Button button = (Button) ViewBindings.a(view, R.id.btn_unblock);
                if (button != null) {
                    i10 = R.id.nickname;
                    NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                    if (nicknameView != null) {
                        return new UserItemBlockedBinding((LinearLayout) view, textView, thumbImageView, button, nicknameView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
