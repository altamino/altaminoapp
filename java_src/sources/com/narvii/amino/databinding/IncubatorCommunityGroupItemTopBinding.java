package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class IncubatorCommunityGroupItemTopBinding implements ViewBinding {

    @NonNull
    public final LinearLayout cellContainer;

    @NonNull
    public final RelativeLayout communityGroupLayout;

    @NonNull
    public final HorizontalRecyclerView gallery;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TintButton seeAllArrow;

    @NonNull
    public final LinearLayout seeAllButton;

    @NonNull
    public final TextView seeallText;

    @NonNull
    public final TextView title;

    @NonNull
    public static IncubatorCommunityGroupItemTopBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorCommunityGroupItemTopBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_community_group_item_top, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorCommunityGroupItemTopBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.cellContainer = linearLayout;
        this.communityGroupLayout = relativeLayout;
        this.gallery = horizontalRecyclerView;
        this.seeAllArrow = tintButton;
        this.seeAllButton = linearLayout2;
        this.seeallText = textView;
        this.title = textView2;
    }

    @NonNull
    public static IncubatorCommunityGroupItemTopBinding bind(@NonNull View view) {
        int i10 = R.id.cell_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.cell_container);
        if (linearLayout != null) {
            i10 = R.id.community_group_layout;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.community_group_layout);
            if (relativeLayout != null) {
                i10 = R.id.gallery;
                HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, R.id.gallery);
                if (horizontalRecyclerView != null) {
                    i10 = R.id.see_all_arrow;
                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.see_all_arrow);
                    if (tintButton != null) {
                        i10 = R.id.see_all_button;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.see_all_button);
                        if (linearLayout2 != null) {
                            i10 = R.id.seeall_text;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.seeall_text);
                            if (textView != null) {
                                i10 = R.id.title;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView2 != null) {
                                    return new IncubatorCommunityGroupItemTopBinding((FrameLayout) view, linearLayout, relativeLayout, horizontalRecyclerView, tintButton, linearLayout2, textView, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
