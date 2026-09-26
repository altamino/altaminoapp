package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.checkin.CheckInStreakBar;
import com.narvii.checkin.CheckInStreakRepairLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class DialogStreakRepairBinding implements ViewBinding {

    @NonNull
    public final CheckInStreakBar checkInStreakBar;

    @NonNull
    public final CheckInStreakRepairLayout checkInStreakRepairLayout;

    @NonNull
    public final CheckInStreakNormalCellBinding checked;

    @NonNull
    public final LinearLayout choice1;

    @NonNull
    public final CheckBox choice1Check;

    @NonNull
    public final TextView choice1Hint;

    @NonNull
    public final LinearLayout choice2;

    @NonNull
    public final CheckBox choice2Check;

    @NonNull
    public final TextView choice2Hint;

    @NonNull
    public final TintButton close;

    @NonNull
    public final LinearLayout content;

    @NonNull
    public final TextView earnCoinsText;

    @NonNull
    public final TextView fixContainer1;

    @NonNull
    public final LinearLayout fixContainerFixing;

    @NonNull
    public final FrameLayout fixStreak;

    @NonNull
    public final ImageView fixingIndicator;

    @NonNull
    public final TextView learnMore;

    @NonNull
    public final View light;

    @NonNull
    public final LinearLayout ongoingContainer;

    @NonNull
    public final LinearLayout repairDoneContainer;

    @NonNull
    public final FrameLayout root;

    @NonNull
    private final FrameLayout rootView;

    private DialogStreakRepairBinding(@NonNull FrameLayout frameLayout, @NonNull CheckInStreakBar checkInStreakBar, @NonNull CheckInStreakRepairLayout checkInStreakRepairLayout, @NonNull CheckInStreakNormalCellBinding checkInStreakNormalCellBinding, @NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull CheckBox checkBox2, @NonNull TextView textView2, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout4, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull TextView textView5, @NonNull View view, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.checkInStreakBar = checkInStreakBar;
        this.checkInStreakRepairLayout = checkInStreakRepairLayout;
        this.checked = checkInStreakNormalCellBinding;
        this.choice1 = linearLayout;
        this.choice1Check = checkBox;
        this.choice1Hint = textView;
        this.choice2 = linearLayout2;
        this.choice2Check = checkBox2;
        this.choice2Hint = textView2;
        this.close = tintButton;
        this.content = linearLayout3;
        this.earnCoinsText = textView3;
        this.fixContainer1 = textView4;
        this.fixContainerFixing = linearLayout4;
        this.fixStreak = frameLayout2;
        this.fixingIndicator = imageView;
        this.learnMore = textView5;
        this.light = view;
        this.ongoingContainer = linearLayout5;
        this.repairDoneContainer = linearLayout6;
        this.root = frameLayout3;
    }

    @NonNull
    public static DialogStreakRepairBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogStreakRepairBinding bind(@NonNull View view) {
        int i10 = R.id.check_in_streak_bar;
        CheckInStreakBar checkInStreakBar = (CheckInStreakBar) ViewBindings.a(view, R.id.check_in_streak_bar);
        if (checkInStreakBar != null) {
            i10 = R.id.check_in_streak_repair_layout;
            CheckInStreakRepairLayout checkInStreakRepairLayout = (CheckInStreakRepairLayout) ViewBindings.a(view, R.id.check_in_streak_repair_layout);
            if (checkInStreakRepairLayout != null) {
                i10 = R.id.checked;
                View viewA = ViewBindings.a(view, R.id.checked);
                if (viewA != null) {
                    CheckInStreakNormalCellBinding checkInStreakNormalCellBindingBind = CheckInStreakNormalCellBinding.bind(viewA);
                    i10 = R.id.choice_1;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.choice_1);
                    if (linearLayout != null) {
                        i10 = R.id.choice_1_check;
                        CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.choice_1_check);
                        if (checkBox != null) {
                            i10 = R.id.choice_1_hint;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.choice_1_hint);
                            if (textView != null) {
                                i10 = R.id.choice_2;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.choice_2);
                                if (linearLayout2 != null) {
                                    i10 = R.id.choice_2_check;
                                    CheckBox checkBox2 = (CheckBox) ViewBindings.a(view, R.id.choice_2_check);
                                    if (checkBox2 != null) {
                                        i10 = R.id.choice_2_hint;
                                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.choice_2_hint);
                                        if (textView2 != null) {
                                            i10 = R.id.close;
                                            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.close);
                                            if (tintButton != null) {
                                                i10 = R.id.content;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.content);
                                                if (linearLayout3 != null) {
                                                    i10 = R.id.earn_coins_text;
                                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.earn_coins_text);
                                                    if (textView3 != null) {
                                                        i10 = R.id.fix_container_1;
                                                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.fix_container_1);
                                                        if (textView4 != null) {
                                                            i10 = R.id.fix_container_fixing;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.fix_container_fixing);
                                                            if (linearLayout4 != null) {
                                                                i10 = R.id.fix_streak;
                                                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.fix_streak);
                                                                if (frameLayout != null) {
                                                                    i10 = R.id.fixing_indicator;
                                                                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.fixing_indicator);
                                                                    if (imageView != null) {
                                                                        i10 = R.id.learn_more;
                                                                        TextView textView5 = (TextView) ViewBindings.a(view, R.id.learn_more);
                                                                        if (textView5 != null) {
                                                                            i10 = R.id.light;
                                                                            View viewA2 = ViewBindings.a(view, R.id.light);
                                                                            if (viewA2 != null) {
                                                                                i10 = R.id.ongoing_container;
                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, R.id.ongoing_container);
                                                                                if (linearLayout5 != null) {
                                                                                    i10 = R.id.repair_done_container;
                                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, R.id.repair_done_container);
                                                                                    if (linearLayout6 != null) {
                                                                                        FrameLayout frameLayout2 = (FrameLayout) view;
                                                                                        return new DialogStreakRepairBinding(frameLayout2, checkInStreakBar, checkInStreakRepairLayout, checkInStreakNormalCellBindingBind, linearLayout, checkBox, textView, linearLayout2, checkBox2, textView2, tintButton, linearLayout3, textView3, textView4, linearLayout4, frameLayout, imageView, textView5, viewA2, linearLayout5, linearLayout6, frameLayout2);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
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
    public static DialogStreakRepairBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_streak_repair, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
