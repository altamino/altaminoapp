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
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
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

    private class HackInputConnection extends InputConnectionWrapper {
        private EditText editText;
        private boolean keyEventFromDeleteSurroundingText;

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean deleteSurroundingText(int i10, int i11) {
            if (i10 != 1 || i11 != 0 || !MentionedEditText.this.mentionEnabled) {
                return super.deleteSurroundingText(i10, i11);
            }
            this.keyEventFromDeleteSurroundingText = true;
            if (sendKeyEvent(new KeyEvent(0, 67))) {
                return MentionedEditText.this.getEditableText() != null;
            }
            return super.deleteSurroundingText(i10, i11);
        }

        HackInputConnection(InputConnection inputConnection, boolean z6, MentionedEditText mentionedEditText) {
            super(inputConnection, z6);
            this.keyEventFromDeleteSurroundingText = false;
            this.editText = mentionedEditText;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean sendKeyEvent(KeyEvent keyEvent) {
            if (!MentionedEditText.this.mentionEnabled || keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 67) {
                return super.sendKeyEvent(keyEvent);
            }
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
    }

    private class MentionTextWatcher implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        private MentionTextWatcher() {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            if (MentionedEditText.this.mentionEnabled) {
                Editable text = MentionedEditText.this.getText();
                if (i10 >= text.length()) {
                    return;
                }
                int i13 = i10 + i11;
                int i14 = i12 - i11;
                if (i10 != i13 && !MentionedEditText.this.mRangeArrayList.isEmpty()) {
                    for (ForegroundColorSpan foregroundColorSpan : (ForegroundColorSpan[]) text.getSpans(i10, i13, ForegroundColorSpan.class)) {
                        text.removeSpan(foregroundColorSpan);
                    }
                }
                Iterator it = MentionedEditText.this.mRangeArrayList.iterator();
                while (it.hasNext()) {
                    Range range = (Range) it.next();
                    if (range.isWrapped(i10, i13)) {
                        it.remove();
                    } else if (range.from >= i13) {
                        range.setOffset(i14);
                    }
                }
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            if (MentionedEditText.this.mentionEnabled && i12 == 1 && !TextUtils.isEmpty(charSequence)) {
                char cCharAt = charSequence.toString().charAt(i10);
                for (Map.Entry entry : MentionedEditText.this.mPatternMap.entrySet()) {
                    if (((String) entry.getKey()).equals(String.valueOf(cCharAt))) {
                        MentionedEditText.this.mentionStartIndex = i10;
                        if (!MentionedEditText.this.mentionByLongClick && MentionedEditText.this.mOnMentionInputListener != null) {
                            MentionedEditText.this.mOnMentionInputListener.onMentionCharacterInput((String) entry.getKey(), i10);
                        }
                        MentionedEditText.this.mentionByLongClick = false;
                        return;
                    }
                }
            }
        }
    }

    public interface OnMentionInputListener {
        void onMentionCharacterInput(String str, int i10);
    }

    public MentionedEditText(Context context) {
        super(context);
        this.mPatternMap = new HashMap();
        init();
    }

    public void markLongClickMention() {
        this.mentionByLongClick = true;
    }

    public void mentionUser(String str, String str2) {
        mentionUser(str, str2, this.mentionStartIndex, null);
    }

    public void setMentionTextColor(int i10) {
        this.mMentionTextColor = i10;
    }

    public void setOnMentionInputListener(OnMentionInputListener onMentionInputListener) {
        this.mOnMentionInputListener = onMentionInputListener;
    }

    public static class Range {
        public int from;
        public String id;
        public String name;
        public int to;

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isWrapped(int i10, int i11) {
            return this.from >= i10 && this.to <= i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOffset(int i10) {
            this.from += i10;
            this.to += i10;
        }

        boolean contains(int i10, int i11) {
            return this.from <= i10 && this.to >= i11;
        }

        int getAnchorPosition(int i10) {
            int i11 = this.from;
            int i12 = this.to;
            return (i10 - i11) - (i12 - i10) >= 0 ? i12 : i11;
        }

        int getLength() {
            int i10 = this.from;
            int i11 = this.to;
            if (i10 < i11) {
                return (i11 - i10) + 1;
            }
            return 0;
        }

        boolean isEqual(int i10, int i11) {
            int i12 = this.from;
            return (i12 == i10 && this.to == i11) || (i12 == i11 && this.to == i10);
        }

        boolean isWrappedBy(int i10, int i11) {
            int i12 = this.from;
            return (i10 > i12 && i10 < this.to) || (i11 > i12 && i11 < this.to);
        }

        public Range(String str, String str2, int i10, int i11) {
            this.id = str;
            this.name = str2;
            this.from = i10;
            this.to = i11;
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public Range getRangeOfClosestMentionString(int i10, int i11) {
        if (this.mRangeArrayList == null) {
            return null;
        }
        filterInvalidRange();
        for (Range range : this.mRangeArrayList) {
            if (range.contains(i10, i11)) {
                return range;
            }
        }
        return null;
    }

    private Range getRangeOfNearbyMentionString(int i10, int i11) {
        if (this.mRangeArrayList == null) {
            return null;
        }
        filterInvalidRange();
        for (Range range : this.mRangeArrayList) {
            if (range.isWrappedBy(i10, i11)) {
                return range;
            }
        }
        return null;
    }

    private void init() {
        this.mRangeArrayList = new ArrayList(5);
        setPattern(DEFAULT_METION_TAG, DEFAULT_MENTION_PATTERN);
        this.mMentionTextColor = Color.parseColor("#1F5CF9");
        addTextChangedListener(new MentionTextWatcher());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$mentionUser$0(Range range, Range range2) {
        return range.from - range2.from;
    }

    public void addPattern(String str, String str2) {
        this.mPatternMap.put(str, Pattern.compile(str2));
    }

    public void clear() {
        List<Range> list = this.mRangeArrayList;
        if (list != null) {
            list.clear();
        }
        setText("");
    }

    public void mentionUser(String str, String str2, int i10, String str3) {
        if (this.mentionEnabled) {
            Editable text = getText();
            int i11 = i10 + 1;
            int length = str2.length() + i11;
            if (str3 != null) {
                try {
                    if (str3.length() > 0) {
                        text.delete(i11, str3.length() + i11);
                    }
                } catch (IndexOutOfBoundsException e) {
                    Log.e("AT_MENTION", e.getMessage());
                    return;
                }
            }
            text.insert(i11, str2);
            text.setSpan(new ForegroundColorSpan(this.mMentionTextColor), i10, length, 33);
            text.insert(length, " \u200c");
            this.mRangeArrayList.add(new Range(str, str2, i10, length + 2));
            Collections.sort(this.mRangeArrayList, new Comparator() { // from class: com.narvii.chat.input.k
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return MentionedEditText.lambda$mentionUser$0((MentionedEditText.Range) obj, (MentionedEditText.Range) obj2);
                }
            });
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return new HackInputConnection(super.onCreateInputConnection(editorInfo), true, this);
    }

    public void setMentionEnabled(boolean z6) {
        List<Range> list;
        this.mentionEnabled = z6;
        if (z6 || (list = this.mRangeArrayList) == null) {
            return;
        }
        list.clear();
    }

    public void setPattern(String str, String str2) {
        this.mPatternMap.clear();
        addPattern(str, str2);
    }

    @Nullable
    public List<Range> getMentionedRangeList() {
        filterInvalidRange();
        return this.mRangeArrayList;
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i10, int i11) {
        super.onSelectionChanged(i10, i11);
        Range range = this.mLastSelectedRange;
        if (range != null && range.isEqual(i10, i11)) {
            return;
        }
        filterInvalidRange();
        Range rangeOfClosestMentionString = getRangeOfClosestMentionString(i10, i11);
        if (rangeOfClosestMentionString != null && rangeOfClosestMentionString.to == i11) {
            this.mIsSelected = false;
        }
        Range rangeOfNearbyMentionString = getRangeOfNearbyMentionString(i10, i11);
        if (rangeOfNearbyMentionString == null) {
            return;
        }
        if (i10 == i11) {
            setSelection(Math.min(length(), Math.max(0, rangeOfNearbyMentionString.getAnchorPosition(i10))));
            return;
        }
        int i12 = rangeOfNearbyMentionString.to;
        if (i11 < i12) {
            setSelection(i10, i12);
        }
        int i13 = rangeOfNearbyMentionString.from;
        if (i10 > i13) {
            setSelection(i13, i11);
        }
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

    public MentionedEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPatternMap = new HashMap();
        init();
    }

    public MentionedEditText(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mPatternMap = new HashMap();
        init();
    }
}
