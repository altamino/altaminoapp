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

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentUpdateEmailSettingsBinding implements ViewBinding {

    @NonNull
    public final ImageView actionbarBack;

    @NonNull
    public final Button addEmail;

    @NonNull
    public final Button changeEmail;

    @NonNull
    public final TextView desc;

    @NonNull
    public final TextView email;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final RelativeLayout titleBar;

    @NonNull
    public final Button verifyEmail;

    @NonNull
    public static FragmentUpdateEmailSettingsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentUpdateEmailSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_update_email_settings, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentUpdateEmailSettingsBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull RelativeLayout relativeLayout, @NonNull Button button3) {
        this.rootView = linearLayout;
        this.actionbarBack = imageView;
        this.addEmail = button;
        this.changeEmail = button2;
        this.desc = textView;
        this.email = textView2;
        this.title = textView3;
        this.titleBar = relativeLayout;
        this.verifyEmail = button3;
    }

    @NonNull
    public static FragmentUpdateEmailSettingsBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_back;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.actionbar_back);
        if (imageView != null) {
            i10 = R.id.add_email;
            Button button = (Button) ViewBindings.a(view, R.id.add_email);
            if (button != null) {
                i10 = R.id.change_email;
                Button button2 = (Button) ViewBindings.a(view, R.id.change_email);
                if (button2 != null) {
                    i10 = R.id.desc;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.desc);
                    if (textView != null) {
                        i10 = R.id.email;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.email);
                        if (textView2 != null) {
                            i10 = R.id.title;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView3 != null) {
                                i10 = R.id.title_bar;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.title_bar);
                                if (relativeLayout != null) {
                                    i10 = R.id.verify_email;
                                    Button button3 = (Button) ViewBindings.a(view, R.id.verify_email);
                                    if (button3 != null) {
                                        return new FragmentUpdateEmailSettingsBinding((LinearLayout) view, imageView, button, button2, textView, textView2, textView3, relativeLayout, button3);
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
