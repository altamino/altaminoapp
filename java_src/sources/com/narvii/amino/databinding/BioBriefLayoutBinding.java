package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class BioBriefLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView bioContent;

    @NonNull
    public final TintButton chevron;

    @NonNull
    public final LinearLayout contentContainer;

    @NonNull
    public final TextView contentEmpty;

    @NonNull
    public final LinearLayout imageContainer;

    @NonNull
    public final NVFlowLayout imageFlowLayout;

    @NonNull
    public final LinearLayout imageTextLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static BioBriefLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BioBriefLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.bio_brief_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private BioBriefLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull NVFlowLayout nVFlowLayout, @NonNull LinearLayout linearLayout3) {
        this.rootView = frameLayout;
        this.bioContent = textView;
        this.chevron = tintButton;
        this.contentContainer = linearLayout;
        this.contentEmpty = textView2;
        this.imageContainer = linearLayout2;
        this.imageFlowLayout = nVFlowLayout;
        this.imageTextLayout = linearLayout3;
    }

    @NonNull
    public static BioBriefLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.bio_content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.bio_content);
        if (textView != null) {
            i10 = R.id.chevron;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.chevron);
            if (tintButton != null) {
                i10 = R.id.content_container;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.content_container);
                if (linearLayout != null) {
                    i10 = R.id.content_empty;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.content_empty);
                    if (textView2 != null) {
                        i10 = R.id.image_container;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.image_container);
                        if (linearLayout2 != null) {
                            i10 = R.id.image_flow_layout;
                            NVFlowLayout nVFlowLayout = (NVFlowLayout) ViewBindings.a(view, R.id.image_flow_layout);
                            if (nVFlowLayout != null) {
                                i10 = R.id.image_text_layout;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.image_text_layout);
                                if (linearLayout3 != null) {
                                    return new BioBriefLayoutBinding((FrameLayout) view, textView, tintButton, linearLayout, textView2, linearLayout2, nVFlowLayout, linearLayout3);
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
