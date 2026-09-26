package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemAddMoreSceneItemBinding implements ViewBinding {

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TintButton tbAdd;

    @NonNull
    public static ItemAddMoreSceneItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemAddMoreSceneItemBinding bind(@NonNull View view) {
        int i10 = R.id.tb_add;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton != null) {
            return new ItemAddMoreSceneItemBinding((RelativeLayout) view, tintButton);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemAddMoreSceneItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_add_more_scene_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemAddMoreSceneItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull TintButton tintButton) {
        this.rootView = relativeLayout;
        this.tbAdd = tintButton;
    }
}
