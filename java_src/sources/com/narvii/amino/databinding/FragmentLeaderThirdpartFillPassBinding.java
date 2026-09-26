package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TextInputLayout;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentLeaderThirdpartFillPassBinding implements ViewBinding {

    @NonNull
    public final TextView forgetPassword;

    @NonNull
    public final Button login;

    @NonNull
    public final TextInputLayout passInputLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FragmentLeaderThirdpartFillPassBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentLeaderThirdpartFillPassBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_leader_thirdpart_fill_pass, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentLeaderThirdpartFillPassBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull Button button, @NonNull TextInputLayout textInputLayout) {
        this.rootView = linearLayout;
        this.forgetPassword = textView;
        this.login = button;
        this.passInputLayout = textInputLayout;
    }

    @NonNull
    public static FragmentLeaderThirdpartFillPassBinding bind(@NonNull View view) {
        int i10 = R.id.forget_password;
        TextView textView = (TextView) ViewBindings.a(view, R.id.forget_password);
        if (textView != null) {
            i10 = R.id.login;
            Button button = (Button) ViewBindings.a(view, R.id.login);
            if (button != null) {
                i10 = R.id.pass_input_layout;
                TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.a(view, R.id.pass_input_layout);
                if (textInputLayout != null) {
                    return new FragmentLeaderThirdpartFillPassBinding((LinearLayout) view, textView, button, textInputLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
