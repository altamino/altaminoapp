package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.user.title.UserTitleFlowView;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.MoodView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class UserDialogMainBinding implements ViewBinding {

    @NonNull
    public final TextView aminoId;

    @NonNull
    public final ThumbImageView aminoStaffBadge;

    @NonNull
    public final TextView content;

    @NonNull
    public final LinearLayout contentContainer;

    @NonNull
    public final LinearLayout errorContainer;

    @NonNull
    public final TintButton flag;

    @NonNull
    public final MoodView mood;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final View onlineStatusOval;

    @NonNull
    public final Button onlineUserProfile;

    @NonNull
    public final Button onlineUserStartChat;

    @NonNull
    public final ProgressBar requestProgress;

    @NonNull
    public final FontAwesomeView retry;

    @NonNull
    private final View rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public final UserTitleFlowView userTitleFlow;

    private UserDialogMainBinding(@NonNull View view, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TintButton tintButton, @NonNull MoodView moodView, @NonNull NicknameView nicknameView, @NonNull View view2, @NonNull Button button, @NonNull Button button2, @NonNull ProgressBar progressBar, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView3, @NonNull UserTitleFlowView userTitleFlowView) {
        this.rootView = view;
        this.aminoId = textView;
        this.aminoStaffBadge = thumbImageView;
        this.content = textView2;
        this.contentContainer = linearLayout;
        this.errorContainer = linearLayout2;
        this.flag = tintButton;
        this.mood = moodView;
        this.nickname = nicknameView;
        this.onlineStatusOval = view2;
        this.onlineUserProfile = button;
        this.onlineUserStartChat = button2;
        this.requestProgress = progressBar;
        this.retry = fontAwesomeView;
        this.text = textView3;
        this.userTitleFlow = userTitleFlowView;
    }

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserDialogMainBinding bind(@NonNull View view) {
        int i10 = R.id.amino_id;
        TextView textView = (TextView) ViewBindings.a(view, R.id.amino_id);
        if (textView != null) {
            i10 = R.id.amino_staff_badge;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.amino_staff_badge);
            if (thumbImageView != null) {
                i10 = R.id.content;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.content);
                if (textView2 != null) {
                    i10 = R.id.content_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.content_container);
                    if (linearLayout != null) {
                        i10 = R.id.error_container;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.error_container);
                        if (linearLayout2 != null) {
                            i10 = R.id.flag;
                            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.flag);
                            if (tintButton != null) {
                                i10 = R.id.mood;
                                MoodView moodView = (MoodView) ViewBindings.a(view, R.id.mood);
                                if (moodView != null) {
                                    i10 = R.id.nickname;
                                    NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                                    if (nicknameView != null) {
                                        i10 = R.id.online_status_oval;
                                        View viewA = ViewBindings.a(view, R.id.online_status_oval);
                                        if (viewA != null) {
                                            i10 = R.id.online_user_profile;
                                            Button button = (Button) ViewBindings.a(view, R.id.online_user_profile);
                                            if (button != null) {
                                                i10 = R.id.online_user_start_chat;
                                                Button button2 = (Button) ViewBindings.a(view, R.id.online_user_start_chat);
                                                if (button2 != null) {
                                                    i10 = R.id.request_progress;
                                                    ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.request_progress);
                                                    if (progressBar != null) {
                                                        i10 = R.id.retry;
                                                        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.retry);
                                                        if (fontAwesomeView != null) {
                                                            i10 = R.id.text;
                                                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.text);
                                                            if (textView3 != null) {
                                                                i10 = R.id.user_title_flow;
                                                                UserTitleFlowView userTitleFlowView = (UserTitleFlowView) ViewBindings.a(view, R.id.user_title_flow);
                                                                if (userTitleFlowView != null) {
                                                                    return new UserDialogMainBinding(view, textView, thumbImageView, textView2, linearLayout, linearLayout2, tintButton, moodView, nicknameView, viewA, button, button2, progressBar, fontAwesomeView, textView3, userTitleFlowView);
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
    public static UserDialogMainBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.user_dialog_main, viewGroup);
        return bind(viewGroup);
    }
}
