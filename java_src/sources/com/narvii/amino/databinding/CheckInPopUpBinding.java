package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.StrokedTextView;

/* JADX INFO: loaded from: classes8.dex */
public final class CheckInPopUpBinding implements ViewBinding {

    @NonNull
    public final FrameLayout checkInPopUp;

    @NonNull
    public final LinearLayout main;

    @NonNull
    public final FlexLayout mainLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final StrokedTextView rp;

    @NonNull
    public final ImageView rpBg;

    @NonNull
    public final ImageView rpCheckStroke;

    @NonNull
    public final TextView text;

    @NonNull
    public final TextView title;

    @NonNull
    public static CheckInPopUpBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.main;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.main);
        if (linearLayout != null) {
            i10 = R.id.main_layout;
            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.main_layout);
            if (flexLayout != null) {
                i10 = R.id.rp;
                StrokedTextView strokedTextView = (StrokedTextView) ViewBindings.a(view, R.id.rp);
                if (strokedTextView != null) {
                    i10 = R.id.rp_bg;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.rp_bg);
                    if (imageView != null) {
                        i10 = R.id.rp_check_stroke;
                        ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.rp_check_stroke);
                        if (imageView2 != null) {
                            i10 = R.id.text;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                            if (textView != null) {
                                i10 = R.id.title;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView2 != null) {
                                    return new CheckInPopUpBinding(frameLayout, frameLayout, linearLayout, flexLayout, strokedTextView, imageView, imageView2, textView, textView2);
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
    public static CheckInPopUpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CheckInPopUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.check_in_pop_up, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CheckInPopUpBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout, @NonNull FlexLayout flexLayout, @NonNull StrokedTextView strokedTextView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.checkInPopUp = frameLayout2;
        this.main = linearLayout;
        this.mainLayout = flexLayout;
        this.rp = strokedTextView;
        this.rpBg = imageView;
        this.rpCheckStroke = imageView2;
        this.text = textView;
        this.title = textView2;
    }
}
