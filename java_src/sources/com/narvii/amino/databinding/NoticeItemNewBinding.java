package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class NoticeItemNewBinding implements ViewBinding {

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final NVThemeTextView datetime;

    @NonNull
    public final NVImageView icon;

    @NonNull
    public final NVImageView icon2;

    @NonNull
    public final NVThemeTextView name;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVThemeTextView text;

    @NonNull
    public final NVThemeTextView text2;

    @NonNull
    public final LinearLayout text2Container;

    @NonNull
    public static NoticeItemNewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static NoticeItemNewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.notice_item_new, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private NoticeItemNewBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityIconView communityIconView, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2, @NonNull NVThemeTextView nVThemeTextView2, @NonNull NVThemeTextView nVThemeTextView3, @NonNull NVThemeTextView nVThemeTextView4, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.communityIcon = communityIconView;
        this.datetime = nVThemeTextView;
        this.icon = nVImageView;
        this.icon2 = nVImageView2;
        this.name = nVThemeTextView2;
        this.text = nVThemeTextView3;
        this.text2 = nVThemeTextView4;
        this.text2Container = linearLayout2;
    }

    @NonNull
    public static NoticeItemNewBinding bind(@NonNull View view) {
        int i10 = R.id.community_icon;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
        if (communityIconView != null) {
            i10 = R.id.datetime;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.datetime);
            if (nVThemeTextView != null) {
                i10 = R.id.icon;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.icon);
                if (nVImageView != null) {
                    i10 = R.id.icon2;
                    NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.icon2);
                    if (nVImageView2 != null) {
                        i10 = R.id.name;
                        NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, R.id.name);
                        if (nVThemeTextView2 != null) {
                            i10 = R.id.text;
                            NVThemeTextView nVThemeTextView3 = (NVThemeTextView) ViewBindings.a(view, R.id.text);
                            if (nVThemeTextView3 != null) {
                                i10 = R.id.text2;
                                NVThemeTextView nVThemeTextView4 = (NVThemeTextView) ViewBindings.a(view, R.id.text2);
                                if (nVThemeTextView4 != null) {
                                    i10 = R.id.text2_container;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.text2_container);
                                    if (linearLayout != null) {
                                        return new NoticeItemNewBinding((LinearLayout) view, communityIconView, nVThemeTextView, nVImageView, nVImageView2, nVThemeTextView2, nVThemeTextView3, nVThemeTextView4, linearLayout);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
