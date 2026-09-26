package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes.dex */
public final class InsertLinkDlgBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final EditText text;

    @NonNull
    public final TextView url;

    @NonNull
    public static InsertLinkDlgBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InsertLinkDlgBinding bind(@NonNull View view) {
        int i10 = R.id.text;
        EditText editText = (EditText) ViewBindings.a(view, i10);
        if (editText != null) {
            i10 = R.id.url;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                return new InsertLinkDlgBinding((LinearLayout) view, editText, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static InsertLinkDlgBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.insert_link_dlg, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InsertLinkDlgBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.text = editText;
        this.url = textView;
    }
}
