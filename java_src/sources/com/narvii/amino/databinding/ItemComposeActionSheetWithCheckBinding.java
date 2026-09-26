package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemComposeActionSheetWithCheckBinding implements ViewBinding {

    @NonNull
    public final TintButton levelLock;

    @NonNull
    public final TextView levelNo;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static ItemComposeActionSheetWithCheckBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemComposeActionSheetWithCheckBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_compose_action_sheet_with_check, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemComposeActionSheetWithCheckBinding(@NonNull RelativeLayout relativeLayout, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.levelLock = tintButton;
        this.levelNo = textView;
        this.text = textView2;
    }

    @NonNull
    public static ItemComposeActionSheetWithCheckBinding bind(@NonNull View view) {
        int i10 = R.id.level_lock;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.level_lock);
        if (tintButton != null) {
            i10 = R.id.level_no;
            TextView textView = (TextView) ViewBindings.a(view, R.id.level_no);
            if (textView != null) {
                i10 = R.id.text;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                if (textView2 != null) {
                    return new ItemComposeActionSheetWithCheckBinding((RelativeLayout) view, tintButton, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
