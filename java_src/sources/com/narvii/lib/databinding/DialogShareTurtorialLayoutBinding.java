package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes11.dex */
public final class DialogShareTurtorialLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout alertDialogButtons;

    @NonNull
    public final ScrollView alertDialogContent;

    @NonNull
    public final TextView alertDialogTitle;

    @NonNull
    public final FrameLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final ImageView shareTargetIcon;

    @NonNull
    public final LinearLayout shareTargetLayout;

    @NonNull
    public final TextView shareTargetName;

    @NonNull
    public final LinearLayout tutorialItems;

    @NonNull
    public static DialogShareTurtorialLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogShareTurtorialLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.alert_dialog_buttons;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
        if (linearLayout != null) {
            i10 = R.id.alert_dialog_content;
            ScrollView scrollView = (ScrollView) ViewBindings.a(view, i10);
            if (scrollView != null) {
                i10 = R.id.alert_dialog_title;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    i10 = R.id.share_target_icon;
                    ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                    if (imageView != null) {
                        i10 = R.id.share_target_layout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
                        if (linearLayout2 != null) {
                            i10 = R.id.share_target_name;
                            TextView textView2 = (TextView) ViewBindings.a(view, i10);
                            if (textView2 != null) {
                                i10 = R.id.tutorial_items;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, i10);
                                if (linearLayout3 != null) {
                                    return new DialogShareTurtorialLayoutBinding(frameLayout, linearLayout, scrollView, textView, frameLayout, imageView, linearLayout2, textView2, linearLayout3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogShareTurtorialLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_share_turtorial_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogShareTurtorialLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ScrollView scrollView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3) {
        this.rootView = frameLayout;
        this.alertDialogButtons = linearLayout;
        this.alertDialogContent = scrollView;
        this.alertDialogTitle = textView;
        this.root = frameLayout2;
        this.shareTargetIcon = imageView;
        this.shareTargetLayout = linearLayout2;
        this.shareTargetName = textView2;
        this.tutorialItems = linearLayout3;
    }
}
