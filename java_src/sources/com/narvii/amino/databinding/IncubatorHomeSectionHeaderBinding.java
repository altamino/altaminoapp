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

/* JADX INFO: loaded from: classes6.dex */
public final class IncubatorHomeSectionHeaderBinding implements ViewBinding {

    @NonNull
    public final RelativeLayout communityGroupLayout;

    @NonNull
    public final TextView more;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static IncubatorHomeSectionHeaderBinding bind(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i10 = R.id.more;
        TextView textView = (TextView) ViewBindings.a(view, R.id.more);
        if (textView != null) {
            i10 = R.id.title;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
            if (textView2 != null) {
                return new IncubatorHomeSectionHeaderBinding(relativeLayout, relativeLayout, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static IncubatorHomeSectionHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorHomeSectionHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_home_section_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorHomeSectionHeaderBinding(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.communityGroupLayout = relativeLayout2;
        this.more = textView;
        this.title = textView2;
    }
}
