package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.CodeEditView;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentCodeVerifyBinding implements ViewBinding {

    @NonNull
    public final CodeEditView codeEdit;

    @NonNull
    public final TextView codeInfo;

    @NonNull
    public final TextView codeVerificationError;

    @NonNull
    public final TextView description;

    @NonNull
    public final TextView email;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final Button next;

    @NonNull
    public final TextView resend;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static FragmentCodeVerifyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentCodeVerifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_code_verify, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentCodeVerifyBinding(@NonNull LinearLayout linearLayout, @NonNull CodeEditView codeEditView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ImageView imageView, @NonNull Button button, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView = linearLayout;
        this.codeEdit = codeEditView;
        this.codeInfo = textView;
        this.codeVerificationError = textView2;
        this.description = textView3;
        this.email = textView4;
        this.icon = imageView;
        this.next = button;
        this.resend = textView5;
        this.title = textView6;
    }

    @NonNull
    public static FragmentCodeVerifyBinding bind(@NonNull View view) {
        int i10 = R.id.code_edit;
        CodeEditView codeEditView = (CodeEditView) ViewBindings.a(view, R.id.code_edit);
        if (codeEditView != null) {
            i10 = R.id.code_info;
            TextView textView = (TextView) ViewBindings.a(view, R.id.code_info);
            if (textView != null) {
                i10 = R.id.code_verification_error;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.code_verification_error);
                if (textView2 != null) {
                    i10 = R.id.description;
                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.description);
                    if (textView3 != null) {
                        i10 = R.id.email;
                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.email);
                        if (textView4 != null) {
                            i10 = R.id.icon;
                            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
                            if (imageView != null) {
                                i10 = R.id.next;
                                Button button = (Button) ViewBindings.a(view, R.id.next);
                                if (button != null) {
                                    i10 = R.id.resend;
                                    TextView textView5 = (TextView) ViewBindings.a(view, R.id.resend);
                                    if (textView5 != null) {
                                        i10 = R.id.title;
                                        TextView textView6 = (TextView) ViewBindings.a(view, R.id.title);
                                        if (textView6 != null) {
                                            return new FragmentCodeVerifyBinding((LinearLayout) view, codeEditView, textView, textView2, textView3, textView4, imageView, button, textView5, textView6);
                                        }
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
