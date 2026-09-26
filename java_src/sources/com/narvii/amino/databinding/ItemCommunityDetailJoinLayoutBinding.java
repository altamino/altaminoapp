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
import com.narvii.widget.JoinCommunityProgressLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemCommunityDetailJoinLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView join;

    @NonNull
    public final JoinCommunityProgressLayout joinCommunity;

    @NonNull
    public final LinearLayout joinCommunityContainer;

    @NonNull
    public final TintButton joinCommunityLock;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemCommunityDetailJoinLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCommunityDetailJoinLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_community_detail_join_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCommunityDetailJoinLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull JoinCommunityProgressLayout joinCommunityProgressLayout, @NonNull LinearLayout linearLayout2, @NonNull TintButton tintButton) {
        this.rootView = linearLayout;
        this.join = textView;
        this.joinCommunity = joinCommunityProgressLayout;
        this.joinCommunityContainer = linearLayout2;
        this.joinCommunityLock = tintButton;
    }

    @NonNull
    public static ItemCommunityDetailJoinLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.join;
        TextView textView = (TextView) ViewBindings.a(view, R.id.join);
        if (textView != null) {
            i10 = R.id.join_community;
            JoinCommunityProgressLayout joinCommunityProgressLayout = (JoinCommunityProgressLayout) ViewBindings.a(view, R.id.join_community);
            if (joinCommunityProgressLayout != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i10 = R.id.join_community_lock;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.join_community_lock);
                if (tintButton != null) {
                    return new ItemCommunityDetailJoinLayoutBinding(linearLayout, textView, joinCommunityProgressLayout, linearLayout, tintButton);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
