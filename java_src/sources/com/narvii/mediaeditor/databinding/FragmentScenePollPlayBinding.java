package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.mediaeditor.R;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentScenePollPlayBinding implements ViewBinding {

    @NonNull
    public final FrameLayout background;

    @NonNull
    public final TextView changeVote;

    @NonNull
    public final FlexLayout flexLayout;

    @NonNull
    public final LinearLayout optionsContainer;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView skipHint;

    @NonNull
    public final AutoSizingTextView title;

    @NonNull
    public final TextView voteCount;

    @NonNull
    public static FragmentScenePollPlayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentScenePollPlayBinding bind(@NonNull View view) {
        int i10 = R.id.background;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
        if (frameLayout != null) {
            i10 = R.id.change_vote;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.flex_layout;
                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, i10);
                if (flexLayout != null) {
                    i10 = R.id.options_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                    if (linearLayout != null) {
                        i10 = R.id.skip_hint;
                        TextView textView2 = (TextView) ViewBindings.a(view, i10);
                        if (textView2 != null) {
                            i10 = R.id.title;
                            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, i10);
                            if (autoSizingTextView != null) {
                                i10 = R.id.vote_count;
                                TextView textView3 = (TextView) ViewBindings.a(view, i10);
                                if (textView3 != null) {
                                    return new FragmentScenePollPlayBinding((RelativeLayout) view, frameLayout, textView, flexLayout, linearLayout, textView2, autoSizingTextView, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentScenePollPlayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_scene_poll_play, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentScenePollPlayBinding(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull FlexLayout flexLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull AutoSizingTextView autoSizingTextView, @NonNull TextView textView3) {
        this.rootView = relativeLayout;
        this.background = frameLayout;
        this.changeVote = textView;
        this.flexLayout = flexLayout;
        this.optionsContainer = linearLayout;
        this.skipHint = textView2;
        this.title = autoSizingTextView;
        this.voteCount = textView3;
    }
}
