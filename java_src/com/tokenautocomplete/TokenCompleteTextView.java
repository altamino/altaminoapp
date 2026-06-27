package com.tokenautocomplete;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Layout;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.QwertyKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputMethodManager;
import android.widget.Filter;
import android.widget.MultiAutoCompleteTextView;
import android.widget.TextView;
import com.google.android.exoplayer2.C;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class TokenCompleteTextView<T> extends MultiAutoCompleteTextView implements TextView.OnEditorActionListener {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String TAG = "TokenAutoComplete";
    private boolean allowCollapse;
    private boolean allowDuplicates;
    private TokenDeleteStyle deletionStyle;
    private boolean focusChanging;
    private List<TokenCompleteTextView<T>.TokenImageSpan> hiddenSpans;
    private boolean hintVisible;
    boolean inInvalidate;
    private boolean initialized;
    private Layout lastLayout;
    private TokenListener listener;
    private ArrayList<T> objects;
    private boolean performBestGuess;
    private String prefix;
    private boolean savingState;
    private T selectedObject;
    private boolean shouldFocusNext;
    private TokenCompleteTextView<T>.TokenSpanWatcher spanWatcher;
    private char[] splitChar;
    private TokenCompleteTextView<T>.TokenTextWatcher textWatcher;
    private TokenClickStyle tokenClickStyle;
    private int tokenLimit;
    private MultiAutoCompleteTextView.Tokenizer tokenizer;

    public enum TokenDeleteStyle {
        _Parent,
        Clear,
        PartialCompletion,
        ToString
    }

    public interface TokenListener<T> {
        void onTokenAdded(T t);

        void onTokenRemoved(T t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected ArrayList<T> convertSerializableArrayToObjectArray(ArrayList<Serializable> arrayList) {
        return arrayList;
    }

    protected abstract T defaultObject(String str);

    protected abstract View getViewForObject(T t);

    public enum TokenClickStyle {
        None(false),
        Delete(false),
        Select(true),
        SelectDeselect(true);

        private boolean mIsSelectable;

        TokenClickStyle(boolean z) {
            this.mIsSelectable = false;
            this.mIsSelectable = z;
        }

        public boolean isSelectable() {
            return this.mIsSelectable;
        }
    }

    protected void addListeners() {
        Editable text = getText();
        if (text != null) {
            text.setSpan(this.spanWatcher, 0, text.length(), 18);
            addTextChangedListener(this.textWatcher);
        }
    }

    protected void removeListeners() {
        Editable text = getText();
        if (text != null) {
            for (TokenSpanWatcher tokenSpanWatcher : (TokenSpanWatcher[]) text.getSpans(0, text.length(), TokenSpanWatcher.class)) {
                text.removeSpan(tokenSpanWatcher);
            }
            removeTextChangedListener(this.textWatcher);
        }
    }

    private void init() {
        if (this.initialized) {
            return;
        }
        setTokenizer(new MultiAutoCompleteTextView.CommaTokenizer());
        this.objects = new ArrayList<>();
        getText();
        this.spanWatcher = new TokenSpanWatcher();
        this.textWatcher = new TokenTextWatcher();
        this.hiddenSpans = new ArrayList();
        addListeners();
        setTextIsSelectable(false);
        setLongClickable(false);
        setInputType(getInputType() | 524288 | 65536);
        setHorizontallyScrolling(false);
        setOnEditorActionListener(this);
        setFilters(new InputFilter[]{new InputFilter() { // from class: com.tokenautocomplete.TokenCompleteTextView.1
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                if (TokenCompleteTextView.this.tokenLimit != -1 && TokenCompleteTextView.this.objects.size() == TokenCompleteTextView.this.tokenLimit) {
                    return "";
                }
                if (charSequence.length() != 1 || !TokenCompleteTextView.this.isSplitChar(charSequence.charAt(0))) {
                    if (i3 >= TokenCompleteTextView.this.prefix.length()) {
                        return null;
                    }
                    if (i3 == 0 && i4 == 0) {
                        return null;
                    }
                    return i4 <= TokenCompleteTextView.this.prefix.length() ? TokenCompleteTextView.this.prefix.subSequence(i3, i4) : TokenCompleteTextView.this.prefix.subSequence(i3, TokenCompleteTextView.this.prefix.length());
                }
                TokenCompleteTextView.this.performCompletion();
                return "";
            }
        }});
        setDeletionStyle(TokenDeleteStyle.Clear);
        this.initialized = true;
    }

    public TokenCompleteTextView(Context context) {
        super(context);
        this.splitChar = new char[]{',', ';'};
        this.deletionStyle = TokenDeleteStyle._Parent;
        this.tokenClickStyle = TokenClickStyle.None;
        this.prefix = "";
        this.hintVisible = false;
        this.lastLayout = null;
        this.allowDuplicates = true;
        this.focusChanging = false;
        this.initialized = false;
        this.performBestGuess = true;
        this.savingState = false;
        this.shouldFocusNext = false;
        this.allowCollapse = true;
        this.tokenLimit = -1;
        this.inInvalidate = false;
        init();
    }

    public TokenCompleteTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.splitChar = new char[]{',', ';'};
        this.deletionStyle = TokenDeleteStyle._Parent;
        this.tokenClickStyle = TokenClickStyle.None;
        this.prefix = "";
        this.hintVisible = false;
        this.lastLayout = null;
        this.allowDuplicates = true;
        this.focusChanging = false;
        this.initialized = false;
        this.performBestGuess = true;
        this.savingState = false;
        this.shouldFocusNext = false;
        this.allowCollapse = true;
        this.tokenLimit = -1;
        this.inInvalidate = false;
        init();
    }

    public TokenCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.splitChar = new char[]{',', ';'};
        this.deletionStyle = TokenDeleteStyle._Parent;
        this.tokenClickStyle = TokenClickStyle.None;
        this.prefix = "";
        this.hintVisible = false;
        this.lastLayout = null;
        this.allowDuplicates = true;
        this.focusChanging = false;
        this.initialized = false;
        this.performBestGuess = true;
        this.savingState = false;
        this.shouldFocusNext = false;
        this.allowCollapse = true;
        this.tokenLimit = -1;
        this.inInvalidate = false;
        init();
    }

    @Override // android.widget.MultiAutoCompleteTextView
    protected void performFiltering(CharSequence charSequence, int i, int i2, int i3) {
        if (i < this.prefix.length()) {
            i = this.prefix.length();
        }
        Filter filter = getFilter();
        if (filter != null) {
            filter.filter(charSequence.subSequence(i, i2), this);
        }
    }

    @Override // android.widget.MultiAutoCompleteTextView
    public void setTokenizer(MultiAutoCompleteTextView.Tokenizer tokenizer) {
        super.setTokenizer(tokenizer);
        this.tokenizer = tokenizer;
    }

    public void setDeletionStyle(TokenDeleteStyle tokenDeleteStyle) {
        this.deletionStyle = tokenDeleteStyle;
    }

    public void setTokenClickStyle(TokenClickStyle tokenClickStyle) {
        this.tokenClickStyle = tokenClickStyle;
    }

    public void setTokenListener(TokenListener tokenListener) {
        this.listener = tokenListener;
    }

    public void setPrefix(String str) {
        this.prefix = "";
        Editable text = getText();
        if (text != null) {
            text.insert(0, str);
        }
        this.prefix = str;
        updateHint();
    }

    public List<T> getObjects() {
        return this.objects;
    }

    public void setSplitChar(char[] cArr) {
        if (cArr[0] == ' ') {
            char[] cArr2 = new char[2];
            cArr2[0] = cArr.length > 1 ? cArr[1] : (char) 167;
            cArr2[1] = cArr[0];
            cArr = cArr2;
        }
        this.splitChar = cArr;
        setTokenizer(new CharacterTokenizer(cArr));
    }

    public void setSplitChar(char c) {
        if (c == ' ') {
            setSplitChar(new char[]{167, c});
        } else {
            setSplitChar(new char[]{c});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSplitChar(char c) {
        for (char c2 : this.splitChar) {
            if (c == c2) {
                return true;
            }
        }
        return false;
    }

    public void allowDuplicates(boolean z) {
        this.allowDuplicates = z;
    }

    public void performBestGuess(boolean z) {
        this.performBestGuess = z;
    }

    public void allowCollapse(boolean z) {
        this.allowCollapse = z;
    }

    public void setTokenLimit(int i) {
        this.tokenLimit = i;
    }

    protected String currentCompletionText() {
        if (this.hintVisible) {
            return "";
        }
        Editable text = getText();
        int selectionEnd = getSelectionEnd();
        int iFindTokenStart = this.tokenizer.findTokenStart(text, selectionEnd);
        if (iFindTokenStart < this.prefix.length()) {
            iFindTokenStart = this.prefix.length();
        }
        return TextUtils.substring(text, iFindTokenStart, selectionEnd);
    }

    protected float maxTextWidth() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    @TargetApi(16)
    private void api16Invalidate() {
        if (!this.initialized || this.inInvalidate) {
            return;
        }
        this.inInvalidate = true;
        setShadowLayer(getShadowRadius(), getShadowDx(), getShadowDy(), getShadowColor());
        this.inInvalidate = false;
    }

    @Override // android.view.View
    public void invalidate() {
        if (Build.VERSION.SDK_INT >= 16) {
            api16Invalidate();
        }
        super.invalidate();
    }

    @Override // android.widget.MultiAutoCompleteTextView, android.widget.AutoCompleteTextView
    public boolean enoughToFilter() {
        MultiAutoCompleteTextView.Tokenizer tokenizer;
        Editable text = getText();
        int selectionEnd = getSelectionEnd();
        if (selectionEnd < 0 || (tokenizer = this.tokenizer) == null) {
            return false;
        }
        int iFindTokenStart = tokenizer.findTokenStart(text, selectionEnd);
        if (iFindTokenStart < this.prefix.length()) {
            iFindTokenStart = this.prefix.length();
        }
        return selectionEnd - iFindTokenStart >= Math.max(getThreshold(), 1);
    }

    @Override // android.widget.AutoCompleteTextView
    public void performCompletion() {
        Object objDefaultObject;
        if (getListSelection() == -1 && enoughToFilter()) {
            if (getAdapter().getCount() > 0 && this.performBestGuess) {
                objDefaultObject = getAdapter().getItem(0);
            } else {
                objDefaultObject = defaultObject(currentCompletionText());
            }
            replaceText(convertSelectionToString(objDefaultObject));
            return;
        }
        super.performCompletion();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        TokenInputConnection tokenInputConnection = new TokenInputConnection(super.onCreateInputConnection(editorInfo), true);
        editorInfo.imeOptions &= -1073741825;
        editorInfo.imeOptions |= C.ENCODING_PCM_MU_LAW;
        return tokenInputConnection;
    }

    private void handleDone() {
        performCompletion();
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        boolean zOnKeyUp = super.onKeyUp(i, keyEvent);
        if (this.shouldFocusNext) {
            this.shouldFocusNext = false;
            handleDone();
        }
        return zOnKeyUp;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0022  */
    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKeyDown(int r4, android.view.KeyEvent r5) {
        /*
            r3 = this;
            r0 = 23
            r1 = 1
            r2 = 0
            if (r4 == r0) goto L18
            r0 = 61
            if (r4 == r0) goto L18
            r0 = 66
            if (r4 == r0) goto L18
            r0 = 67
            if (r4 == r0) goto L13
            goto L22
        L13:
            boolean r0 = r3.deleteSelectedObject(r2)
            goto L23
        L18:
            boolean r0 = r5.hasNoModifiers()
            if (r0 == 0) goto L22
            r3.shouldFocusNext = r1
            r0 = 1
            goto L23
        L22:
            r0 = 0
        L23:
            if (r0 != 0) goto L2d
            boolean r4 = super.onKeyDown(r4, r5)
            if (r4 == 0) goto L2c
            goto L2d
        L2c:
            r1 = 0
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tokenautocomplete.TokenCompleteTextView.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean deleteSelectedObject(boolean z) {
        Editable text;
        TokenClickStyle tokenClickStyle = this.tokenClickStyle;
        if (tokenClickStyle == null || !tokenClickStyle.isSelectable() || (text = getText()) == null) {
            return z;
        }
        for (TokenCompleteTextView<T>.TokenImageSpan tokenImageSpan : (TokenImageSpan[]) text.getSpans(0, text.length(), TokenImageSpan.class)) {
            if (tokenImageSpan.view.isSelected()) {
                removeSpan(tokenImageSpan);
                return true;
            }
        }
        return z;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        handleDone();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int offsetForPosition;
        int actionMasked = motionEvent.getActionMasked();
        Editable text = getText();
        boolean zOnTouchEvent = this.tokenClickStyle == TokenClickStyle.None ? super.onTouchEvent(motionEvent) : false;
        if (isFocused() && text != null && this.lastLayout != null && actionMasked == 1 && (offsetForPosition = getOffsetForPosition(motionEvent.getX(), motionEvent.getY())) != -1) {
            TokenImageSpan[] tokenImageSpanArr = (TokenImageSpan[]) text.getSpans(offsetForPosition, offsetForPosition, TokenImageSpan.class);
            if (tokenImageSpanArr.length > 0) {
                tokenImageSpanArr[0].onClick();
                zOnTouchEvent = true;
            } else {
                clearSelections();
            }
        }
        return (zOnTouchEvent || this.tokenClickStyle == TokenClickStyle.None) ? zOnTouchEvent : super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i, int i2) {
        if (this.hintVisible) {
            i = 0;
        }
        TokenClickStyle tokenClickStyle = this.tokenClickStyle;
        if (tokenClickStyle != null && tokenClickStyle.isSelectable() && getText() != null) {
            clearSelections();
        }
        String str = this.prefix;
        if (str != null && (i < str.length() || i < this.prefix.length())) {
            setSelection(this.prefix.length());
            return;
        }
        Editable text = getText();
        if (text != null) {
            for (TokenImageSpan tokenImageSpan : (TokenImageSpan[]) text.getSpans(i, i, TokenImageSpan.class)) {
                int spanEnd = text.getSpanEnd(tokenImageSpan);
                if (i <= spanEnd && text.getSpanStart(tokenImageSpan) < i) {
                    if (spanEnd == text.length()) {
                        setSelection(spanEnd);
                        return;
                    } else {
                        setSelection(spanEnd + 1);
                        return;
                    }
                }
            }
        }
        super.onSelectionChanged(i, i);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.lastLayout = getLayout();
    }

    public void performCollapse(boolean z) {
        Layout layout;
        this.focusChanging = true;
        if (!z) {
            Editable text = getText();
            if (text != null && (layout = this.lastLayout) != null) {
                int lineVisibleEnd = layout.getLineVisibleEnd(0);
                TokenImageSpan[] tokenImageSpanArr = (TokenImageSpan[]) text.getSpans(0, lineVisibleEnd, TokenImageSpan.class);
                int size = this.objects.size() - tokenImageSpanArr.length;
                CountSpan[] countSpanArr = (CountSpan[]) text.getSpans(0, lineVisibleEnd, CountSpan.class);
                if (size > 0 && countSpanArr.length == 0) {
                    int length = lineVisibleEnd + 1;
                    CountSpan countSpan = new CountSpan(size, getContext(), getCurrentTextColor(), (int) getTextSize(), (int) maxTextWidth());
                    text.insert(length, countSpan.text);
                    if (Layout.getDesiredWidth(text, 0, countSpan.text.length() + length, this.lastLayout.getPaint()) > maxTextWidth()) {
                        text.delete(length, countSpan.text.length() + length);
                        if (tokenImageSpanArr.length > 0) {
                            length = text.getSpanStart(tokenImageSpanArr[tokenImageSpanArr.length - 1]);
                            countSpan.setCount(size + 1);
                        } else {
                            length = this.prefix.length();
                        }
                        text.insert(length, countSpan.text);
                    }
                    text.setSpan(countSpan, length, countSpan.text.length() + length, 33);
                    this.hiddenSpans = new ArrayList(Arrays.asList((TokenImageSpan[]) text.getSpans(length + countSpan.text.length(), text.length(), TokenImageSpan.class)));
                    Iterator<TokenCompleteTextView<T>.TokenImageSpan> it = this.hiddenSpans.iterator();
                    while (it.hasNext()) {
                        removeSpan(it.next());
                    }
                }
            }
        } else {
            final Editable text2 = getText();
            if (text2 != null) {
                for (CountSpan countSpan2 : (CountSpan[]) text2.getSpans(0, text2.length(), CountSpan.class)) {
                    text2.delete(text2.getSpanStart(countSpan2), text2.getSpanEnd(countSpan2));
                    text2.removeSpan(countSpan2);
                }
                Iterator<TokenCompleteTextView<T>.TokenImageSpan> it2 = this.hiddenSpans.iterator();
                while (it2.hasNext()) {
                    insertSpan((TokenImageSpan) it2.next());
                }
                this.hiddenSpans.clear();
                if (this.hintVisible) {
                    setSelection(this.prefix.length());
                } else {
                    postDelayed(new Runnable() { // from class: com.tokenautocomplete.TokenCompleteTextView.2
                        @Override // java.lang.Runnable
                        public void run() {
                            TokenCompleteTextView.this.setSelection(text2.length());
                        }
                    }, 10L);
                }
                if (((TokenSpanWatcher[]) getText().getSpans(0, getText().length(), TokenSpanWatcher.class)).length == 0) {
                    text2.setSpan(this.spanWatcher, 0, text2.length(), 18);
                }
            }
        }
        this.focusChanging = false;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z) {
            performCompletion();
        }
        if (this.allowCollapse) {
            performCollapse(z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.AutoCompleteTextView
    protected CharSequence convertSelectionToString(Object obj) {
        this.selectedObject = obj;
        int i = AnonymousClass7.$SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle[this.deletionStyle.ordinal()];
        if (i == 1) {
            return "";
        }
        if (i == 2) {
            return currentCompletionText();
        }
        if (i != 3) {
            return super.convertSelectionToString(obj);
        }
        return obj != 0 ? obj.toString() : "";
    }

    private SpannableStringBuilder buildSpannableForText(CharSequence charSequence) {
        return new SpannableStringBuilder(String.valueOf(this.splitChar[0]) + ((Object) this.tokenizer.terminateToken(charSequence)));
    }

    protected TokenCompleteTextView<T>.TokenImageSpan buildSpanForObject(T t) {
        if (t == null) {
            return null;
        }
        return new TokenImageSpan(getViewForObject(t), t, (int) maxTextWidth());
    }

    @Override // android.widget.MultiAutoCompleteTextView, android.widget.AutoCompleteTextView
    protected void replaceText(CharSequence charSequence) {
        clearComposingText();
        T t = this.selectedObject;
        if (t == null || t.toString().equals("")) {
            return;
        }
        SpannableStringBuilder spannableStringBuilderBuildSpannableForText = buildSpannableForText(charSequence);
        TokenCompleteTextView<T>.TokenImageSpan tokenImageSpanBuildSpanForObject = buildSpanForObject(this.selectedObject);
        Editable text = getText();
        int selectionEnd = getSelectionEnd();
        int iFindTokenStart = this.tokenizer.findTokenStart(text, selectionEnd);
        if (iFindTokenStart < this.prefix.length()) {
            iFindTokenStart = this.prefix.length();
        }
        String strSubstring = TextUtils.substring(text, iFindTokenStart, selectionEnd);
        if (text != null) {
            if (tokenImageSpanBuildSpanForObject == null) {
                text.replace(iFindTokenStart, selectionEnd, "");
                return;
            }
            if (!this.allowDuplicates && this.objects.contains(tokenImageSpanBuildSpanForObject.getToken())) {
                text.replace(iFindTokenStart, selectionEnd, "");
                return;
            }
            QwertyKeyListener.markAsReplaced(text, iFindTokenStart, selectionEnd, strSubstring);
            text.replace(iFindTokenStart, selectionEnd, spannableStringBuilderBuildSpannableForText);
            text.setSpan(tokenImageSpanBuildSpanForObject, iFindTokenStart, (spannableStringBuilderBuildSpannableForText.length() + iFindTokenStart) - 1, 33);
        }
    }

    @Override // android.widget.TextView
    public boolean extractText(ExtractedTextRequest extractedTextRequest, ExtractedText extractedText) {
        try {
            return super.extractText(extractedTextRequest, extractedText);
        } catch (IndexOutOfBoundsException e) {
            Log.d(TAG, "extractText hit IndexOutOfBoundsException. This may be normal.", e);
            return false;
        }
    }

    public void addObject(final T t, final CharSequence charSequence) {
        post(new Runnable() { // from class: com.tokenautocomplete.TokenCompleteTextView.3
            @Override // java.lang.Runnable
            public void run() {
                if (t == null) {
                    return;
                }
                if (TokenCompleteTextView.this.allowDuplicates || !TokenCompleteTextView.this.objects.contains(t)) {
                    if (TokenCompleteTextView.this.tokenLimit == -1 || TokenCompleteTextView.this.objects.size() != TokenCompleteTextView.this.tokenLimit) {
                        TokenCompleteTextView.this.insertSpan(t, charSequence);
                        if (TokenCompleteTextView.this.getText() == null || !TokenCompleteTextView.this.isFocused()) {
                            return;
                        }
                        TokenCompleteTextView tokenCompleteTextView = TokenCompleteTextView.this;
                        tokenCompleteTextView.setSelection(tokenCompleteTextView.getText().length());
                    }
                }
            }
        });
    }

    public void addObject(T t) {
        addObject(t, "");
    }

    public void removeObject(final T t) {
        post(new Runnable() { // from class: com.tokenautocomplete.TokenCompleteTextView.4
            @Override // java.lang.Runnable
            public void run() {
                int i;
                Editable text = TokenCompleteTextView.this.getText();
                if (text == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (TokenImageSpan tokenImageSpan : TokenCompleteTextView.this.hiddenSpans) {
                    if (tokenImageSpan.getToken().equals(t)) {
                        arrayList.add(tokenImageSpan);
                    }
                }
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    TokenImageSpan tokenImageSpan2 = (TokenImageSpan) it.next();
                    TokenCompleteTextView.this.hiddenSpans.remove(tokenImageSpan2);
                    TokenCompleteTextView.this.spanWatcher.onSpanRemoved(text, tokenImageSpan2, 0, 0);
                }
                TokenCompleteTextView.this.updateCountSpan();
                for (TokenImageSpan tokenImageSpan3 : (TokenImageSpan[]) text.getSpans(0, text.length(), TokenImageSpan.class)) {
                    if (tokenImageSpan3.getToken().equals(t)) {
                        TokenCompleteTextView.this.removeSpan(tokenImageSpan3);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCountSpan() {
        Editable text = getText();
        CountSpan[] countSpanArr = (CountSpan[]) text.getSpans(0, text.length(), CountSpan.class);
        int size = this.hiddenSpans.size();
        for (CountSpan countSpan : countSpanArr) {
            if (size == 0) {
                text.delete(text.getSpanStart(countSpan), text.getSpanEnd(countSpan));
                text.removeSpan(countSpan);
            } else {
                countSpan.setCount(this.hiddenSpans.size());
                text.setSpan(countSpan, text.getSpanStart(countSpan), text.getSpanEnd(countSpan), 33);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSpan(TokenCompleteTextView<T>.TokenImageSpan tokenImageSpan) {
        Editable text = getText();
        if (text == null) {
            return;
        }
        if (((TokenSpanWatcher[]) text.getSpans(0, text.length(), TokenSpanWatcher.class)).length == 0) {
            this.spanWatcher.onSpanRemoved(text, tokenImageSpan, text.getSpanStart(tokenImageSpan), text.getSpanEnd(tokenImageSpan));
        }
        text.delete(text.getSpanStart(tokenImageSpan), text.getSpanEnd(tokenImageSpan) + 1);
        if (!this.allowCollapse || isFocused()) {
            return;
        }
        updateCountSpan();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insertSpan(T t, CharSequence charSequence) {
        SpannableStringBuilder spannableStringBuilderBuildSpannableForText = buildSpannableForText(charSequence);
        TokenCompleteTextView<T>.TokenImageSpan tokenImageSpanBuildSpanForObject = buildSpanForObject(t);
        Editable text = getText();
        if (text == null) {
            return;
        }
        if (!this.allowCollapse || isFocused() || this.hiddenSpans.isEmpty()) {
            int length = text.length();
            if (this.hintVisible) {
                length = this.prefix.length();
                text.insert(length, spannableStringBuilderBuildSpannableForText);
            } else {
                String strCurrentCompletionText = currentCompletionText();
                if (strCurrentCompletionText != null && strCurrentCompletionText.length() > 0) {
                    length = TextUtils.indexOf(text, strCurrentCompletionText);
                }
                text.insert(length, spannableStringBuilderBuildSpannableForText);
            }
            text.setSpan(tokenImageSpanBuildSpanForObject, length, (spannableStringBuilderBuildSpannableForText.length() + length) - 1, 33);
            if (!isFocused() && this.allowCollapse) {
                performCollapse(false);
            }
            if (this.objects.contains(t)) {
                return;
            }
            this.spanWatcher.onSpanAdded(text, tokenImageSpanBuildSpanForObject, 0, 0);
            return;
        }
        this.hiddenSpans.add(tokenImageSpanBuildSpanForObject);
        this.spanWatcher.onSpanAdded(text, tokenImageSpanBuildSpanForObject, 0, 0);
        updateCountSpan();
    }

    private void insertSpan(T t) {
        insertSpan(t, t.toString());
    }

    private void insertSpan(TokenCompleteTextView<T>.TokenImageSpan tokenImageSpan) {
        insertSpan((TokenCompleteTextView<T>) tokenImageSpan.getToken());
    }

    public void clear() {
        post(new Runnable() { // from class: com.tokenautocomplete.TokenCompleteTextView.5
            @Override // java.lang.Runnable
            public void run() {
                Editable text = TokenCompleteTextView.this.getText();
                if (text == null) {
                    return;
                }
                for (TokenImageSpan tokenImageSpan : (TokenImageSpan[]) text.getSpans(0, text.length(), TokenImageSpan.class)) {
                    TokenCompleteTextView.this.removeSpan(tokenImageSpan);
                    TokenCompleteTextView.this.spanWatcher.onSpanRemoved(text, tokenImageSpan, text.getSpanStart(tokenImageSpan), text.getSpanEnd(tokenImageSpan));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHint() {
        Editable text = getText();
        CharSequence hint = getHint();
        if (text == null || hint == null || this.prefix.length() <= 0) {
            return;
        }
        HintSpan[] hintSpanArr = (HintSpan[]) text.getSpans(0, text.length(), HintSpan.class);
        HintSpan hintSpan = null;
        int length = this.prefix.length();
        if (hintSpanArr.length > 0) {
            hintSpan = hintSpanArr[0];
            length += text.getSpanEnd(hintSpan) - text.getSpanStart(hintSpan);
        }
        if (text.length() != length) {
            if (hintSpan == null) {
                return;
            }
            int spanStart = text.getSpanStart(hintSpan);
            int spanEnd = text.getSpanEnd(hintSpan);
            text.removeSpan(hintSpan);
            text.replace(spanStart, spanEnd, "");
            this.hintVisible = false;
            return;
        }
        this.hintVisible = true;
        if (hintSpan != null) {
            return;
        }
        Typeface typeface = getTypeface();
        int style = typeface != null ? typeface.getStyle() : 0;
        ColorStateList hintTextColors = getHintTextColors();
        HintSpan hintSpan2 = new HintSpan(null, style, (int) getTextSize(), hintTextColors, hintTextColors);
        text.insert(this.prefix.length(), hint);
        text.setSpan(hintSpan2, this.prefix.length(), this.prefix.length() + getHint().length(), 33);
        setSelection(this.prefix.length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelections() {
        Editable text;
        TokenClickStyle tokenClickStyle = this.tokenClickStyle;
        if (tokenClickStyle == null || !tokenClickStyle.isSelectable() || (text = getText()) == null) {
            return;
        }
        for (TokenImageSpan tokenImageSpan : (TokenImageSpan[]) text.getSpans(0, text.length(), TokenImageSpan.class)) {
            tokenImageSpan.view.setSelected(false);
        }
        invalidate();
    }

    protected class TokenImageSpan extends ViewSpan {
        private T token;

        public TokenImageSpan(View view, T t, int i) {
            super(view, i);
            this.token = t;
        }

        public T getToken() {
            return this.token;
        }

        public void onClick() {
            Editable text = TokenCompleteTextView.this.getText();
            if (text == null) {
                return;
            }
            int i = AnonymousClass7.$SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle[TokenCompleteTextView.this.tokenClickStyle.ordinal()];
            if (i == 1 || i == 2) {
                if (!this.view.isSelected()) {
                    TokenCompleteTextView.this.clearSelections();
                    this.view.setSelected(true);
                    return;
                } else if (TokenCompleteTextView.this.tokenClickStyle == TokenClickStyle.SelectDeselect) {
                    this.view.setSelected(false);
                    TokenCompleteTextView.this.invalidate();
                    return;
                }
            } else if (i != 3) {
                if (TokenCompleteTextView.this.getSelectionStart() != text.getSpanEnd(this) + 1) {
                    TokenCompleteTextView.this.setSelection(text.getSpanEnd(this) + 1);
                    return;
                }
                return;
            }
            TokenCompleteTextView.this.removeSpan(this);
        }
    }

    /* renamed from: com.tokenautocomplete.TokenCompleteTextView$7, reason: invalid class name */
    static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle = new int[TokenClickStyle.values().length];
        static final /* synthetic */ int[] $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle;

        static {
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle[TokenClickStyle.Select.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle[TokenClickStyle.SelectDeselect.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle[TokenClickStyle.Delete.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle[TokenClickStyle.None.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle = new int[TokenDeleteStyle.values().length];
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle[TokenDeleteStyle.Clear.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle[TokenDeleteStyle.PartialCompletion.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle[TokenDeleteStyle.ToString.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle[TokenDeleteStyle._Parent.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private class TokenSpanWatcher implements SpanWatcher {
        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i, int i2, int i3, int i4) {
        }

        private TokenSpanWatcher() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i, int i2) {
            if (!(obj instanceof TokenImageSpan) || TokenCompleteTextView.this.savingState || TokenCompleteTextView.this.focusChanging) {
                return;
            }
            TokenImageSpan tokenImageSpan = (TokenImageSpan) obj;
            TokenCompleteTextView.this.objects.add(tokenImageSpan.getToken());
            if (TokenCompleteTextView.this.listener != null) {
                TokenCompleteTextView.this.listener.onTokenAdded(tokenImageSpan.getToken());
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i, int i2) {
            if (!(obj instanceof TokenImageSpan) || TokenCompleteTextView.this.savingState || TokenCompleteTextView.this.focusChanging) {
                return;
            }
            TokenImageSpan tokenImageSpan = (TokenImageSpan) obj;
            if (TokenCompleteTextView.this.objects.contains(tokenImageSpan.getToken())) {
                TokenCompleteTextView.this.objects.remove(tokenImageSpan.getToken());
            }
            if (TokenCompleteTextView.this.listener != null) {
                TokenCompleteTextView.this.listener.onTokenRemoved(tokenImageSpan.getToken());
            }
        }
    }

    private class TokenTextWatcher implements TextWatcher {
        ArrayList<TokenCompleteTextView<T>.TokenImageSpan> spansToRemove;

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private TokenTextWatcher() {
            this.spansToRemove = new ArrayList<>();
        }

        protected void removeToken(TokenCompleteTextView<T>.TokenImageSpan tokenImageSpan, Editable editable) {
            editable.removeSpan(tokenImageSpan);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (i2 <= 0 || TokenCompleteTextView.this.getText() == null) {
                return;
            }
            Editable text = TokenCompleteTextView.this.getText();
            int i4 = i2 + i;
            if (text.charAt(i) == ' ') {
                i--;
            }
            TokenCompleteTextView<T>.TokenImageSpan[] tokenImageSpanArr = (TokenImageSpan[]) text.getSpans(i, i4, TokenImageSpan.class);
            this.spansToRemove = new ArrayList<>();
            for (TokenCompleteTextView<T>.TokenImageSpan tokenImageSpan : tokenImageSpanArr) {
                if (text.getSpanStart(tokenImageSpan) < i4 && i < text.getSpanEnd(tokenImageSpan)) {
                    this.spansToRemove.add(tokenImageSpan);
                }
            }
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            Iterator it = new ArrayList(this.spansToRemove).iterator();
            while (it.hasNext()) {
                TokenCompleteTextView<T>.TokenImageSpan tokenImageSpan = (TokenImageSpan) it.next();
                int spanStart = editable.getSpanStart(tokenImageSpan);
                int spanEnd = editable.getSpanEnd(tokenImageSpan);
                removeToken(tokenImageSpan, editable);
                int i = spanEnd - 1;
                if (i >= 0 && TokenCompleteTextView.this.isSplitChar(editable.charAt(i))) {
                    editable.delete(i, i + 1);
                }
                if (spanStart >= 0 && TokenCompleteTextView.this.isSplitChar(editable.charAt(spanStart))) {
                    editable.delete(spanStart, spanStart + 1);
                }
            }
            TokenCompleteTextView.this.clearSelections();
            TokenCompleteTextView.this.updateHint();
        }
    }

    protected ArrayList<Serializable> getSerializableObjects() {
        ArrayList<Serializable> arrayList = new ArrayList<>();
        for (T t : getObjects()) {
            if (t instanceof Serializable) {
                arrayList.add((Serializable) t);
            } else {
                Log.e(TAG, "Unable to save '" + t + "'");
            }
        }
        if (arrayList.size() != this.objects.size()) {
            Log.e(TAG, "You should make your objects Serializable or override\ngetSerializableObjects and convertSerializableArrayToObjectArray");
        }
        return arrayList;
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        ArrayList<Serializable> serializableObjects = getSerializableObjects();
        removeListeners();
        this.savingState = true;
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        this.savingState = false;
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.prefix = this.prefix;
        savedState.allowCollapse = this.allowCollapse;
        savedState.allowDuplicates = this.allowDuplicates;
        savedState.performBestGuess = this.performBestGuess;
        savedState.tokenClickStyle = this.tokenClickStyle;
        savedState.tokenDeleteStyle = this.deletionStyle;
        savedState.baseObjects = serializableObjects;
        savedState.splitChar = this.splitChar;
        return savedState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.prefix);
        this.prefix = savedState.prefix;
        updateHint();
        this.allowCollapse = savedState.allowCollapse;
        this.allowDuplicates = savedState.allowDuplicates;
        this.performBestGuess = savedState.performBestGuess;
        this.tokenClickStyle = savedState.tokenClickStyle;
        this.deletionStyle = savedState.tokenDeleteStyle;
        this.splitChar = savedState.splitChar;
        addListeners();
        Iterator<T> it = convertSerializableArrayToObjectArray(savedState.baseObjects).iterator();
        while (it.hasNext()) {
            addObject(it.next());
        }
        if (isFocused() || !this.allowCollapse) {
            return;
        }
        post(new Runnable() { // from class: com.tokenautocomplete.TokenCompleteTextView.6
            @Override // java.lang.Runnable
            public void run() {
                TokenCompleteTextView tokenCompleteTextView = TokenCompleteTextView.this;
                tokenCompleteTextView.performCollapse(tokenCompleteTextView.isFocused());
            }
        });
    }

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.tokenautocomplete.TokenCompleteTextView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean allowCollapse;
        boolean allowDuplicates;
        ArrayList<Serializable> baseObjects;
        boolean performBestGuess;
        String prefix;
        char[] splitChar;
        TokenClickStyle tokenClickStyle;
        TokenDeleteStyle tokenDeleteStyle;

        SavedState(Parcel parcel) {
            super(parcel);
            this.prefix = parcel.readString();
            this.allowCollapse = parcel.readInt() != 0;
            this.allowDuplicates = parcel.readInt() != 0;
            this.performBestGuess = parcel.readInt() != 0;
            this.tokenClickStyle = TokenClickStyle.values()[parcel.readInt()];
            this.tokenDeleteStyle = TokenDeleteStyle.values()[parcel.readInt()];
            this.baseObjects = (ArrayList) parcel.readSerializable();
            this.splitChar = parcel.createCharArray();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.prefix);
            parcel.writeInt(this.allowCollapse ? 1 : 0);
            parcel.writeInt(this.allowDuplicates ? 1 : 0);
            parcel.writeInt(this.performBestGuess ? 1 : 0);
            parcel.writeInt(this.tokenClickStyle.ordinal());
            parcel.writeInt(this.tokenDeleteStyle.ordinal());
            parcel.writeSerializable(this.baseObjects);
            parcel.writeCharArray(this.splitChar);
        }

        public String toString() {
            return ("TokenCompleteTextView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " tokens=" + this.baseObjects) + "}";
        }
    }

    private class TokenInputConnection extends InputConnectionWrapper {
        public TokenInputConnection(InputConnection inputConnection, boolean z) {
            super(inputConnection, z);
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean deleteSurroundingText(int i, int i2) {
            if (TokenCompleteTextView.this.getSelectionStart() <= TokenCompleteTextView.this.prefix.length()) {
                i = 0;
            }
            return TokenCompleteTextView.this.deleteSelectedObject(false) || super.deleteSurroundingText(i, i2);
        }
    }
}
