package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes4.dex */
public final class LeaderBoardHeaderPlaceholdBinding implements ViewBinding {

    @NonNull
    private final View rootView;

    @NonNull
    public static LeaderBoardHeaderPlaceholdBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LeaderBoardHeaderPlaceholdBinding bind(@NonNull View view) {
        if (view != null) {
            return new LeaderBoardHeaderPlaceholdBinding(view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static LeaderBoardHeaderPlaceholdBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.leader_board_header_placehold, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LeaderBoardHeaderPlaceholdBinding(@NonNull View view) {
        this.rootView = view;
    }
}
