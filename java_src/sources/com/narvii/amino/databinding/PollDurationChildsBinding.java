package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class PollDurationChildsBinding implements ViewBinding {

    @NonNull
    public final TextView pollEndDate;

    @NonNull
    public final TextView pollEndInNDays;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PollDurationChildsBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.poll_duration_childs, viewGroup);
        return bind(viewGroup);
    }

    private PollDurationChildsBinding(@NonNull View view, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = view;
        this.pollEndDate = textView;
        this.pollEndInNDays = textView2;
    }

    @NonNull
    public static PollDurationChildsBinding bind(@NonNull View view) {
        int i10 = R.id.poll_end_date;
        TextView textView = (TextView) ViewBindings.a(view, R.id.poll_end_date);
        if (textView != null) {
            i10 = R.id.poll_end_in_n_days;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.poll_end_in_n_days);
            if (textView2 != null) {
                return new PollDurationChildsBinding(view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
