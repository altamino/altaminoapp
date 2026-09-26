package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemSummaryUserChildBinding implements ViewBinding {

    @NonNull
    public final ImageView chevronRight;

    @NonNull
    public final NicknameView name;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static ItemSummaryUserChildBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSummaryUserChildBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_summary_user_child, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSummaryUserChildBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull NicknameView nicknameView) {
        this.rootView = relativeLayout;
        this.chevronRight = imageView;
        this.name = nicknameView;
    }

    @NonNull
    public static ItemSummaryUserChildBinding bind(@NonNull View view) {
        int i10 = R.id.chevron_right;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.chevron_right);
        if (imageView != null) {
            i10 = R.id.name;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.name);
            if (nicknameView != null) {
                return new ItemSummaryUserChildBinding((RelativeLayout) view, imageView, nicknameView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
