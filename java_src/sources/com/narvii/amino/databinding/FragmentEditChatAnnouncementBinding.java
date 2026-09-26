package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeRelativeLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.EditTextLink;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentEditChatAnnouncementBinding implements ViewBinding {

    @NonNull
    public final EditTextLink content;

    @NonNull
    public final NVThemeRelativeLayout editContainer;

    @NonNull
    public final NVThemeTextView inputHint;

    @NonNull
    public final NVThemeLinearLayout root;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public final NVThemeTextView stub1;

    @NonNull
    public static FragmentEditChatAnnouncementBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentEditChatAnnouncementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_edit_chat_announcement, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentEditChatAnnouncementBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull EditTextLink editTextLink, @NonNull NVThemeRelativeLayout nVThemeRelativeLayout, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVThemeLinearLayout nVThemeLinearLayout2, @NonNull NVThemeTextView nVThemeTextView2) {
        this.rootView = nVThemeLinearLayout;
        this.content = editTextLink;
        this.editContainer = nVThemeRelativeLayout;
        this.inputHint = nVThemeTextView;
        this.root = nVThemeLinearLayout2;
        this.stub1 = nVThemeTextView2;
    }

    @NonNull
    public static FragmentEditChatAnnouncementBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        EditTextLink editTextLink = (EditTextLink) ViewBindings.a(view, R.id.content);
        if (editTextLink != null) {
            i10 = R.id.edit_container;
            NVThemeRelativeLayout nVThemeRelativeLayout = (NVThemeRelativeLayout) ViewBindings.a(view, R.id.edit_container);
            if (nVThemeRelativeLayout != null) {
                i10 = R.id.input_hint;
                NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.input_hint);
                if (nVThemeTextView != null) {
                    NVThemeLinearLayout nVThemeLinearLayout = (NVThemeLinearLayout) view;
                    i10 = R.id.stub1;
                    NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, R.id.stub1);
                    if (nVThemeTextView2 != null) {
                        return new FragmentEditChatAnnouncementBinding(nVThemeLinearLayout, editTextLink, nVThemeRelativeLayout, nVThemeTextView, nVThemeLinearLayout, nVThemeTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
