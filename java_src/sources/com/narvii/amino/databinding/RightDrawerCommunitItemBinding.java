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
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.PromotionalImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class RightDrawerCommunitItemBinding implements ViewBinding {

    @NonNull
    public final CommunityIconView icon;

    @NonNull
    public final PromotionalImageView image;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static RightDrawerCommunitItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RightDrawerCommunitItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.right_drawer_communit_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RightDrawerCommunitItemBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityIconView communityIconView, @NonNull PromotionalImageView promotionalImageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.icon = communityIconView;
        this.image = promotionalImageView;
        this.text = textView;
    }

    @NonNull
    public static RightDrawerCommunitItemBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.icon);
        if (communityIconView != null) {
            i10 = R.id.image;
            PromotionalImageView promotionalImageView = (PromotionalImageView) ViewBindings.a(view, R.id.image);
            if (promotionalImageView != null) {
                i10 = R.id.text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                if (textView != null) {
                    return new RightDrawerCommunitItemBinding((LinearLayout) view, communityIconView, promotionalImageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
