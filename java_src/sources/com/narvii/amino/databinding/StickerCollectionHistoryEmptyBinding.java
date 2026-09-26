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
public final class StickerCollectionHistoryEmptyBinding implements ViewBinding {

    @NonNull
    public final TextView checkStore;

    @NonNull
    public final LinearLayout empty;

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    public final TextView emptyText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static StickerCollectionHistoryEmptyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerCollectionHistoryEmptyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_collection_history_empty, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerCollectionHistoryEmptyBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.checkStore = textView;
        this.empty = linearLayout2;
        this.emptyRetry = fontAwesomeView;
        this.emptyText = textView2;
    }

    @NonNull
    public static StickerCollectionHistoryEmptyBinding bind(@NonNull View view) {
        int i10 = R.id.check_store;
        TextView textView = (TextView) ViewBindings.a(view, R.id.check_store);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i10 = R.id.empty_retry;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
            if (fontAwesomeView != null) {
                i10 = R.id.empty_text;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.empty_text);
                if (textView2 != null) {
                    return new StickerCollectionHistoryEmptyBinding(linearLayout, textView, linearLayout, fontAwesomeView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
