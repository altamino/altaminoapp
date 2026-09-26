package com.narvii.widget;

import android.content.Context;
import android.text.InputFilter;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class TopicEditFlowView extends TagEditFlowView {
    public static final int MAX_TOPIC_COUNT = 10;
    public static final int MAX_TOPIC_LENGTH = 30;

    public class MaxTextLengthFilter implements InputFilter {
        private int maxLength;

        public MaxTextLengthFilter(int i10) {
            this.maxLength = i10;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
            int length = this.maxLength - (spanned.length() - (i13 - i12));
            int i14 = i11 - i10;
            if (length < i14) {
                Utils.showShortToast(TopicEditFlowView.this.getContext(), TopicEditFlowView.this.getContext().getString(R.string.topic_characters_limit, 30));
            }
            if (length <= 0) {
                return "";
            }
            if (length >= i14) {
                return null;
            }
            return charSequence.subSequence(i10, length + i10);
        }
    }

    @Override // com.narvii.widget.TagEditFlowView
    protected void advancedEditText(EditText editText) {
        editText.setFilters(new MaxTextLengthFilter[]{new MaxTextLengthFilter(30)});
    }

    @Override // com.narvii.widget.TagEditFlowView
    protected int editTextLayoutId() {
        return R.layout.add_story_topic_edit_text;
    }

    @Override // com.narvii.widget.TagEditFlowView
    protected int getEditTextColor(boolean z6) {
        if (z6) {
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
    protected View tagView(TagEditFlowView.Tag tag) {
        TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.story_topic_view_small, (ViewGroup) this, false);
        textView.setText(tag.getTagTitle());
        return textView;
    }
}
