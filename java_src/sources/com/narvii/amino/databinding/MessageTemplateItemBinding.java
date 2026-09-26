package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes9.dex */
public final class MessageTemplateItemBinding implements ViewBinding {

    @NonNull
    public final TextView messageContent;

    @NonNull
    public final TextView messageTitle;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView templateType;

    @NonNull
    public final FontAwesomeView templateTypeIcon;

    @NonNull
    public static MessageTemplateItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MessageTemplateItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.message_template_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MessageTemplateItemBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = flexLayout;
        this.messageContent = textView;
        this.messageTitle = textView2;
        this.templateType = textView3;
        this.templateTypeIcon = fontAwesomeView;
    }

    @NonNull
    public static MessageTemplateItemBinding bind(@NonNull View view) {
        int i10 = R.id.message_content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.message_content);
        if (textView != null) {
            i10 = R.id.message_title;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.message_title);
            if (textView2 != null) {
                i10 = R.id.template_type;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.template_type);
                if (textView3 != null) {
                    i10 = R.id.template_type_icon;
                    FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.template_type_icon);
                    if (fontAwesomeView != null) {
                        return new MessageTemplateItemBinding((FlexLayout) view, textView, textView2, textView3, fontAwesomeView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
