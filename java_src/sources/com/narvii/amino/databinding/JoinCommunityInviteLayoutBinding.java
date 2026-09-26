package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class JoinCommunityInviteLayoutBinding implements ViewBinding {

    @NonNull
    public final FlexLayout content;

    @NonNull
    public final ImageView inviteClose;

    @NonNull
    public final ScrollView root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static JoinCommunityInviteLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static JoinCommunityInviteLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.join_community_invite_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private JoinCommunityInviteLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull FlexLayout flexLayout, @NonNull ImageView imageView, @NonNull ScrollView scrollView) {
        this.rootView = frameLayout;
        this.content = flexLayout;
        this.inviteClose = imageView;
        this.root = scrollView;
    }

    @NonNull
    public static JoinCommunityInviteLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.content);
        if (flexLayout != null) {
            i10 = R.id.invite_close;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.invite_close);
            if (imageView != null) {
                i10 = R.id.root;
                ScrollView scrollView = (ScrollView) ViewBindings.a(view, R.id.root);
                if (scrollView != null) {
                    return new JoinCommunityInviteLayoutBinding((FrameLayout) view, flexLayout, imageView, scrollView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
