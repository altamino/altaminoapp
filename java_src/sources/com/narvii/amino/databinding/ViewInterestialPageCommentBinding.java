package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class ViewInterestialPageCommentBinding implements ViewBinding {

    @NonNull
    public final UserAvatarLayoutMiniBinding avatar;

    @NonNull
    public final FrameLayout commentHintView;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ViewInterestialPageCommentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ViewInterestialPageCommentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.view_interestial_page_comment, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ViewInterestialPageCommentBinding(@NonNull LinearLayout linearLayout, @NonNull UserAvatarLayoutMiniBinding userAvatarLayoutMiniBinding, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.avatar = userAvatarLayoutMiniBinding;
        this.commentHintView = frameLayout;
    }

    @NonNull
    public static ViewInterestialPageCommentBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        View viewA = ViewBindings.a(view, R.id.avatar);
        if (viewA != null) {
            UserAvatarLayoutMiniBinding userAvatarLayoutMiniBindingBind = UserAvatarLayoutMiniBinding.bind(viewA);
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.comment_hint_view);
            if (frameLayout != null) {
                return new ViewInterestialPageCommentBinding((LinearLayout) view, userAvatarLayoutMiniBindingBind, frameLayout);
            }
            i10 = R.id.comment_hint_view;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
