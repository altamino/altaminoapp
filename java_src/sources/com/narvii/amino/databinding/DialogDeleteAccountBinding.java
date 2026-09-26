package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.PopButton;

/* JADX INFO: loaded from: classes7.dex */
public final class DialogDeleteAccountBinding implements ViewBinding {

    @NonNull
    public final PopButton closeBtn;

    @NonNull
    public final ConstraintLayout constraintLayout;

    @NonNull
    public final Button deleteAccountBtn;

    @NonNull
    public final TextView descriptionTV;

    @NonNull
    public final TextView noteTV;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public final TextView titleTV;

    @NonNull
    public static DialogDeleteAccountBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogDeleteAccountBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_delete_account, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogDeleteAccountBinding(@NonNull ConstraintLayout constraintLayout, @NonNull PopButton popButton, @NonNull ConstraintLayout constraintLayout2, @NonNull Button button, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = constraintLayout;
        this.closeBtn = popButton;
        this.constraintLayout = constraintLayout2;
        this.deleteAccountBtn = button;
        this.descriptionTV = textView;
        this.noteTV = textView2;
        this.titleTV = textView3;
    }

    @NonNull
    public static DialogDeleteAccountBinding bind(@NonNull View view) {
        int i10 = R.id.closeBtn;
        PopButton popButton = (PopButton) ViewBindings.a(view, R.id.closeBtn);
        if (popButton != null) {
            i10 = R.id.constraintLayout;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.a(view, R.id.constraintLayout);
            if (constraintLayout != null) {
                i10 = R.id.deleteAccountBtn;
                Button button = (Button) ViewBindings.a(view, R.id.deleteAccountBtn);
                if (button != null) {
                    i10 = R.id.descriptionTV;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.descriptionTV);
                    if (textView != null) {
                        i10 = R.id.noteTV;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.noteTV);
                        if (textView2 != null) {
                            i10 = R.id.titleTV;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.titleTV);
                            if (textView3 != null) {
                                return new DialogDeleteAccountBinding((ConstraintLayout) view, popButton, constraintLayout, button, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
