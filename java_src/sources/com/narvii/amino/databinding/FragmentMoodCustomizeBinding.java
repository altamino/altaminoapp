package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.MoodView;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentMoodCustomizeBinding implements ViewBinding {

    @NonNull
    public final MoodView mood;

    @NonNull
    public final TextView reset;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FrameLayout stickPicker;

    @NonNull
    public static FragmentMoodCustomizeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMoodCustomizeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_mood_customize, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMoodCustomizeBinding(@NonNull LinearLayout linearLayout, @NonNull MoodView moodView, @NonNull TextView textView, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.mood = moodView;
        this.reset = textView;
        this.stickPicker = frameLayout;
    }

    @NonNull
    public static FragmentMoodCustomizeBinding bind(@NonNull View view) {
        int i10 = R.id.mood;
        MoodView moodView = (MoodView) ViewBindings.a(view, R.id.mood);
        if (moodView != null) {
            i10 = R.id.reset;
            TextView textView = (TextView) ViewBindings.a(view, R.id.reset);
            if (textView != null) {
                i10 = R.id.stick_picker;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.stick_picker);
                if (frameLayout != null) {
                    return new FragmentMoodCustomizeBinding((LinearLayout) view, moodView, textView, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
