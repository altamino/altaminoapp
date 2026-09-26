package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SrRecyclerInviteItemBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static SrRecyclerInviteItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SrRecyclerInviteItemBinding bind(@NonNull View view) {
        if (view != null) {
            return new SrRecyclerInviteItemBinding((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static SrRecyclerInviteItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sr_recycler_invite_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SrRecyclerInviteItemBinding(@NonNull FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }
}
