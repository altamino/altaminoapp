package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class PostEntryPollChoiceLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout postEntryDialog;

    @NonNull
    public final RelativeLayout postNewCollectionPoll;

    @NonNull
    public final RelativeLayout postNewPlainPoll;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static PostEntryPollChoiceLayoutBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.post_new_collection_poll;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.post_new_collection_poll);
        if (relativeLayout != null) {
            i10 = R.id.post_new_plain_poll;
            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.a(view, R.id.post_new_plain_poll);
            if (relativeLayout2 != null) {
                return new PostEntryPollChoiceLayoutBinding(linearLayout, linearLayout, relativeLayout, relativeLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PostEntryPollChoiceLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostEntryPollChoiceLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_entry_poll_choice_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostEntryPollChoiceLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = linearLayout;
        this.postEntryDialog = linearLayout2;
        this.postNewCollectionPoll = relativeLayout;
        this.postNewPlainPoll = relativeLayout2;
    }
}
