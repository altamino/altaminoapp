package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentVerifyAccountChooseIdentityBinding implements ViewBinding {

    @NonNull
    public final ImageView actionbarBack;

    @NonNull
    public final TextView descriptionVerify;

    @NonNull
    public final Button emailBtn;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final Button phoneBtn;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final RelativeLayout titleBar;

    @NonNull
    public final TextView titleVerify;

    @NonNull
    public static FragmentVerifyAccountChooseIdentityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentVerifyAccountChooseIdentityBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_verify_account_choose_identity, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentVerifyAccountChooseIdentityBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull Button button, @NonNull ImageView imageView2, @NonNull Button button2, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.actionbarBack = imageView;
        this.descriptionVerify = textView;
        this.emailBtn = button;
        this.icon = imageView2;
        this.phoneBtn = button2;
        this.title = textView2;
        this.titleBar = relativeLayout;
        this.titleVerify = textView3;
    }

    @NonNull
    public static FragmentVerifyAccountChooseIdentityBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_back;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.actionbar_back);
        if (imageView != null) {
            i10 = R.id.description_verify;
            TextView textView = (TextView) ViewBindings.a(view, R.id.description_verify);
            if (textView != null) {
                i10 = R.id.emailBtn;
                Button button = (Button) ViewBindings.a(view, R.id.emailBtn);
                if (button != null) {
                    i10 = R.id.icon;
                    ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.icon);
                    if (imageView2 != null) {
                        i10 = R.id.phoneBtn;
                        Button button2 = (Button) ViewBindings.a(view, R.id.phoneBtn);
                        if (button2 != null) {
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView2 != null) {
                                i10 = R.id.title_bar;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.title_bar);
                                if (relativeLayout != null) {
                                    i10 = R.id.title_verify;
                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.title_verify);
                                    if (textView3 != null) {
                                        return new FragmentVerifyAccountChooseIdentityBinding((LinearLayout) view, imageView, textView, button, imageView2, button2, textView2, relativeLayout, textView3);
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
