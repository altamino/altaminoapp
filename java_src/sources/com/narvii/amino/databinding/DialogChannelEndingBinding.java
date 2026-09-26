package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class DialogChannelEndingBinding implements ViewBinding {

    @NonNull
    public final TextView channelNoteTitle;

    @NonNull
    public final Button close;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final Button stillHere;

    @NonNull
    public static DialogChannelEndingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogChannelEndingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_channel_ending, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogChannelEndingBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull Button button, @NonNull Button button2) {
        this.rootView = linearLayout;
        this.channelNoteTitle = textView;
        this.close = button;
        this.stillHere = button2;
    }

    @NonNull
    public static DialogChannelEndingBinding bind(@NonNull View view) {
        int i10 = R.id.channel_note_title;
        TextView textView = (TextView) ViewBindings.a(view, R.id.channel_note_title);
        if (textView != null) {
            i10 = R.id.close;
            Button button = (Button) ViewBindings.a(view, R.id.close);
            if (button != null) {
                i10 = R.id.still_here;
                Button button2 = (Button) ViewBindings.a(view, R.id.still_here);
                if (button2 != null) {
                    return new DialogChannelEndingBinding((LinearLayout) view, textView, button, button2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
