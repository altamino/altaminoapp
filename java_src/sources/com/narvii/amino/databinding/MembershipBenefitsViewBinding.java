package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes4.dex */
public final class MembershipBenefitsViewBinding implements ViewBinding {

    @NonNull
    public final RelativeLayout benefitsLayout;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView subscribeBenefitsText;

    @NonNull
    public static MembershipBenefitsViewBinding bind(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        TextView textView = (TextView) ViewBindings.a(view, R.id.subscribe_benefits_text);
        if (textView != null) {
            return new MembershipBenefitsViewBinding(relativeLayout, relativeLayout, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.subscribe_benefits_text)));
    }

    @NonNull
    public static MembershipBenefitsViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MembershipBenefitsViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.membership_benefits_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MembershipBenefitsViewBinding(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.benefitsLayout = relativeLayout2;
        this.subscribeBenefitsText = textView;
    }
}
