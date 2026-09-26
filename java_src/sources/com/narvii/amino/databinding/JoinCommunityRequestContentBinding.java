package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class JoinCommunityRequestContentBinding implements ViewBinding {

    @NonNull
    public final LinearLayout landingContainer;

    @NonNull
    public final EditText landingInviteEdit;

    @NonNull
    public final Button landingRequestToJoin;

    @NonNull
    public final Button landingSubmit;

    @NonNull
    public final TextView landingTitle;

    @NonNull
    public final TextView or;

    @NonNull
    public final LinearLayout requestContainer;

    @NonNull
    public final EditText requestEdit;

    @NonNull
    public final Button requestSubmit;

    @NonNull
    public final TextView requestTextCountLeft;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static JoinCommunityRequestContentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static JoinCommunityRequestContentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.join_community_request_content, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private JoinCommunityRequestContentBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull EditText editText, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull EditText editText2, @NonNull Button button3, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.landingContainer = linearLayout2;
        this.landingInviteEdit = editText;
        this.landingRequestToJoin = button;
        this.landingSubmit = button2;
        this.landingTitle = textView;
        this.or = textView2;
        this.requestContainer = linearLayout3;
        this.requestEdit = editText2;
        this.requestSubmit = button3;
        this.requestTextCountLeft = textView3;
    }

    @NonNull
    public static JoinCommunityRequestContentBinding bind(@NonNull View view) {
        int i10 = R.id.landing_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.landing_container);
        if (linearLayout != null) {
            i10 = R.id.landing_invite_edit;
            EditText editText = (EditText) ViewBindings.a(view, R.id.landing_invite_edit);
            if (editText != null) {
                i10 = R.id.landing_request_to_join;
                Button button = (Button) ViewBindings.a(view, R.id.landing_request_to_join);
                if (button != null) {
                    i10 = R.id.landing_submit;
                    Button button2 = (Button) ViewBindings.a(view, R.id.landing_submit);
                    if (button2 != null) {
                        i10 = R.id.landing_title;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.landing_title);
                        if (textView != null) {
                            i10 = R.id.or;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.or);
                            if (textView2 != null) {
                                i10 = R.id.request_container;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.request_container);
                                if (linearLayout2 != null) {
                                    i10 = R.id.request_edit;
                                    EditText editText2 = (EditText) ViewBindings.a(view, R.id.request_edit);
                                    if (editText2 != null) {
                                        i10 = R.id.request_submit;
                                        Button button3 = (Button) ViewBindings.a(view, R.id.request_submit);
                                        if (button3 != null) {
                                            i10 = R.id.request_text_count_left;
                                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.request_text_count_left);
                                            if (textView3 != null) {
                                                return new JoinCommunityRequestContentBinding((LinearLayout) view, linearLayout, editText, button, button2, textView, textView2, linearLayout2, editText2, button3, textView3);
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
