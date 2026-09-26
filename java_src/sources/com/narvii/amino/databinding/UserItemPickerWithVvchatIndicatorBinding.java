package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes2.dex */
public final class UserItemPickerWithVvchatIndicatorBinding implements ViewBinding {

    @NonNull
    public final TextView address;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FontAwesomeView userPickerCheck;

    @NonNull
    public final View userPickerUncheck;

    @NonNull
    public static UserItemPickerWithVvchatIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserItemPickerWithVvchatIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_item_picker_with_vvchat_indicator, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserItemPickerWithVvchatIndicatorBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull NicknameView nicknameView, @NonNull FontAwesomeView fontAwesomeView, @NonNull View view) {
        this.rootView = linearLayout;
        this.address = textView;
        this.nickname = nicknameView;
        this.userPickerCheck = fontAwesomeView;
        this.userPickerUncheck = view;
    }

    @NonNull
    public static UserItemPickerWithVvchatIndicatorBinding bind(@NonNull View view) {
        int i10 = R.id.address;
        TextView textView = (TextView) ViewBindings.a(view, R.id.address);
        if (textView != null) {
            i10 = R.id.nickname;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
            if (nicknameView != null) {
                i10 = R.id.user_picker_check;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.user_picker_check);
                if (fontAwesomeView != null) {
                    i10 = R.id.user_picker_uncheck;
                    View viewA = ViewBindings.a(view, R.id.user_picker_uncheck);
                    if (viewA != null) {
                        return new UserItemPickerWithVvchatIndicatorBinding((LinearLayout) view, textView, nicknameView, fontAwesomeView, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
