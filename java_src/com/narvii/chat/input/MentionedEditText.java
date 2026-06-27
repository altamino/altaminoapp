package com.narvii.chat.input;

import android.content.Context;
import android.graphics.Color;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class MentionedEditText extends EditText {
    public static final String DEFAULT_MENTION_PATTERN = "@[\\u4e00-\\u9fa5\\w\\-]+";
    public static final String DEFAULT_METION_TAG = "@";
    public static final String MENTION_BLOCK_END = "\u202c\u202d";
    public static final String MENTION_BLOCK_START = "\u200e\u200f";
    private Runnable mAction;
    private boolean mIsSelected;
    private Range mLastSelectedRange;
    private int mMentionTextColor;
    private OnMentionInputListener mOnMentionInputListener;
    private Map<String, Pattern> mPatternMap;
    private List<Range> mRangeArrayList;
    private boolean mentionByLongClick;
    private boolean mentionEnabled;
    private int mentionStartIndex;

    public interface OnMentionInputListener {
        void onMentionCharacterInput(String str, int i);
    }

    public MentionedEditText(Context context) {
        super(context);
        this.mPatternMap = new HashMap();
        init();
    }

    public MentionedEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPatternMap = new HashMap();
        init();
    }

    public MentionedEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPatternMap = new HashMap();
        init();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return new HackInputConnection(super.onCreateInputConnection(editorInfo), true, this);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        if (this.mAction == null) {
            this.mAction = new Runnable() { // from class: com.narvii.chat.input.MentionedEditText.1
                @Override // java.lang.Runnable
                public void run() {
                    MentionedEditText mentionedEditText = MentionedEditText.this;
                    mentionedEditText.setSelection(mentionedEditText.getText().length());
                }
            };
        }
        post(this.mAction);
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        Range range = this.mLastSelectedRange;
        if (range == null || !range.isEqual(i, i2)) {
            filterInvalidRange();
            Range rangeOfClosestMentionString = getRangeOfClosestMentionString(i, i2);
            if (rangeOfClosestMentionString != null && rangeOfClosestMentionString.to == i2) {
                this.mIsSelected = false;
            }
            Range rangeOfNearbyMentionString = getRangeOfNearbyMentionString(i, i2);
            if (rangeOfNearbyMentionString == null) {
                return;
            }
            if (i == i2) {
                setSelection(Math.min(length(), Math.max(0, rangeOfNearbyMentionString.getAnchorPosition(i))));
                return;
            }
            int i3 = rangeOfNearbyMentionString.to;
            if (i2 < i3) {
                setSelection(i, i3);
            }
            int i4 = rangeOfNearbyMentionString.from;
            if (i > i4) {
                setSelection(i4, i2);
            }
        }
    }

    public void setPattern(String str, String str2) {
        this.mPatternMap.clear();
        addPattern(str, str2);
    }

    public void addPattern(String str, String str2) {
        this.mPatternMap.put(str, Pattern.compile(str2));
    }

    public void setMentionEnabled(boolean z) {
        List<Range> list;
        this.mentionEnabled = z;
        if (z || (list = this.mRangeArrayList) == null) {
            return;
        }
        list.clear();
    }

    public void markLongClickMention() {
        this.mentionByLongClick = true;
    }

    public void setMentionTextColor(int i) {
        this.mMentionTextColor = i;
    }

    public void setOnMentionInputListener(OnMentionInputListener onMentionInputListener) {
        this.mOnMentionInputListener = onMentionInputListener;
    }

    private void init() {
        this.mRangeArrayList = new ArrayList(5);
        setPattern(DEFAULT_METION_TAG, DEFAULT_MENTION_PATTERN);
        this.mMentionTextColor = Color.parseColor("#1F5CF9");
        addTextChangedListener(new MentionTextWatcher());
    }

    public void mentionUser(String str, String str2) {
        mentionUser(str, str2, this.mentionStartIndex, null);
    }

    public void mentionUser(String str, String str2, int i, String str3) {
        if (this.mentionEnabled) {
            Editable text = getText();
            int i2 = i + 1;
            int length = str2.length() + i2;
            if (str3 != null) {
                try {
                    if (str3.length() > 0) {
                        text.delete(i2, str3.length() + i2);
                    }
                } catch (IndexOutOfBoundsException e) {
                    Log.e("AT_MENTION", e.getMessage());
                    return;
                }
            }
            text.insert(i2, str2);
            text.setSpan(new ForegroundColorSpan(this.mMentionTextColor), i, length, 33);
            text.insert(length, " \u200c");
            this.mRangeArrayList.add(new Range(str, str2, i, length + 2));
            Collections.sort(this.mRangeArrayList, new Comparator() { // from class: com.narvii.chat.input.-$$Lambda$MentionedEditText$aq_3cAvzOTua7Suoae-S1EToh5w
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return MentionedEditText.lambda$mentionUser$0((MentionedEditText.Range) obj, (MentionedEditText.Range) obj2);
                }
            });
        }
    }

    static /* synthetic */ int lambda$mentionUser$0(Range range, Range range2) {
        return range.from - range2.from;
    }

    public List<Range> getMentionedRangeList() {
        filterInvalidRange();
        return this.mRangeArrayList;
    }

    public void clear() {
        List<Range> list = this.mRangeArrayList;
        if (list != null) {
            list.clear();
        }
        setText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Range getRangeOfClosestMentionString(int i, int i2) {
        if (this.mRangeArrayList == null) {
            return null;
        }
        filterInvalidRange();
        for (Range range : this.mRangeArrayList) {
            if (range.contains(i, i2)) {
                return range;
            }
        }
        return null;
    }

    private Range getRangeOfNearbyMentionString(int i, int i2) {
        if (this.mRangeArrayList == null) {
            return null;
        }
        filterInvalidRange();
        for (Range range : this.mRangeArrayList) {
            if (range.isWrappedBy(i, i2)) {
                return range;
            }
        }
        return null;
    }

    private void filterInvalidRange() {
        List<Range> list = this.mRangeArrayList;
        if (list == null) {
            return;
        }
        Iterator<Range> it = list.iterator();
        while (it.hasNext()) {
            Range next = it.next();
            if (next.from < 0 || next.to > length()) {
                it.remove();
            }
        }
    }

    private class MentionTextWatcher implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        private MentionTextWatcher() {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (MentionedEditText.this.mentionEnabled) {
                Editable text = MentionedEditText.this.getText();
                if (i >= text.length()) {
                    return;
                }
                int i4 = i + i2;
                int i5 = i3 - i2;
                if (i != i4 && !MentionedEditText.this.mRangeArrayList.isEmpty()) {
                    for (ForegroundColorSpan foregroundColorSpan : (ForegroundColorSpan[]) text.getSpans(i, i4, ForegroundColorSpan.class)) {
                        text.removeSpan(foregroundColorSpan);
                    }
                }
                Iterator it = MentionedEditText.this.mRangeArrayList.iterator();
                while (it.hasNext()) {
                    Range range = (Range) it.next();
                    if (range.isWrapped(i, i4)) {
                        it.remove();
                    } else if (range.from >= i4) {
                        range.setOffset(i5);
                    }
                }
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (MentionedEditText.this.mentionEnabled && i3 == 1 && !TextUtils.isEmpty(charSequence)) {
                char cCharAt = charSequence.toString().charAt(i);
                for (Map.Entry entry : MentionedEditText.this.mPatternMap.entrySet()) {
                    if (((String) entry.getKey()).equals(String.valueOf(cCharAt))) {
                        MentionedEditText.this.mentionStartIndex = i;
                        if (!MentionedEditText.this.mentionByLongClick && MentionedEditText.this.mOnMentionInputListener != null) {
                            MentionedEditText.this.mOnMentionInputListener.onMentionCharacterInput((String) entry.getKey(), i);
                        }
                        MentionedEditText.this.mentionByLongClick = false;
                        return;
                    }
                }
            }
        }
    }

    private class HackInputConnection extends InputConnectionWrapper {
        private EditText editText;
        private boolean keyEventFromDeleteSurroundingText;

        HackInputConnection(InputConnection inputConnection, boolean z, MentionedEditText mentionedEditText) {
            super(inputConnection, z);
            this.keyEventFromDeleteSurroundingText = false;
            this.editText = mentionedEditText;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean sendKeyEvent(KeyEvent keyEvent) {
            if (MentionedEditText.this.mentionEnabled && keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 67) {
                int selectionStart = this.editText.getSelectionStart();
                Range rangeOfClosestMentionString = MentionedEditText.this.getRangeOfClosestMentionString(selectionStart, this.editText.getSelectionEnd());
                if (rangeOfClosestMentionString == null) {
                    MentionedEditText.this.mIsSelected = false;
                    if (!this.keyEventFromDeleteSurroundingText) {
                        super.sendKeyEvent(keyEvent);
                    }
                    this.keyEventFromDeleteSurroundingText = false;
                    return false;
                }
                if (selectionStart == rangeOfClosestMentionString.from) {
                    MentionedEditText.this.mIsSelected = false;
                } else {
                    MentionedEditText.this.mIsSelected = true;
                    MentionedEditText.this.mLastSelectedRange = rangeOfClosestMentionString;
                    setSelection(rangeOfClosestMentionString.to, rangeOfClosestMentionString.from);
                }
                this.keyEventFromDeleteSurroundingText = false;
                super.sendKeyEvent(keyEvent);
                return true;
            }
            return super.sendKeyEvent(keyEvent);
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean deleteSurroundingText(int i, int i2) {
            if (i == 1 && i2 == 0 && MentionedEditText.this.mentionEnabled) {
                this.keyEventFromDeleteSurroundingText = true;
                if (sendKeyEvent(new KeyEvent(0, 67))) {
                    return MentionedEditText.this.getEditableText() != null;
                }
                return super.deleteSurroundingText(i, i2);
            }
            return super.deleteSurroundingText(i, i2);
        }
    }

    public static class Range {
        public int from;
        public String id;
        public String name;
        public int to;

        public Range(String str, String str2, int i, int i2) {
            this.id = str;
            this.name = str2;
            this.from = i;
            this.to = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isWrapped(int i, int i2) {
            return this.from >= i && this.to <= i2;
        }

        boolean isWrappedBy(int i, int i2) {
            return (i > this.from && i < this.to) || (i2 > this.from && i2 < this.to);
        }

        boolean contains(int i, int i2) {
            return this.from <= i && this.to >= i2;
        }

        boolean isEqual(int i, int i2) {
            return (this.from == i && this.to == i2) || (this.from == i2 && this.to == i);
        }

        int getAnchorPosition(int i) {
            int i2 = this.from;
            int i3 = this.to;
            return (i - i2) - (i3 - i) >= 0 ? i3 : i2;
        }

        int getLength() {
            int i = this.from;
            int i2 = this.to;
            if (i < i2) {
                return (i2 - i) + 1;
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOffset(int i) {
            this.from += i;
            this.to += i;
        }
    }
}
