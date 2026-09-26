package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemSectionLayoutBinding implements ViewBinding {

    @NonNull
    private final TextView rootView;

    @NonNull
    public final TextView sectionHeader;

    @NonNull
    public static ItemSectionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSectionLayoutBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) view;
        return new ItemSectionLayoutBinding(textView, textView);
    }

    @NonNull
    public static ItemSectionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_section_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSectionLayoutBinding(@NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = textView;
        this.sectionHeader = textView2;
    }
}
