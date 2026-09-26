package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentBubbleManageBinding implements ViewBinding {

    @NonNull
    public final FrameLayout membershipExpireFragmentContainer;

    @NonNull
    public final FrameLayout moreBubbles;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentBubbleManageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentBubbleManageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_bubble_manage, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentBubbleManageBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.membershipExpireFragmentContainer = frameLayout2;
        this.moreBubbles = frameLayout3;
    }

    @NonNull
    public static FragmentBubbleManageBinding bind(@NonNull View view) {
        int i10 = R.id.membership_expire_fragment_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.membership_expire_fragment_container);
        if (frameLayout != null) {
            i10 = R.id.more_bubbles;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.more_bubbles);
            if (frameLayout2 != null) {
                return new FragmentBubbleManageBinding((FrameLayout) view, frameLayout, frameLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
