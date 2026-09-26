package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemCheckinUserBinding implements ViewBinding {

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemCheckinUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCheckinUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_checkin_user, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCheckinUserBinding(@NonNull FlexLayout flexLayout, @NonNull NicknameView nicknameView) {
        this.rootView = flexLayout;
        this.nickname = nicknameView;
    }

    @NonNull
    public static ItemCheckinUserBinding bind(@NonNull View view) {
        NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
        if (nicknameView != null) {
            return new ItemCheckinUserBinding((FlexLayout) view, nicknameView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.nickname)));
    }
}
