package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.members.NewMemberListRow;
import com.narvii.widget.recycleview.NVHorizontalRecycleView;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemNewMemberListRowBinding implements ViewBinding {

    @NonNull
    public final ImageView iconChat;

    @NonNull
    public final TextView newMemberTitle;

    @NonNull
    public final NVHorizontalRecycleView newMembersList;

    @NonNull
    public final TextView optionSeeAll;

    @NonNull
    private final NewMemberListRow rootView;

    @NonNull
    public static ItemNewMemberListRowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NewMemberListRow getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemNewMemberListRowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_new_member_list_row, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemNewMemberListRowBinding(@NonNull NewMemberListRow newMemberListRow, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull NVHorizontalRecycleView nVHorizontalRecycleView, @NonNull TextView textView2) {
        this.rootView = newMemberListRow;
        this.iconChat = imageView;
        this.newMemberTitle = textView;
        this.newMembersList = nVHorizontalRecycleView;
        this.optionSeeAll = textView2;
    }

    @NonNull
    public static ItemNewMemberListRowBinding bind(@NonNull View view) {
        int i10 = R.id.icon_chat;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon_chat);
        if (imageView != null) {
            i10 = R.id.new_member_title;
            TextView textView = (TextView) ViewBindings.a(view, R.id.new_member_title);
            if (textView != null) {
                i10 = R.id.new_members_list;
                NVHorizontalRecycleView nVHorizontalRecycleView = (NVHorizontalRecycleView) ViewBindings.a(view, R.id.new_members_list);
                if (nVHorizontalRecycleView != null) {
                    i10 = R.id.option_see_all;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.option_see_all);
                    if (textView2 != null) {
                        return new ItemNewMemberListRowBinding((NewMemberListRow) view, imageView, textView, nVHorizontalRecycleView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
