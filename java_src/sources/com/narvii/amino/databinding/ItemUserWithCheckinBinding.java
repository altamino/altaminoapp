package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemUserWithCheckinBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView checkInDays;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemUserWithCheckinBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemUserWithCheckinBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_user_with_checkin, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemUserWithCheckinBinding(@NonNull LinearLayout linearLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull NicknameView nicknameView) {
        this.rootView = linearLayout;
        this.checkInDays = autoSizingTextView;
        this.nickname = nicknameView;
    }

    @NonNull
    public static ItemUserWithCheckinBinding bind(@NonNull View view) {
        int i10 = R.id.check_in_days;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.check_in_days);
        if (autoSizingTextView != null) {
            i10 = R.id.nickname;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
            if (nicknameView != null) {
                return new ItemUserWithCheckinBinding((LinearLayout) view, autoSizingTextView, nicknameView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
