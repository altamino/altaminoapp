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

/* JADX INFO: loaded from: classes9.dex */
public final class HeadlineRecentIconBinding implements ViewBinding {

    @NonNull
    public final TextView badge;

    @NonNull
    public final LinearLayout drawerRightRecentIcon;

    @NonNull
    public final CommunityIconView icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static HeadlineRecentIconBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HeadlineRecentIconBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.headline_recent_icon, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HeadlineRecentIconBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull CommunityIconView communityIconView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.badge = textView;
        this.drawerRightRecentIcon = linearLayout2;
        this.icon = communityIconView;
        this.title = textView2;
    }

    @NonNull
    public static HeadlineRecentIconBinding bind(@NonNull View view) {
        int i10 = R.id.badge;
        TextView textView = (TextView) ViewBindings.a(view, R.id.badge);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i10 = R.id.icon;
            CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.icon);
            if (communityIconView != null) {
                i10 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                if (textView2 != null) {
                    return new HeadlineRecentIconBinding(linearLayout, textView, linearLayout, communityIconView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
