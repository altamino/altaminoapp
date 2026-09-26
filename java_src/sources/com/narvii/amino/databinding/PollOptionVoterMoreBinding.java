package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes10.dex */
public final class PollOptionVoterMoreBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView more;

    @NonNull
    private final FontAwesomeView rootView;

    @NonNull
    public static PollOptionVoterMoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FontAwesomeView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PollOptionVoterMoreBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FontAwesomeView fontAwesomeView = (FontAwesomeView) view;
        return new PollOptionVoterMoreBinding(fontAwesomeView, fontAwesomeView);
    }

    @NonNull
    public static PollOptionVoterMoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.poll_option_voter_more, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PollOptionVoterMoreBinding(@NonNull FontAwesomeView fontAwesomeView, @NonNull FontAwesomeView fontAwesomeView2) {
        this.rootView = fontAwesomeView;
        this.more = fontAwesomeView2;
    }
}
