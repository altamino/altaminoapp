package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogRemoveUserBinding implements ViewBinding {

    @NonNull
    public final TextView content;

    @NonNull
    public final TextView no;

    @NonNull
    public final TextView prevJoinHint;

    @NonNull
    public final CheckBox preventJoin;

    @NonNull
    public final LinearLayout preventJoinContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView yes;

    @NonNull
    public static DialogRemoveUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogRemoveUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_remove_user, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogRemoveUserBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull CheckBox checkBox, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.content = textView;
        this.no = textView2;
        this.prevJoinHint = textView3;
        this.preventJoin = checkBox;
        this.preventJoinContainer = linearLayout2;
        this.yes = textView4;
    }

    @NonNull
    public static DialogRemoveUserBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.content);
        if (textView != null) {
            i10 = R.id.no;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.no);
            if (textView2 != null) {
                i10 = R.id.prev_join_hint;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.prev_join_hint);
                if (textView3 != null) {
                    i10 = R.id.prevent_join;
                    CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.prevent_join);
                    if (checkBox != null) {
                        i10 = R.id.prevent_join_container;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.prevent_join_container);
                        if (linearLayout != null) {
                            i10 = R.id.yes;
                            TextView textView4 = (TextView) ViewBindings.a(view, R.id.yes);
                            if (textView4 != null) {
                                return new DialogRemoveUserBinding((LinearLayout) view, textView, textView2, textView3, checkBox, linearLayout, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
