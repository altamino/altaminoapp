package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.HorizontalUnbrokenLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class CellAllMembersLayoutBinding implements ViewBinding {

    @NonNull
    public final HorizontalUnbrokenLayout allMemberContainer;

    @NonNull
    public final ImageView icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static CellAllMembersLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CellAllMembersLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.cell_all_members_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CellAllMembersLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull HorizontalUnbrokenLayout horizontalUnbrokenLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.allMemberContainer = horizontalUnbrokenLayout;
        this.icon = imageView;
        this.title = textView;
    }

    @NonNull
    public static CellAllMembersLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.all_member_container;
        HorizontalUnbrokenLayout horizontalUnbrokenLayout = (HorizontalUnbrokenLayout) ViewBindings.a(view, R.id.all_member_container);
        if (horizontalUnbrokenLayout != null) {
            i10 = R.id.icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
            if (imageView != null) {
                i10 = R.id.title;
                TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                if (textView != null) {
                    return new CellAllMembersLayoutBinding((LinearLayout) view, horizontalUnbrokenLayout, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
