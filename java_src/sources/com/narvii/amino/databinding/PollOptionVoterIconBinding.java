package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class PollOptionVoterIconBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView icon;

    @NonNull
    private final ThumbImageView rootView;

    @NonNull
    public static PollOptionVoterIconBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ThumbImageView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PollOptionVoterIconBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ThumbImageView thumbImageView = (ThumbImageView) view;
        return new PollOptionVoterIconBinding(thumbImageView, thumbImageView);
    }

    @NonNull
    public static PollOptionVoterIconBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.poll_option_voter_icon, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PollOptionVoterIconBinding(@NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2) {
        this.rootView = thumbImageView;
        this.icon = thumbImageView2;
    }
}
