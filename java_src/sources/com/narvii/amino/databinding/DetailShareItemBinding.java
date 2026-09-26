package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DetailShareItemBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout shareClipboard;

    @NonNull
    public final LinearLayout shareEmail;

    @NonNull
    public final LinearLayout shareOthers;

    @NonNull
    public final LinearLayout shareSms;

    @NonNull
    public static DetailShareItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailShareItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_share_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailShareItemBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5) {
        this.rootView = linearLayout;
        this.shareClipboard = linearLayout2;
        this.shareEmail = linearLayout3;
        this.shareOthers = linearLayout4;
        this.shareSms = linearLayout5;
    }

    @NonNull
    public static DetailShareItemBinding bind(@NonNull View view) {
        int i10 = R.id.share_clipboard;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.share_clipboard);
        if (linearLayout != null) {
            i10 = R.id.share_email;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.share_email);
            if (linearLayout2 != null) {
                i10 = R.id.share_others;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.share_others);
                if (linearLayout3 != null) {
                    i10 = R.id.share_sms;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.share_sms);
                    if (linearLayout4 != null) {
                        return new DetailShareItemBinding((LinearLayout) view, linearLayout, linearLayout2, linearLayout3, linearLayout4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
