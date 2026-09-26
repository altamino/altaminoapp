package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.lib.databinding.DragSortDragHandleBinding;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class LinkCommunityToggleLayoutBinding implements ViewBinding {

    @NonNull
    public final CheckBox checkBox;

    @NonNull
    public final ThumbImageView communityIcon;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final DragSortDragHandleBinding dragSortView;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static LinkCommunityToggleLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LinkCommunityToggleLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.link_community_toggle_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LinkCommunityToggleLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull DragSortDragHandleBinding dragSortDragHandleBinding) {
        this.rootView = linearLayout;
        this.checkBox = checkBox;
        this.communityIcon = thumbImageView;
        this.communityName = textView;
        this.dragSortView = dragSortDragHandleBinding;
    }

    @NonNull
    public static LinkCommunityToggleLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.check_box;
        CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.check_box);
        if (checkBox != null) {
            i10 = R.id.community_icon;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.community_icon);
            if (thumbImageView != null) {
                i10 = R.id.community_name;
                TextView textView = (TextView) ViewBindings.a(view, R.id.community_name);
                if (textView != null) {
                    i10 = R.id.drag_sort_view;
                    View viewA = ViewBindings.a(view, R.id.drag_sort_view);
                    if (viewA != null) {
                        return new LinkCommunityToggleLayoutBinding((LinearLayout) view, checkBox, thumbImageView, textView, DragSortDragHandleBinding.bind(viewA));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
