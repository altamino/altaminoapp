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
import com.narvii.community.VisitorBarHost;
import com.narvii.widget.JoinCommunityProgressLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class VisitorModeHostBinding implements ViewBinding {

    @NonNull
    public final TextView join;

    @NonNull
    public final JoinCommunityProgressLayout joinCommunity;

    @NonNull
    public final LinearLayout joinCommunityContainer;

    @NonNull
    private final VisitorBarHost rootView;

    @NonNull
    public final LinearLayout visitorModeMain;

    @NonNull
    public static VisitorModeHostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public VisitorBarHost getRoot() {
        return this.rootView;
    }

    @NonNull
    public static VisitorModeHostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.visitor_mode_host, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private VisitorModeHostBinding(@NonNull VisitorBarHost visitorBarHost, @NonNull TextView textView, @NonNull JoinCommunityProgressLayout joinCommunityProgressLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = visitorBarHost;
        this.join = textView;
        this.joinCommunity = joinCommunityProgressLayout;
        this.joinCommunityContainer = linearLayout;
        this.visitorModeMain = linearLayout2;
    }

    @NonNull
    public static VisitorModeHostBinding bind(@NonNull View view) {
        int i10 = R.id.join;
        TextView textView = (TextView) ViewBindings.a(view, R.id.join);
        if (textView != null) {
            i10 = R.id.join_community;
            JoinCommunityProgressLayout joinCommunityProgressLayout = (JoinCommunityProgressLayout) ViewBindings.a(view, R.id.join_community);
            if (joinCommunityProgressLayout != null) {
                i10 = R.id.join_community_container;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.join_community_container);
                if (linearLayout != null) {
                    i10 = R.id.visitor_mode_main;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.visitor_mode_main);
                    if (linearLayout2 != null) {
                        return new VisitorModeHostBinding((VisitorBarHost) view, textView, joinCommunityProgressLayout, linearLayout, linearLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
