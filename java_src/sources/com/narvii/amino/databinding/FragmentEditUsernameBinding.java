package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentEditUsernameBinding implements ViewBinding {

    @NonNull
    public final ImageView editDelete;

    @NonNull
    public final EditText editUsername;

    @NonNull
    public final NVThemeTextView inputHint;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public static FragmentEditUsernameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentEditUsernameBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_edit_username, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentEditUsernameBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull NVThemeTextView nVThemeTextView) {
        this.rootView = nVThemeLinearLayout;
        this.editDelete = imageView;
        this.editUsername = editText;
        this.inputHint = nVThemeTextView;
    }

    @NonNull
    public static FragmentEditUsernameBinding bind(@NonNull View view) {
        int i10 = R.id.edit_delete;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.edit_delete);
        if (imageView != null) {
            i10 = R.id.edit_username;
            EditText editText = (EditText) ViewBindings.a(view, R.id.edit_username);
            if (editText != null) {
                i10 = R.id.input_hint;
                NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.input_hint);
                if (nVThemeTextView != null) {
                    return new FragmentEditUsernameBinding((NVThemeLinearLayout) view, imageView, editText, nVThemeTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
