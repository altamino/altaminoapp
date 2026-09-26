package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeTextView;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentEditAminoIdBinding implements ViewBinding {

    @NonNull
    public final EditText editAminoId;

    @NonNull
    public final ImageView editDelete;

    @NonNull
    public final NVThemeTextView inputHint;

    @NonNull
    public final TextView limitAlert;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public static FragmentEditAminoIdBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentEditAminoIdBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_edit_amino_id, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentEditAminoIdBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull EditText editText, @NonNull ImageView imageView, @NonNull NVThemeTextView nVThemeTextView, @NonNull TextView textView) {
        this.rootView = nVThemeLinearLayout;
        this.editAminoId = editText;
        this.editDelete = imageView;
        this.inputHint = nVThemeTextView;
        this.limitAlert = textView;
    }

    @NonNull
    public static FragmentEditAminoIdBinding bind(@NonNull View view) {
        int i10 = R.id.edit_amino_id;
        EditText editText = (EditText) ViewBindings.a(view, R.id.edit_amino_id);
        if (editText != null) {
            i10 = R.id.edit_delete;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.edit_delete);
            if (imageView != null) {
                i10 = R.id.input_hint;
                NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.input_hint);
                if (nVThemeTextView != null) {
                    i10 = R.id.limit_alert;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.limit_alert);
                    if (textView != null) {
                        return new FragmentEditAminoIdBinding((NVThemeLinearLayout) view, editText, imageView, nVThemeTextView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
