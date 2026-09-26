package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeTintButton;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class PrefsCommunityProfileItemBinding implements ViewBinding {

    @NonNull
    public final NVImageView avatar1;

    @NonNull
    public final NVImageView avatar2;

    @NonNull
    public final NVImageView avatar3;

    @NonNull
    public final NVThemeTintButton chevronRight;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public static PrefsCommunityProfileItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsCommunityProfileItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_community_profile_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsCommunityProfileItemBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2, @NonNull NVImageView nVImageView3, @NonNull NVThemeTintButton nVThemeTintButton) {
        this.rootView = nVThemeLinearLayout;
        this.avatar1 = nVImageView;
        this.avatar2 = nVImageView2;
        this.avatar3 = nVImageView3;
        this.chevronRight = nVThemeTintButton;
    }

    @NonNull
    public static PrefsCommunityProfileItemBinding bind(@NonNull View view) {
        int i10 = R.id.avatar_1;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.avatar_1);
        if (nVImageView != null) {
            i10 = R.id.avatar_2;
            NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.avatar_2);
            if (nVImageView2 != null) {
                i10 = R.id.avatar_3;
                NVImageView nVImageView3 = (NVImageView) ViewBindings.a(view, R.id.avatar_3);
                if (nVImageView3 != null) {
                    i10 = R.id.chevron_right;
                    NVThemeTintButton nVThemeTintButton = (NVThemeTintButton) ViewBindings.a(view, R.id.chevron_right);
                    if (nVThemeTintButton != null) {
                        return new PrefsCommunityProfileItemBinding((NVThemeLinearLayout) view, nVImageView, nVImageView2, nVImageView3, nVThemeTintButton);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
