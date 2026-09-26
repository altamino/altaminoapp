package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentBubbleSettingBinding implements ViewBinding {

    @NonNull
    public final LinearLayout bubbleSetting;

    @NonNull
    public final FrameLayout membershipExpireFragmentContainer;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentBubbleSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentBubbleSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_bubble_setting, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentBubbleSettingBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.bubbleSetting = linearLayout;
        this.membershipExpireFragmentContainer = frameLayout2;
    }

    @NonNull
    public static FragmentBubbleSettingBinding bind(@NonNull View view) {
        int i10 = R.id.bubble_setting;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.bubble_setting);
        if (linearLayout != null) {
            i10 = R.id.membership_expire_fragment_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.membership_expire_fragment_container);
            if (frameLayout != null) {
                return new FragmentBubbleSettingBinding((FrameLayout) view, linearLayout, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
