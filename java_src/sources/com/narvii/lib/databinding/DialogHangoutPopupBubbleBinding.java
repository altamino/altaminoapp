package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.PopupBubble;

/* JADX INFO: loaded from: classes8.dex */
public final class DialogHangoutPopupBubbleBinding implements ViewBinding {

    @NonNull
    public final PopupBubble popupBubble;

    @NonNull
    public final View popupBubbleBg;

    @NonNull
    private final AbsoluteLayout rootView;

    @NonNull
    public static DialogHangoutPopupBubbleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public AbsoluteLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogHangoutPopupBubbleBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.popup_bubble;
        PopupBubble popupBubble = (PopupBubble) ViewBindings.a(view, i10);
        if (popupBubble == null || (viewA = ViewBindings.a(view, (i10 = R.id.popup_bubble_bg))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        return new DialogHangoutPopupBubbleBinding((AbsoluteLayout) view, popupBubble, viewA);
    }

    @NonNull
    public static DialogHangoutPopupBubbleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_hangout_popup_bubble, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogHangoutPopupBubbleBinding(@NonNull AbsoluteLayout absoluteLayout, @NonNull PopupBubble popupBubble, @NonNull View view) {
        this.rootView = absoluteLayout;
        this.popupBubble = popupBubble;
        this.popupBubbleBg = view;
    }
}
