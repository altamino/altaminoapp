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

/* JADX INFO: loaded from: classes10.dex */
public final class UserItemGlobalSearchDarkBinding implements ViewBinding {

    @NonNull
    public final TextView aminoId;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static UserItemGlobalSearchDarkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserItemGlobalSearchDarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_item_global_search_dark, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserItemGlobalSearchDarkBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull NicknameView nicknameView) {
        this.rootView = linearLayout;
        this.aminoId = textView;
        this.nickname = nicknameView;
    }

    @NonNull
    public static UserItemGlobalSearchDarkBinding bind(@NonNull View view) {
        int i10 = R.id.amino_id;
        TextView textView = (TextView) ViewBindings.a(view, R.id.amino_id);
        if (textView != null) {
            i10 = R.id.nickname;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
            if (nicknameView != null) {
                return new UserItemGlobalSearchDarkBinding((LinearLayout) view, textView, nicknameView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
