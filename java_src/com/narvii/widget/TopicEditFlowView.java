package com.narvii.widget;

import android.content.Context;
import android.support.v4.internal.view.SupportMenu;
import android.text.InputFilter;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import com.narvii.widget.TagEditFlowView;

/* loaded from: classes3.dex */
public class TopicEditFlowView extends TagEditFlowView {
    public static final int MAX_TOPIC_COUNT = 10;
    public static final int MAX_TOPIC_LENGTH = 30;

    @Override // com.narvii.widget.TagEditFlowView
    protected int getEditTextColor(boolean z) {
        if (z) {
            return SupportMenu.CATEGORY_MASK;
        }
        return -11908534;
    }

    @Override // com.narvii.widget.TagEditFlowView
    protected int getMaxChars() {
        return 30;
    }

    @Override // com.narvii.widget.TagEditFlowView
    public int getMaxTagCount() {
        return 10;
    }

    public TopicEditFlowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.widget.TagEditFlowView
    protected int editTextLayoutId() {
        return R.layout.add_story_topic_edit_text;
    }

    @Override // com.narvii.widget.TagEditFlowView
    protected void advancedEditText(EditText editText) {
        editText.setFilters(new MaxTextLengthFilter[]{new MaxTextLengthFilter(30)});
    }

    @Override // com.narvii.widget.TagEditFlowView
    protected View tagView(TagEditFlowView.Tag tag) {
        TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.story_topic_view_small, (ViewGroup) this, false);
        textView.setText(tag.getTagTitle());
        return textView;
    }

    public class MaxTextLengthFilter implements InputFilter {
        private int maxLength;

        public MaxTextLengthFilter(int i) {
            this.maxLength = i;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            int length = this.maxLength - (spanned.length() - (i4 - i3));
            int i5 = i2 - i;
            if (length < i5) {
                Utils.showShortToast(TopicEditFlowView.this.getContext(), TopicEditFlowView.this.getContext().getString(R.string.topic_characters_limit, 30));
            }
            if (length <= 0) {
                return "";
            }
            if (length >= i5) {
                return null;
            }
            return charSequence.subSequence(i, length + i);
        }
    }
}
