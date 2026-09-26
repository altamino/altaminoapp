package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class StickerAddItemBinding implements ViewBinding {

    @NonNull
    public final TintButton avatarPlaceholder;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public static StickerAddItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerAddItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_add_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerAddItemBinding(@NonNull FlexLayout flexLayout, @NonNull TintButton tintButton, @NonNull View view) {
        this.rootView = flexLayout;
        this.avatarPlaceholder = tintButton;
        this.stub1 = view;
    }

    @NonNull
    public static StickerAddItemBinding bind(@NonNull View view) {
        int i10 = R.id.avatar_placeholder;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.avatar_placeholder);
        if (tintButton != null) {
            i10 = R.id.stub1;
            View viewA = ViewBindings.a(view, R.id.stub1);
            if (viewA != null) {
                return new StickerAddItemBinding((FlexLayout) view, tintButton, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
