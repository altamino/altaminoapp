package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeRelativeLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.EditTextLink;

/* JADX INFO: loaded from: classes10.dex */
public final class GlobalBioPostLayoutBinding implements ViewBinding {

    @NonNull
    public final EditTextLink content;

    @NonNull
    public final NVThemeRelativeLayout editContainer;

    @NonNull
    public final NVThemeTextView inputHint;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView stub1;

    @NonNull
    public static GlobalBioPostLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GlobalBioPostLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.global_bio_post_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GlobalBioPostLayoutBinding(@NonNull FlexLayout flexLayout, @NonNull EditTextLink editTextLink, @NonNull NVThemeRelativeLayout nVThemeRelativeLayout, @NonNull NVThemeTextView nVThemeTextView, @NonNull TextView textView) {
        this.rootView = flexLayout;
        this.content = editTextLink;
        this.editContainer = nVThemeRelativeLayout;
        this.inputHint = nVThemeTextView;
        this.stub1 = textView;
    }

    @NonNull
    public static GlobalBioPostLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        EditTextLink editTextLink = (EditTextLink) ViewBindings.a(view, R.id.content);
        if (editTextLink != null) {
            i10 = R.id.edit_container;
            NVThemeRelativeLayout nVThemeRelativeLayout = (NVThemeRelativeLayout) ViewBindings.a(view, R.id.edit_container);
            if (nVThemeRelativeLayout != null) {
                i10 = R.id.input_hint;
                NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.input_hint);
                if (nVThemeTextView != null) {
                    i10 = R.id.stub1;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.stub1);
                    if (textView != null) {
                        return new GlobalBioPostLayoutBinding((FlexLayout) view, editTextLink, nVThemeRelativeLayout, nVThemeTextView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
