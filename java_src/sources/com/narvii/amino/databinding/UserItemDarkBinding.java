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
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes9.dex */
public final class UserItemDarkBinding implements ViewBinding {

    @NonNull
    public final TextView address;

    @NonNull
    public final TextView aminoId;

    @NonNull
    public final TextView disabled;

    @NonNull
    public final TextView extraInfo;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView timeAgo;

    @NonNull
    public static UserItemDarkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserItemDarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_item_dark, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserItemDarkBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull NicknameView nicknameView, @NonNull TextView textView5) {
        this.rootView = linearLayout;
        this.address = textView;
        this.aminoId = textView2;
        this.disabled = textView3;
        this.extraInfo = textView4;
        this.nickname = nicknameView;
        this.timeAgo = textView5;
    }

    @NonNull
    public static UserItemDarkBinding bind(@NonNull View view) {
        int i10 = R.id.address;
        TextView textView = (TextView) ViewBindings.a(view, R.id.address);
        if (textView != null) {
            i10 = R.id.amino_id;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.amino_id);
            if (textView2 != null) {
                i10 = R.id.disabled;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.disabled);
                if (textView3 != null) {
                    i10 = R.id.extra_info;
                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.extra_info);
                    if (textView4 != null) {
                        i10 = R.id.nickname;
                        NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                        if (nicknameView != null) {
                            i10 = R.id.time_ago;
                            TextView textView5 = (TextView) ViewBindings.a(view, R.id.time_ago);
                            if (textView5 != null) {
                                return new UserItemDarkBinding((LinearLayout) view, textView, textView2, textView3, textView4, nicknameView, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
