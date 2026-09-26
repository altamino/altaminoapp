package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.PopupBubble;

/* JADX INFO: loaded from: classes7.dex */
public final class TooltipLayoutBinding implements ViewBinding {

    @NonNull
    public final ImageView fingerEnd;

    @NonNull
    public final ImageView fingerStart;

    @NonNull
    public final TextView hintText;

    @NonNull
    public final PopupBubble popupBubble;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout tooltipLayout;

    @NonNull
    public static TooltipLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TooltipLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.finger_end;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.finger_start;
            ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
            if (imageView2 != null) {
                i10 = R.id.hint_text;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    i10 = R.id.popup_bubble;
                    PopupBubble popupBubble = (PopupBubble) ViewBindings.a(view, i10);
                    if (popupBubble != null) {
                        FrameLayout frameLayout = (FrameLayout) view;
                        return new TooltipLayoutBinding(frameLayout, imageView, imageView2, textView, popupBubble, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static TooltipLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.tooltip_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private TooltipLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull PopupBubble popupBubble, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.fingerEnd = imageView;
        this.fingerStart = imageView2;
        this.hintText = textView;
        this.popupBubble = popupBubble;
        this.tooltipLayout = frameLayout2;
    }
}
