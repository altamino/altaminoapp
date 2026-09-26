package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes4.dex */
public final class IncubatorCommunityPageBinding implements ViewBinding {

    @NonNull
    public final TintButton actionbarBack;

    @NonNull
    public final View actionbarDivider;

    @NonNull
    public final RelativeLayout communityPageActionbar;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static IncubatorCommunityPageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorCommunityPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_community_page, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorCommunityPageBinding(@NonNull FrameLayout frameLayout, @NonNull TintButton tintButton, @NonNull View view, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.actionbarBack = tintButton;
        this.actionbarDivider = view;
        this.communityPageActionbar = relativeLayout;
        this.title = textView;
    }

    @NonNull
    public static IncubatorCommunityPageBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_back;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.actionbar_back);
        if (tintButton != null) {
            i10 = R.id.actionbar_divider;
            View viewA = ViewBindings.a(view, R.id.actionbar_divider);
            if (viewA != null) {
                i10 = R.id.community_page_actionbar;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.community_page_actionbar);
                if (relativeLayout != null) {
                    i10 = R.id.title;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView != null) {
                        return new IncubatorCommunityPageBinding((FrameLayout) view, tintButton, viewA, relativeLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
