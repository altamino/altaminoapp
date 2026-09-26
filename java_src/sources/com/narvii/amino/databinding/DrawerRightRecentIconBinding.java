package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.CommunityIconView;

/* JADX INFO: loaded from: classes6.dex */
public final class DrawerRightRecentIconBinding implements ViewBinding {

    @NonNull
    public final TextView badge;

    @NonNull
    public final FlexLayout drawerRightRecentIcon;

    @NonNull
    public final CommunityIconView icon;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static DrawerRightRecentIconBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerRightRecentIconBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_right_recent_icon, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerRightRecentIconBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull FlexLayout flexLayout2, @NonNull CommunityIconView communityIconView, @NonNull TextView textView2) {
        this.rootView = flexLayout;
        this.badge = textView;
        this.drawerRightRecentIcon = flexLayout2;
        this.icon = communityIconView;
        this.title = textView2;
    }

    @NonNull
    public static DrawerRightRecentIconBinding bind(@NonNull View view) {
        int i10 = R.id.badge;
        TextView textView = (TextView) ViewBindings.a(view, R.id.badge);
        if (textView != null) {
            FlexLayout flexLayout = (FlexLayout) view;
            i10 = R.id.icon;
            CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.icon);
            if (communityIconView != null) {
                i10 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                if (textView2 != null) {
                    return new DrawerRightRecentIconBinding(flexLayout, textView, flexLayout, communityIconView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
