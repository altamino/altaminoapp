package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogOrganizerInviteBinding implements ViewBinding {

    @NonNull
    public final TextView ignore;

    @NonNull
    public final TextView join;

    @NonNull
    public final TextView message;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogOrganizerInviteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogOrganizerInviteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_organizer_invite, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogOrganizerInviteBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.ignore = textView;
        this.join = textView2;
        this.message = textView3;
    }

    @NonNull
    public static DialogOrganizerInviteBinding bind(@NonNull View view) {
        int i10 = R.id.ignore;
        TextView textView = (TextView) ViewBindings.a(view, R.id.ignore);
        if (textView != null) {
            i10 = R.id.join;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.join);
            if (textView2 != null) {
                i10 = R.id.message;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.message);
                if (textView3 != null) {
                    return new DialogOrganizerInviteBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
