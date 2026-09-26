package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentMembershipWarningBinding implements ViewBinding {

    @NonNull
    public final TextView expireContent;

    @NonNull
    public final TextView renew;

    @NonNull
    public final FrameLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentMembershipWarningBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMembershipWarningBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_membership_warning, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMembershipWarningBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.expireContent = textView;
        this.renew = textView2;
        this.root = frameLayout2;
    }

    @NonNull
    public static FragmentMembershipWarningBinding bind(@NonNull View view) {
        int i10 = R.id.expire_content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.expire_content);
        if (textView != null) {
            i10 = R.id.renew;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.renew);
            if (textView2 != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                return new FragmentMembershipWarningBinding(frameLayout, textView, textView2, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
