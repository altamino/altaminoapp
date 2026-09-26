package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;
import com.narvii.widget.PushButton;

/* JADX INFO: loaded from: classes.dex */
public final class CheckInBottomBarBinding implements ViewBinding {

    @NonNull
    public final TextView checkInDays;

    @NonNull
    public final PushButton checkinButton;

    @NonNull
    public final ProgressBar checkinProgress;

    @NonNull
    public final TextView checkinText;

    @NonNull
    public final ImageView hasCheckInToday;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ImageView streakLostIcon;

    @NonNull
    public static CheckInBottomBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CheckInBottomBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.check_in_bottom_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CheckInBottomBarBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull PushButton pushButton, @NonNull ProgressBar progressBar, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull NicknameView nicknameView, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.checkInDays = textView;
        this.checkinButton = pushButton;
        this.checkinProgress = progressBar;
        this.checkinText = textView2;
        this.hasCheckInToday = imageView;
        this.nickname = nicknameView;
        this.streakLostIcon = imageView2;
    }

    @NonNull
    public static CheckInBottomBarBinding bind(@NonNull View view) {
        int i10 = R.id.check_in_days;
        TextView textView = (TextView) ViewBindings.a(view, R.id.check_in_days);
        if (textView != null) {
            i10 = R.id.checkin_button;
            PushButton pushButton = (PushButton) ViewBindings.a(view, R.id.checkin_button);
            if (pushButton != null) {
                i10 = R.id.checkin_progress;
                ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.checkin_progress);
                if (progressBar != null) {
                    i10 = R.id.checkin_text;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.checkin_text);
                    if (textView2 != null) {
                        i10 = R.id.has_check_in_today;
                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.has_check_in_today);
                        if (imageView != null) {
                            i10 = R.id.nickname;
                            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                            if (nicknameView != null) {
                                i10 = R.id.streak_lost_icon;
                                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.streak_lost_icon);
                                if (imageView2 != null) {
                                    return new CheckInBottomBarBinding((LinearLayout) view, textView, pushButton, progressBar, textView2, imageView, nicknameView, imageView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
