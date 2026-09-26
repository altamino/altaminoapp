package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SharedFolderEmptyUploadBinding implements ViewBinding {

    @NonNull
    public final LinearLayout emptyMainLayout;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final FrameLayout uploadLayout;

    @NonNull
    public static SharedFolderEmptyUploadBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SharedFolderEmptyUploadBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.shared_folder_empty_upload, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SharedFolderEmptyUploadBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout) {
        this.rootView = relativeLayout;
        this.emptyMainLayout = linearLayout;
        this.uploadLayout = frameLayout;
    }

    @NonNull
    public static SharedFolderEmptyUploadBinding bind(@NonNull View view) {
        int i10 = R.id.empty_main_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.empty_main_layout);
        if (linearLayout != null) {
            i10 = R.id.upload_layout;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.upload_layout);
            if (frameLayout != null) {
                return new SharedFolderEmptyUploadBinding((RelativeLayout) view, linearLayout, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
