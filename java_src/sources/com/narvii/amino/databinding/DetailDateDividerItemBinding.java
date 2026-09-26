package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.detail.DateDividerItem;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes10.dex */
public final class DetailDateDividerItemBinding implements ViewBinding {

    @NonNull
    public final TextView datetime;

    @NonNull
    private final DateDividerItem rootView;

    @NonNull
    public final FontAwesomeView stub1;

    @NonNull
    public final FontAwesomeView stub2;

    @NonNull
    public static DetailDateDividerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public DateDividerItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailDateDividerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_date_divider_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailDateDividerItemBinding(@NonNull DateDividerItem dateDividerItem, @NonNull TextView textView, @NonNull FontAwesomeView fontAwesomeView, @NonNull FontAwesomeView fontAwesomeView2) {
        this.rootView = dateDividerItem;
        this.datetime = textView;
        this.stub1 = fontAwesomeView;
        this.stub2 = fontAwesomeView2;
    }

    @NonNull
    public static DetailDateDividerItemBinding bind(@NonNull View view) {
        int i10 = R.id.datetime;
        TextView textView = (TextView) ViewBindings.a(view, R.id.datetime);
        if (textView != null) {
            i10 = R.id.stub1;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.stub1);
            if (fontAwesomeView != null) {
                i10 = R.id.stub2;
                FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, R.id.stub2);
                if (fontAwesomeView2 != null) {
                    return new DetailDateDividerItemBinding((DateDividerItem) view, textView, fontAwesomeView, fontAwesomeView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
