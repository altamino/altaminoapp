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
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes8.dex */
public final class HomeItemFeaturedUserAllMemberBinding implements ViewBinding {

    @NonNull
    public final LinearLayout allMemberContainer;

    @NonNull
    public final AutoSizingTextView allMembers;

    @NonNull
    public final TextView memberCount;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static HomeItemFeaturedUserAllMemberBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HomeItemFeaturedUserAllMemberBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.home_item_featured_user_all_member, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HomeItemFeaturedUserAllMemberBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull AutoSizingTextView autoSizingTextView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.allMemberContainer = linearLayout2;
        this.allMembers = autoSizingTextView;
        this.memberCount = textView;
    }

    @NonNull
    public static HomeItemFeaturedUserAllMemberBinding bind(@NonNull View view) {
        int i10 = R.id.all_member_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.all_member_container);
        if (linearLayout != null) {
            i10 = R.id.all_members;
            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.all_members);
            if (autoSizingTextView != null) {
                i10 = R.id.member_count;
                TextView textView = (TextView) ViewBindings.a(view, R.id.member_count);
                if (textView != null) {
                    return new HomeItemFeaturedUserAllMemberBinding((LinearLayout) view, linearLayout, autoSizingTextView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
