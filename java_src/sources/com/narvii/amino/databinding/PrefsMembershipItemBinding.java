package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.app.theme.view.NVThemeTintButton;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class PrefsMembershipItemBinding implements ViewBinding {

    @NonNull
    public final NVThemeTintButton chevronRight;

    @NonNull
    public final ThumbImageView icon;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public final TextView status;

    @NonNull
    public final NVThemeTextView text;

    @NonNull
    public static PrefsMembershipItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsMembershipItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_membership_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsMembershipItemBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull NVThemeTintButton nVThemeTintButton, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull NVThemeTextView nVThemeTextView) {
        this.rootView = nVThemeLinearLayout;
        this.chevronRight = nVThemeTintButton;
        this.icon = thumbImageView;
        this.status = textView;
        this.text = nVThemeTextView;
    }

    @NonNull
    public static PrefsMembershipItemBinding bind(@NonNull View view) {
        int i10 = R.id.chevron_right;
        NVThemeTintButton nVThemeTintButton = (NVThemeTintButton) ViewBindings.a(view, R.id.chevron_right);
        if (nVThemeTintButton != null) {
            i10 = R.id.icon;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.icon);
            if (thumbImageView != null) {
                i10 = R.id.status;
                TextView textView = (TextView) ViewBindings.a(view, R.id.status);
                if (textView != null) {
                    i10 = R.id.text;
                    NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.text);
                    if (nVThemeTextView != null) {
                        return new PrefsMembershipItemBinding((NVThemeLinearLayout) view, nVThemeTintButton, thumbImageView, textView, nVThemeTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
