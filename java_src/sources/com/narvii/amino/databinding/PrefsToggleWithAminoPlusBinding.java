package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class PrefsToggleWithAminoPlusBinding implements ViewBinding {

    @NonNull
    public final CheckBox checkBox;

    @NonNull
    public final TextView desc;

    @NonNull
    public final TextView name;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final FrameLayout toggleLayout;

    @NonNull
    public static PrefsToggleWithAminoPlusBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsToggleWithAminoPlusBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_toggle_with_amino_plus, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsToggleWithAminoPlusBinding(@NonNull RelativeLayout relativeLayout, @NonNull CheckBox checkBox, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout) {
        this.rootView = relativeLayout;
        this.checkBox = checkBox;
        this.desc = textView;
        this.name = textView2;
        this.toggleLayout = frameLayout;
    }

    @NonNull
    public static PrefsToggleWithAminoPlusBinding bind(@NonNull View view) {
        int i10 = R.id.check_box;
        CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.check_box);
        if (checkBox != null) {
            i10 = R.id.desc;
            TextView textView = (TextView) ViewBindings.a(view, R.id.desc);
            if (textView != null) {
                i10 = R.id.name;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.name);
                if (textView2 != null) {
                    i10 = R.id.toggle_layout;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.toggle_layout);
                    if (frameLayout != null) {
                        return new PrefsToggleWithAminoPlusBinding((RelativeLayout) view, checkBox, textView, textView2, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
