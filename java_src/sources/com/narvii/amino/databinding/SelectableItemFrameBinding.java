package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.list.select.SelectableFrame;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes10.dex */
public final class SelectableItemFrameBinding implements ViewBinding {

    @NonNull
    private final SelectableFrame rootView;

    @NonNull
    public final View selectableBackOn;

    @NonNull
    public final FontAwesomeView selectableCheckOff;

    @NonNull
    public final FrameLayout selectableCheckOn;

    @NonNull
    public static SelectableItemFrameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SelectableFrame getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SelectableItemFrameBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.selectable_item_frame, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SelectableItemFrameBinding(@NonNull SelectableFrame selectableFrame, @NonNull View view, @NonNull FontAwesomeView fontAwesomeView, @NonNull FrameLayout frameLayout) {
        this.rootView = selectableFrame;
        this.selectableBackOn = view;
        this.selectableCheckOff = fontAwesomeView;
        this.selectableCheckOn = frameLayout;
    }

    @NonNull
    public static SelectableItemFrameBinding bind(@NonNull View view) {
        int i10 = R.id.selectable_back_on;
        View viewA = ViewBindings.a(view, R.id.selectable_back_on);
        if (viewA != null) {
            i10 = R.id.selectable_check_off;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.selectable_check_off);
            if (fontAwesomeView != null) {
                i10 = R.id.selectable_check_on;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.selectable_check_on);
                if (frameLayout != null) {
                    return new SelectableItemFrameBinding((SelectableFrame) view, viewA, fontAwesomeView, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
