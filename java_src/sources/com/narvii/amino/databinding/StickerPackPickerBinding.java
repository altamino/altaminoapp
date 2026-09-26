package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVListView;

/* JADX INFO: loaded from: classes7.dex */
public final class StickerPackPickerBinding implements ViewBinding {

    @NonNull
    public final View gradient;

    @NonNull
    public final NVListView list;

    @NonNull
    public final FrameLayout listContainer;

    @NonNull
    public final FlexLayout root;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static StickerPackPickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerPackPickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_pack_picker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerPackPickerBinding(@NonNull FlexLayout flexLayout, @NonNull View view, @NonNull NVListView nVListView, @NonNull FrameLayout frameLayout, @NonNull FlexLayout flexLayout2) {
        this.rootView = flexLayout;
        this.gradient = view;
        this.list = nVListView;
        this.listContainer = frameLayout;
        this.root = flexLayout2;
    }

    @NonNull
    public static StickerPackPickerBinding bind(@NonNull View view) {
        int i10 = R.id.gradient;
        View viewA = ViewBindings.a(view, R.id.gradient);
        if (viewA != null) {
            i10 = android.R.id.list;
            NVListView nVListView = (NVListView) ViewBindings.a(view, android.R.id.list);
            if (nVListView != null) {
                i10 = R.id.list_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.list_container);
                if (frameLayout != null) {
                    FlexLayout flexLayout = (FlexLayout) view;
                    return new StickerPackPickerBinding(flexLayout, viewA, nVListView, frameLayout, flexLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
