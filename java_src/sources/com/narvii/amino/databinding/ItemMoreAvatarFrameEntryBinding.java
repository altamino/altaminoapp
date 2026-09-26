package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemMoreAvatarFrameEntryBinding implements ViewBinding {

    @NonNull
    public final LinearLayout moreAvatarFrame;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemMoreAvatarFrameEntryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemMoreAvatarFrameEntryBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        LinearLayout linearLayout = (LinearLayout) view;
        return new ItemMoreAvatarFrameEntryBinding(linearLayout, linearLayout);
    }

    @NonNull
    public static ItemMoreAvatarFrameEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_more_avatar_frame_entry, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemMoreAvatarFrameEntryBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.moreAvatarFrame = linearLayout2;
    }
}
