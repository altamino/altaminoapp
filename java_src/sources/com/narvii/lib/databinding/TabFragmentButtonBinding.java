package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;
import com.narvii.widget.SwitchButton;

/* JADX INFO: loaded from: classes11.dex */
public final class TabFragmentButtonBinding implements ViewBinding {

    @NonNull
    private final SwitchButton rootView;

    @NonNull
    public static TabFragmentButtonBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwitchButton getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TabFragmentButtonBinding bind(@NonNull View view) {
        if (view != null) {
            return new TabFragmentButtonBinding((SwitchButton) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static TabFragmentButtonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.tab_fragment_button, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private TabFragmentButtonBinding(@NonNull SwitchButton switchButton) {
        this.rootView = switchButton;
    }
}
