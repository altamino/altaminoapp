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
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes11.dex */
public final class CommunityDetailErrorLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView errorMessage;

    @NonNull
    public final FontAwesomeView retry;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static CommunityDetailErrorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommunityDetailErrorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.community_detail_error_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CommunityDetailErrorLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.errorMessage = textView;
        this.retry = fontAwesomeView;
    }

    @NonNull
    public static CommunityDetailErrorLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.error_message;
        TextView textView = (TextView) ViewBindings.a(view, R.id.error_message);
        if (textView != null) {
            i10 = R.id.retry;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.retry);
            if (fontAwesomeView != null) {
                return new CommunityDetailErrorLayoutBinding((LinearLayout) view, textView, fontAwesomeView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
