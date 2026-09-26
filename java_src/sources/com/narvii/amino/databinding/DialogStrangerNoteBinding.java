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

/* JADX INFO: loaded from: classes9.dex */
public final class DialogStrangerNoteBinding implements ViewBinding {

    @NonNull
    public final TextView join;

    @NonNull
    public final TextView noThanks;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView strangerNoteContent;

    @NonNull
    public static DialogStrangerNoteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogStrangerNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_stranger_note, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogStrangerNoteBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.join = textView;
        this.noThanks = textView2;
        this.strangerNoteContent = textView3;
    }

    @NonNull
    public static DialogStrangerNoteBinding bind(@NonNull View view) {
        int i10 = R.id.join;
        TextView textView = (TextView) ViewBindings.a(view, R.id.join);
        if (textView != null) {
            i10 = R.id.no_thanks;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.no_thanks);
            if (textView2 != null) {
                i10 = R.id.stranger_note_content;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.stranger_note_content);
                if (textView3 != null) {
                    return new DialogStrangerNoteBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
