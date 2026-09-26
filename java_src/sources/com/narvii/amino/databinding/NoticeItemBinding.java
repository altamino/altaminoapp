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
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class NoticeItemBinding implements ViewBinding {

    @NonNull
    public final TextView datetime;

    @NonNull
    public final NVImageView icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVThemeTextView text;

    @NonNull
    public static NoticeItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static NoticeItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.notice_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private NoticeItemBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull NVImageView nVImageView, @NonNull NVThemeTextView nVThemeTextView) {
        this.rootView = linearLayout;
        this.datetime = textView;
        this.icon = nVImageView;
        this.text = nVThemeTextView;
    }

    @NonNull
    public static NoticeItemBinding bind(@NonNull View view) {
        int i10 = R.id.datetime;
        TextView textView = (TextView) ViewBindings.a(view, R.id.datetime);
        if (textView != null) {
            i10 = R.id.icon;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.icon);
            if (nVImageView != null) {
                i10 = R.id.text;
                NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.text);
                if (nVThemeTextView != null) {
                    return new NoticeItemBinding((LinearLayout) view, textView, nVImageView, nVThemeTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
