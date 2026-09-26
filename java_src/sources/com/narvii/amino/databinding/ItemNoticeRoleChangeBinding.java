package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.PushButton;

/* JADX INFO: loaded from: classes8.dex */
public final class ItemNoticeRoleChangeBinding implements ViewBinding {

    @NonNull
    public final PushButton accept;

    @NonNull
    public final NVThemeTextView datetime;

    @NonNull
    public final PushButton decline;

    @NonNull
    public final ImageView indicator;

    @NonNull
    public final NVThemeTextView info;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemNoticeRoleChangeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemNoticeRoleChangeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_notice_role_change, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemNoticeRoleChangeBinding(@NonNull LinearLayout linearLayout, @NonNull PushButton pushButton, @NonNull NVThemeTextView nVThemeTextView, @NonNull PushButton pushButton2, @NonNull ImageView imageView, @NonNull NVThemeTextView nVThemeTextView2) {
        this.rootView = linearLayout;
        this.accept = pushButton;
        this.datetime = nVThemeTextView;
        this.decline = pushButton2;
        this.indicator = imageView;
        this.info = nVThemeTextView2;
    }

    @NonNull
    public static ItemNoticeRoleChangeBinding bind(@NonNull View view) {
        int i10 = R.id.accept;
        PushButton pushButton = (PushButton) ViewBindings.a(view, R.id.accept);
        if (pushButton != null) {
            i10 = R.id.datetime;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.datetime);
            if (nVThemeTextView != null) {
                i10 = R.id.decline;
                PushButton pushButton2 = (PushButton) ViewBindings.a(view, R.id.decline);
                if (pushButton2 != null) {
                    i10 = R.id.indicator;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.indicator);
                    if (imageView != null) {
                        i10 = R.id.info;
                        NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, R.id.info);
                        if (nVThemeTextView2 != null) {
                            return new ItemNoticeRoleChangeBinding((LinearLayout) view, pushButton, nVThemeTextView, pushButton2, imageView, nVThemeTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
