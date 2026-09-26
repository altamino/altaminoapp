package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.quizzes.HeaderLayout;
import com.narvii.widget.NVTabLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class QuizzesHeaderOverlayoutBinding implements ViewBinding {

    @NonNull
    public final TextView infoHint;

    @NonNull
    public final ImageView infoIcon;

    @NonNull
    public final TextView infoTitle;

    @NonNull
    public final LinearLayout infoTitleContainer;

    @NonNull
    public final RelativeLayout overlayInfoLayout;

    @NonNull
    public final NVTabLayout overlayTabLayout;

    @NonNull
    private final HeaderLayout rootView;

    @NonNull
    public static QuizzesHeaderOverlayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HeaderLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizzesHeaderOverlayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quizzes_header_overlayout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizzesHeaderOverlayoutBinding(@NonNull HeaderLayout headerLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull NVTabLayout nVTabLayout) {
        this.rootView = headerLayout;
        this.infoHint = textView;
        this.infoIcon = imageView;
        this.infoTitle = textView2;
        this.infoTitleContainer = linearLayout;
        this.overlayInfoLayout = relativeLayout;
        this.overlayTabLayout = nVTabLayout;
    }

    @NonNull
    public static QuizzesHeaderOverlayoutBinding bind(@NonNull View view) {
        int i10 = R.id.info_hint;
        TextView textView = (TextView) ViewBindings.a(view, R.id.info_hint);
        if (textView != null) {
            i10 = R.id.info_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.info_icon);
            if (imageView != null) {
                i10 = R.id.info_title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.info_title);
                if (textView2 != null) {
                    i10 = R.id.info_title_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.info_title_container);
                    if (linearLayout != null) {
                        i10 = R.id.overlay_info_layout;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.overlay_info_layout);
                        if (relativeLayout != null) {
                            i10 = R.id.overlay_tab_layout;
                            NVTabLayout nVTabLayout = (NVTabLayout) ViewBindings.a(view, R.id.overlay_tab_layout);
                            if (nVTabLayout != null) {
                                return new QuizzesHeaderOverlayoutBinding((HeaderLayout) view, textView, imageView, textView2, linearLayout, relativeLayout, nVTabLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
