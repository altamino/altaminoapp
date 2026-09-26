package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class FlagBlockUserLayoutBinding implements ViewBinding {

    @NonNull
    public final CheckBox flagBlockUserCheck;

    @NonNull
    public final RelativeLayout flagBlockUserLayout;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static FlagBlockUserLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagBlockUserLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_block_user_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlagBlockUserLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull CheckBox checkBox, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = relativeLayout;
        this.flagBlockUserCheck = checkBox;
        this.flagBlockUserLayout = relativeLayout2;
    }

    @NonNull
    public static FlagBlockUserLayoutBinding bind(@NonNull View view) {
        CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.flag_block_user_check);
        if (checkBox != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            return new FlagBlockUserLayoutBinding(relativeLayout, checkBox, relativeLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.flag_block_user_check)));
    }
}
