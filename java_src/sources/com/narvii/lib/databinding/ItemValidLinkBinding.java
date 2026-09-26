package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemValidLinkBinding implements ViewBinding {

    @NonNull
    public final TextView createBy;

    @NonNull
    public final TextView expire;

    @NonNull
    public final TextView link;

    @NonNull
    public final TextView revoke;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemValidLinkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemValidLinkBinding bind(@NonNull View view) {
        int i10 = R.id.create_by;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.expire;
            TextView textView2 = (TextView) ViewBindings.a(view, i10);
            if (textView2 != null) {
                i10 = R.id.link;
                TextView textView3 = (TextView) ViewBindings.a(view, i10);
                if (textView3 != null) {
                    i10 = R.id.revoke;
                    TextView textView4 = (TextView) ViewBindings.a(view, i10);
                    if (textView4 != null) {
                        return new ItemValidLinkBinding((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemValidLinkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_valid_link, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemValidLinkBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.createBy = textView;
        this.expire = textView2;
        this.link = textView3;
        this.revoke = textView4;
    }
}
