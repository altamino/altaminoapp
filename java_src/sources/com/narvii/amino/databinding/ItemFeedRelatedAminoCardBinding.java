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

/* JADX INFO: loaded from: classes9.dex */
public final class ItemFeedRelatedAminoCardBinding implements ViewBinding {

    @NonNull
    public final CommunityIconView icon;

    @NonNull
    public final PromotionalImageView image;

    @NonNull
    public final TextView join;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static ItemFeedRelatedAminoCardBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFeedRelatedAminoCardBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_feed_related_amino_card, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFeedRelatedAminoCardBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityIconView communityIconView, @NonNull PromotionalImageView promotionalImageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.icon = communityIconView;
        this.image = promotionalImageView;
        this.join = textView;
        this.text = textView2;
    }

    @NonNull
    public static ItemFeedRelatedAminoCardBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.icon);
        if (communityIconView != null) {
            i10 = R.id.image;
            PromotionalImageView promotionalImageView = (PromotionalImageView) ViewBindings.a(view, R.id.image);
            if (promotionalImageView != null) {
                i10 = R.id.join;
                TextView textView = (TextView) ViewBindings.a(view, R.id.join);
                if (textView != null) {
                    i10 = R.id.text;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                    if (textView2 != null) {
                        return new ItemFeedRelatedAminoCardBinding((LinearLayout) view, communityIconView, promotionalImageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
