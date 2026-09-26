package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeTextView;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentThreadAnnouncementBinding implements ViewBinding {

    @NonNull
    public final NVThemeTextView content;

    @NonNull
    public final ScrollView contentLayout;

    @NonNull
    public final NVThemeLinearLayout editableBottom;

    @NonNull
    public final ImageView emptyImage;

    @NonNull
    public final FlexLayout emptyLayout;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public final CheckBox switchView;

    @NonNull
    public static FragmentThreadAnnouncementBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentThreadAnnouncementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_thread_announcement, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentThreadAnnouncementBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull NVThemeTextView nVThemeTextView, @NonNull ScrollView scrollView, @NonNull NVThemeLinearLayout nVThemeLinearLayout2, @NonNull ImageView imageView, @NonNull FlexLayout flexLayout, @NonNull CheckBox checkBox) {
        this.rootView = nVThemeLinearLayout;
        this.content = nVThemeTextView;
        this.contentLayout = scrollView;
        this.editableBottom = nVThemeLinearLayout2;
        this.emptyImage = imageView;
        this.emptyLayout = flexLayout;
        this.switchView = checkBox;
    }

    @NonNull
    public static FragmentThreadAnnouncementBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.content);
        if (nVThemeTextView != null) {
            i10 = R.id.content_layout;
            ScrollView scrollView = (ScrollView) ViewBindings.a(view, R.id.content_layout);
            if (scrollView != null) {
                i10 = R.id.editable_bottom;
                NVThemeLinearLayout nVThemeLinearLayout = (NVThemeLinearLayout) ViewBindings.a(view, R.id.editable_bottom);
                if (nVThemeLinearLayout != null) {
                    i10 = R.id.empty_image;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.empty_image);
                    if (imageView != null) {
                        i10 = R.id.empty_layout;
                        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.empty_layout);
                        if (flexLayout != null) {
                            i10 = R.id.switch_view;
                            CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.switch_view);
                            if (checkBox != null) {
                                return new FragmentThreadAnnouncementBinding((NVThemeLinearLayout) view, nVThemeTextView, scrollView, nVThemeLinearLayout, imageView, flexLayout, checkBox);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
