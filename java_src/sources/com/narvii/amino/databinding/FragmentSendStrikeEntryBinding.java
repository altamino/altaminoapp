package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.poweruser.SectionSeekBar;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentSendStrikeEntryBinding implements ViewBinding {

    @NonNull
    public final Button back;

    @NonNull
    public final TintButton chatTemplateClose;

    @NonNull
    public final LinearLayout entryContainer;

    @NonNull
    public final TextView error;

    @NonNull
    public final LinearLayout muteUserContainer;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final RelativeLayout operaStrike;

    @NonNull
    public final RelativeLayout operaWarning;

    @NonNull
    public final LinearLayout operationContainer;

    @NonNull
    public final TextView operationTag;

    @NonNull
    public final TextView recentTime;

    @NonNull
    public final FontAwesomeView retry;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final SectionSeekBar seekBar;

    @NonNull
    public final TextView strikeCount;

    @NonNull
    public final EditText strikeEdit;

    @NonNull
    public final ImageView strikeIndicator;

    @NonNull
    public final TextView strikeTitle;

    @NonNull
    public final NVFlowLayout strikeWarningType;

    @NonNull
    public final Button submit;

    @NonNull
    public final LinearLayout templateErrorContainer;

    @NonNull
    public final ProgressBar templateRequestProgress;

    @NonNull
    public final TextView templateTo;

    @NonNull
    public final TextView warningCount;

    @NonNull
    public final ImageView warningIndicator;

    @NonNull
    public final TextView warningTitle;

    private FragmentSendStrikeEntryBinding(@NonNull FrameLayout frameLayout, @NonNull Button button, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull NicknameView nicknameView, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FontAwesomeView fontAwesomeView, @NonNull SectionSeekBar sectionSeekBar, @NonNull TextView textView4, @NonNull EditText editText, @NonNull ImageView imageView, @NonNull TextView textView5, @NonNull NVFlowLayout nVFlowLayout, @NonNull Button button2, @NonNull LinearLayout linearLayout4, @NonNull ProgressBar progressBar, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull ImageView imageView2, @NonNull TextView textView8) {
        this.rootView = frameLayout;
        this.back = button;
        this.chatTemplateClose = tintButton;
        this.entryContainer = linearLayout;
        this.error = textView;
        this.muteUserContainer = linearLayout2;
        this.nickname = nicknameView;
        this.operaStrike = relativeLayout;
        this.operaWarning = relativeLayout2;
        this.operationContainer = linearLayout3;
        this.operationTag = textView2;
        this.recentTime = textView3;
        this.retry = fontAwesomeView;
        this.seekBar = sectionSeekBar;
        this.strikeCount = textView4;
        this.strikeEdit = editText;
        this.strikeIndicator = imageView;
        this.strikeTitle = textView5;
        this.strikeWarningType = nVFlowLayout;
        this.submit = button2;
        this.templateErrorContainer = linearLayout4;
        this.templateRequestProgress = progressBar;
        this.templateTo = textView6;
        this.warningCount = textView7;
        this.warningIndicator = imageView2;
        this.warningTitle = textView8;
    }

    @NonNull
    public static FragmentSendStrikeEntryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSendStrikeEntryBinding bind(@NonNull View view) {
        int i10 = R.id.back;
        Button button = (Button) ViewBindings.a(view, R.id.back);
        if (button != null) {
            i10 = R.id.chat_template_close;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.chat_template_close);
            if (tintButton != null) {
                i10 = R.id.entry_container;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.entry_container);
                if (linearLayout != null) {
                    i10 = R.id.error;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.error);
                    if (textView != null) {
                        i10 = R.id.mute_user_container;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.mute_user_container);
                        if (linearLayout2 != null) {
                            i10 = R.id.nickname;
                            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                            if (nicknameView != null) {
                                i10 = R.id.opera_strike;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.opera_strike);
                                if (relativeLayout != null) {
                                    i10 = R.id.opera_warning;
                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.a(view, R.id.opera_warning);
                                    if (relativeLayout2 != null) {
                                        i10 = R.id.operation_container;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.operation_container);
                                        if (linearLayout3 != null) {
                                            i10 = R.id.operation_tag;
                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.operation_tag);
                                            if (textView2 != null) {
                                                i10 = R.id.recent_time;
                                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.recent_time);
                                                if (textView3 != null) {
                                                    i10 = R.id.retry;
                                                    FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.retry);
                                                    if (fontAwesomeView != null) {
                                                        i10 = R.id.seek_bar;
                                                        SectionSeekBar sectionSeekBar = (SectionSeekBar) ViewBindings.a(view, R.id.seek_bar);
                                                        if (sectionSeekBar != null) {
                                                            i10 = R.id.strike_count;
                                                            TextView textView4 = (TextView) ViewBindings.a(view, R.id.strike_count);
                                                            if (textView4 != null) {
                                                                i10 = R.id.strike_edit;
                                                                EditText editText = (EditText) ViewBindings.a(view, R.id.strike_edit);
                                                                if (editText != null) {
                                                                    i10 = R.id.strike_indicator;
                                                                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.strike_indicator);
                                                                    if (imageView != null) {
                                                                        i10 = R.id.strike_title;
                                                                        TextView textView5 = (TextView) ViewBindings.a(view, R.id.strike_title);
                                                                        if (textView5 != null) {
                                                                            i10 = R.id.strike_warning_type;
                                                                            NVFlowLayout nVFlowLayout = (NVFlowLayout) ViewBindings.a(view, R.id.strike_warning_type);
                                                                            if (nVFlowLayout != null) {
                                                                                i10 = R.id.submit;
                                                                                Button button2 = (Button) ViewBindings.a(view, R.id.submit);
                                                                                if (button2 != null) {
                                                                                    i10 = R.id.template_error_container;
                                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.template_error_container);
                                                                                    if (linearLayout4 != null) {
                                                                                        i10 = R.id.template_request_progress;
                                                                                        ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.template_request_progress);
                                                                                        if (progressBar != null) {
                                                                                            i10 = R.id.template_to;
                                                                                            TextView textView6 = (TextView) ViewBindings.a(view, R.id.template_to);
                                                                                            if (textView6 != null) {
                                                                                                i10 = R.id.warning_count;
                                                                                                TextView textView7 = (TextView) ViewBindings.a(view, R.id.warning_count);
                                                                                                if (textView7 != null) {
                                                                                                    i10 = R.id.warning_indicator;
                                                                                                    ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.warning_indicator);
                                                                                                    if (imageView2 != null) {
                                                                                                        i10 = R.id.warning_title;
                                                                                                        TextView textView8 = (TextView) ViewBindings.a(view, R.id.warning_title);
                                                                                                        if (textView8 != null) {
                                                                                                            return new FragmentSendStrikeEntryBinding((FrameLayout) view, button, tintButton, linearLayout, textView, linearLayout2, nicknameView, relativeLayout, relativeLayout2, linearLayout3, textView2, textView3, fontAwesomeView, sectionSeekBar, textView4, editText, imageView, textView5, nVFlowLayout, button2, linearLayout4, progressBar, textView6, textView7, imageView2, textView8);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentSendStrikeEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_send_strike_entry, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
