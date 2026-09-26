package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeTextView;

/* JADX INFO: loaded from: classes10.dex */
public final class PrefsCopyrightItemBinding implements ViewBinding {

    @NonNull
    public final NVThemeTextView copyright;

    @NonNull
    private final NVThemeTextView rootView;

    @NonNull
    public static PrefsCopyrightItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeTextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsCopyrightItemBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        NVThemeTextView nVThemeTextView = (NVThemeTextView) view;
        return new PrefsCopyrightItemBinding(nVThemeTextView, nVThemeTextView);
    }

    @NonNull
    public static PrefsCopyrightItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_copyright_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsCopyrightItemBinding(@NonNull NVThemeTextView nVThemeTextView, @NonNull NVThemeTextView nVThemeTextView2) {
        this.rootView = nVThemeTextView;
        this.copyright = nVThemeTextView2;
    }
}
