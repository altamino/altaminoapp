package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.lib.R;
import com.narvii.share.ShareTargetCellLayout;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes.dex */
public final class ShareTargetCellLayoutBinding implements ViewBinding {

    @NonNull
    public final ImageView icon;

    @NonNull
    public final FlexLayout realContainer;

    @NonNull
    private final ShareTargetCellLayout rootView;

    @NonNull
    public final AutoSizingTextView targetLabel;

    @NonNull
    public static ShareTargetCellLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ShareTargetCellLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ShareTargetCellLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.real_container;
            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, i10);
            if (flexLayout != null) {
                i10 = R.id.target_label;
                AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, i10);
                if (autoSizingTextView != null) {
                    return new ShareTargetCellLayoutBinding((ShareTargetCellLayout) view, imageView, flexLayout, autoSizingTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ShareTargetCellLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.share_target_cell_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ShareTargetCellLayoutBinding(@NonNull ShareTargetCellLayout shareTargetCellLayout, @NonNull ImageView imageView, @NonNull FlexLayout flexLayout, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = shareTargetCellLayout;
        this.icon = imageView;
        this.realContainer = flexLayout;
        this.targetLabel = autoSizingTextView;
    }
}
