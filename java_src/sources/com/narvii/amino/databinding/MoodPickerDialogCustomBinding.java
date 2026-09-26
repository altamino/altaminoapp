package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.lib.databinding.DialogActionSheetDividerBinding;
import com.narvii.widget.EmojionePlusView;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes10.dex */
public final class MoodPickerDialogCustomBinding implements ViewBinding {

    @NonNull
    public final EmojionePlusView icon;

    @NonNull
    public final RelativeLayout moodPick;

    @NonNull
    public final TextView moodText;

    @NonNull
    public final FontAwesomeView offlineCheck;

    @NonNull
    public final FontAwesomeView onlineCheck;

    @NonNull
    public final LinearLayout onlineStatusOffline;

    @NonNull
    public final DialogActionSheetDividerBinding onlineStatusOfflineDivider;

    @NonNull
    public final LinearLayout onlineStatusOnline;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ImageView stub1;

    @NonNull
    public final TextView text;

    @NonNull
    public static MoodPickerDialogCustomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MoodPickerDialogCustomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.mood_picker_dialog_custom, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MoodPickerDialogCustomBinding(@NonNull LinearLayout linearLayout, @NonNull EmojionePlusView emojionePlusView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull FontAwesomeView fontAwesomeView, @NonNull FontAwesomeView fontAwesomeView2, @NonNull LinearLayout linearLayout2, @NonNull DialogActionSheetDividerBinding dialogActionSheetDividerBinding, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.icon = emojionePlusView;
        this.moodPick = relativeLayout;
        this.moodText = textView;
        this.offlineCheck = fontAwesomeView;
        this.onlineCheck = fontAwesomeView2;
        this.onlineStatusOffline = linearLayout2;
        this.onlineStatusOfflineDivider = dialogActionSheetDividerBinding;
        this.onlineStatusOnline = linearLayout3;
        this.stub1 = imageView;
        this.text = textView2;
    }

    @NonNull
    public static MoodPickerDialogCustomBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        EmojionePlusView emojionePlusView = (EmojionePlusView) ViewBindings.a(view, R.id.icon);
        if (emojionePlusView != null) {
            i10 = R.id.mood_pick;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.mood_pick);
            if (relativeLayout != null) {
                i10 = R.id.mood_text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.mood_text);
                if (textView != null) {
                    i10 = R.id.offline_check;
                    FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.offline_check);
                    if (fontAwesomeView != null) {
                        i10 = R.id.online_check;
                        FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, R.id.online_check);
                        if (fontAwesomeView2 != null) {
                            i10 = R.id.online_status_offline;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.online_status_offline);
                            if (linearLayout != null) {
                                i10 = R.id.online_status_offline_divider;
                                View viewA = ViewBindings.a(view, R.id.online_status_offline_divider);
                                if (viewA != null) {
                                    DialogActionSheetDividerBinding dialogActionSheetDividerBindingBind = DialogActionSheetDividerBinding.bind(viewA);
                                    i10 = R.id.online_status_online;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.online_status_online);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.stub1;
                                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.stub1);
                                        if (imageView != null) {
                                            i10 = R.id.text;
                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                                            if (textView2 != null) {
                                                return new MoodPickerDialogCustomBinding((LinearLayout) view, emojionePlusView, relativeLayout, textView, fontAwesomeView, fontAwesomeView2, linearLayout, dialogActionSheetDividerBindingBind, linearLayout2, imageView, textView2);
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
}
