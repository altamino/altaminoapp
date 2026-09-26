package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.CommentLiveIndicator;
import com.narvii.widget.PollLiveIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentLiverlayerAnimationTestBinding implements ViewBinding {

    @NonNull
    public final CommentLiveIndicator commentIndicator;

    @NonNull
    public final PollLiveIndicator pollLiveIndicator;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final Button testComment;

    @NonNull
    public final Button testPoll;

    @NonNull
    public static FragmentLiverlayerAnimationTestBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentLiverlayerAnimationTestBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_liverlayer_animation_test, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentLiverlayerAnimationTestBinding(@NonNull LinearLayout linearLayout, @NonNull CommentLiveIndicator commentLiveIndicator, @NonNull PollLiveIndicator pollLiveIndicator, @NonNull Button button, @NonNull Button button2) {
        this.rootView = linearLayout;
        this.commentIndicator = commentLiveIndicator;
        this.pollLiveIndicator = pollLiveIndicator;
        this.testComment = button;
        this.testPoll = button2;
    }

    @NonNull
    public static FragmentLiverlayerAnimationTestBinding bind(@NonNull View view) {
        int i10 = R.id.comment_indicator;
        CommentLiveIndicator commentLiveIndicator = (CommentLiveIndicator) ViewBindings.a(view, R.id.comment_indicator);
        if (commentLiveIndicator != null) {
            i10 = R.id.poll_live_indicator;
            PollLiveIndicator pollLiveIndicator = (PollLiveIndicator) ViewBindings.a(view, R.id.poll_live_indicator);
            if (pollLiveIndicator != null) {
                i10 = R.id.testComment;
                Button button = (Button) ViewBindings.a(view, R.id.testComment);
                if (button != null) {
                    i10 = R.id.testPoll;
                    Button button2 = (Button) ViewBindings.a(view, R.id.testPoll);
                    if (button2 != null) {
                        return new FragmentLiverlayerAnimationTestBinding((LinearLayout) view, commentLiveIndicator, pollLiveIndicator, button, button2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
