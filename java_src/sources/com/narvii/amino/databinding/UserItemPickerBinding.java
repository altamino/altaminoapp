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

/* JADX INFO: loaded from: classes8.dex */
public final class UserItemPickerBinding implements ViewBinding {

    @NonNull
    public final TextView address;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FontAwesomeView userPickerCheck;

    @NonNull
    public final FontAwesomeView userPickerExistCheck;

    @NonNull
    public final View userPickerUncheck;

    @NonNull
    public static UserItemPickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserItemPickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_item_picker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserItemPickerBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull NicknameView nicknameView, @NonNull FontAwesomeView fontAwesomeView, @NonNull FontAwesomeView fontAwesomeView2, @NonNull View view) {
        this.rootView = linearLayout;
        this.address = textView;
        this.nickname = nicknameView;
        this.userPickerCheck = fontAwesomeView;
        this.userPickerExistCheck = fontAwesomeView2;
        this.userPickerUncheck = view;
    }

    @NonNull
    public static UserItemPickerBinding bind(@NonNull View view) {
        int i10 = R.id.address;
        TextView textView = (TextView) ViewBindings.a(view, R.id.address);
        if (textView != null) {
            i10 = R.id.nickname;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
            if (nicknameView != null) {
                i10 = R.id.user_picker_check;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.user_picker_check);
                if (fontAwesomeView != null) {
                    i10 = R.id.user_picker_exist_check;
                    FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, R.id.user_picker_exist_check);
                    if (fontAwesomeView2 != null) {
                        i10 = R.id.user_picker_uncheck;
                        View viewA = ViewBindings.a(view, R.id.user_picker_uncheck);
                        if (viewA != null) {
                            return new UserItemPickerBinding((LinearLayout) view, textView, nicknameView, fontAwesomeView, fontAwesomeView2, viewA);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
