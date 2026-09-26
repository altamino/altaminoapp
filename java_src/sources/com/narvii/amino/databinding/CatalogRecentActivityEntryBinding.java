package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes9.dex */
public final class CatalogRecentActivityEntryBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView chevronRight;

    @NonNull
    public final RelativeLayout recentActivityEntry;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static CatalogRecentActivityEntryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CatalogRecentActivityEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.catalog_recent_activity_entry, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CatalogRecentActivityEntryBinding(@NonNull RelativeLayout relativeLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.chevronRight = fontAwesomeView;
        this.recentActivityEntry = relativeLayout2;
        this.title = textView;
    }

    @NonNull
    public static CatalogRecentActivityEntryBinding bind(@NonNull View view) {
        int i10 = R.id.chevron_right;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.chevron_right);
        if (fontAwesomeView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            TextView textView = (TextView) ViewBindings.a(view, R.id.title);
            if (textView != null) {
                return new CatalogRecentActivityEntryBinding(relativeLayout, fontAwesomeView, relativeLayout, textView);
            }
            i10 = R.id.title;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
