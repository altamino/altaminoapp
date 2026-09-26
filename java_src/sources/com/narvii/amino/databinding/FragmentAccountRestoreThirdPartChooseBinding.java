package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentAccountRestoreThirdPartChooseBinding implements ViewBinding {

    @NonNull
    public final Button email;

    @NonNull
    public final TextView or;

    @NonNull
    public final Button phone;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentAccountRestoreThirdPartChooseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentAccountRestoreThirdPartChooseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_account_restore_third_part_choose, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentAccountRestoreThirdPartChooseBinding(@NonNull FrameLayout frameLayout, @NonNull Button button, @NonNull TextView textView, @NonNull Button button2) {
        this.rootView = frameLayout;
        this.email = button;
        this.or = textView;
        this.phone = button2;
    }

    @NonNull
    public static FragmentAccountRestoreThirdPartChooseBinding bind(@NonNull View view) {
        int i10 = R.id.email;
        Button button = (Button) ViewBindings.a(view, R.id.email);
        if (button != null) {
            i10 = R.id.or;
            TextView textView = (TextView) ViewBindings.a(view, R.id.or);
            if (textView != null) {
                i10 = R.id.phone;
                Button button2 = (Button) ViewBindings.a(view, R.id.phone);
                if (button2 != null) {
                    return new FragmentAccountRestoreThirdPartChooseBinding((FrameLayout) view, button, textView, button2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
