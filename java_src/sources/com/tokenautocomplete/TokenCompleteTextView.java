package com.tokenautocomplete;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.Typeface;
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
import androidx.annotation.NonNull;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class TokenCompleteTextView<T> extends MultiAutoCompleteTextView implements TextView.OnEditorActionListener {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String TAG = "TokenAutoComplete";
    private boolean allowCollapse;
    private boolean allowDuplicates;
    private i deletionStyle;
    private boolean focusChanging;
    private List<TokenCompleteTextView<T>.j> hiddenSpans;
    private boolean hintVisible;
    boolean inInvalidate;
    private boolean initialized;
    private Layout lastLayout;
    private l listener;
    private ArrayList<T> objects;
    private boolean performBestGuess;
    private String prefix;
    private boolean savingState;
    private T selectedObject;
    private boolean shouldFocusNext;
    private TokenCompleteTextView<T>.m spanWatcher;
    private char[] splitChar;
    private TokenCompleteTextView<T>.n textWatcher;
    private h tokenClickStyle;
    private int tokenLimit;
    private MultiAutoCompleteTextView.Tokenizer tokenizer;

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean allowCollapse;
        boolean allowDuplicates;
        ArrayList<Serializable> baseObjects;
        boolean performBestGuess;
        String prefix;
        char[] splitChar;
        h tokenClickStyle;
        i tokenDeleteStyle;

        class a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }

            a() {
            }
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.prefix = parcel.readString();
            this.allowCollapse = parcel.readInt() != 0;
            this.allowDuplicates = parcel.readInt() != 0;
            this.performBestGuess = parcel.readInt() != 0;
            this.tokenClickStyle = h.values()[parcel.readInt()];
            this.tokenDeleteStyle = i.values()[parcel.readInt()];
            this.baseObjects = (ArrayList) parcel.readSerializable();
            this.splitChar = parcel.createCharArray();
        }

        public String toString() {
            return ("TokenCompleteTextView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " tokens=" + this.baseObjects) + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.prefix);
            parcel.writeInt(this.allowCollapse ? 1 : 0);
            parcel.writeInt(this.allowDuplicates ? 1 : 0);
            parcel.writeInt(this.performBestGuess ? 1 : 0);
            parcel.writeInt(this.tokenClickStyle.ordinal());
            parcel.writeInt(this.tokenDeleteStyle.ordinal());
            parcel.writeSerializable(this.baseObjects);
            parcel.writeCharArray(this.splitChar);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    class a implements InputFilter {
        a() {
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
            if (TokenCompleteTextView.this.tokenLimit != -1 && TokenCompleteTextView.this.objects.size() == TokenCompleteTextView.this.tokenLimit) {
                return "";
            }
            if (charSequence.length() == 1 && TokenCompleteTextView.this.isSplitChar(charSequence.charAt(0))) {
                TokenCompleteTextView.this.performCompletion();
                return "";
            }
            if (i12 >= TokenCompleteTextView.this.prefix.length()) {
                return null;
            }
            if (i12 == 0 && i13 == 0) {
                return null;
            }
            return i13 <= TokenCompleteTextView.this.prefix.length() ? TokenCompleteTextView.this.prefix.subSequence(i12, i13) : TokenCompleteTextView.this.prefix.subSequence(i12, TokenCompleteTextView.this.prefix.length());
        }
    }

    class b implements Runnable {
        final /* synthetic */ Editable val$text;

        b(Editable editable) {
            this.val$text = editable;
        }

        @Override // java.lang.Runnable
        public void run() {
            TokenCompleteTextView.this.setSelection(this.val$text.length());
        }
    }

    class c implements Runnable {
        final /* synthetic */ Object val$object;
        final /* synthetic */ CharSequence val$sourceText;

        c(Object obj, CharSequence charSequence) {
            this.val$object = obj;
            this.val$sourceText = charSequence;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.val$object == null) {
                return;
            }
            if (TokenCompleteTextView.this.allowDuplicates || !TokenCompleteTextView.this.objects.contains(this.val$object)) {
                if (TokenCompleteTextView.this.tokenLimit == -1 || TokenCompleteTextView.this.objects.size() != TokenCompleteTextView.this.tokenLimit) {
                    TokenCompleteTextView.this.insertSpan(this.val$object, this.val$sourceText);
                    if (TokenCompleteTextView.this.getText() == null || !TokenCompleteTextView.this.isFocused()) {
                        return;
                    }
                    TokenCompleteTextView tokenCompleteTextView = TokenCompleteTextView.this;
                    tokenCompleteTextView.setSelection(tokenCompleteTextView.getText().length());
                }
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ Object val$object;

        d(Object obj) {
            this.val$object = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10;
            Editable text = TokenCompleteTextView.this.getText();
            if (text == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (j jVar : TokenCompleteTextView.this.hiddenSpans) {
                if (jVar.b().equals(this.val$object)) {
                    arrayList.add(jVar);
                }
            }
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                j jVar2 = (j) it.next();
                TokenCompleteTextView.this.hiddenSpans.remove(jVar2);
                TokenCompleteTextView.this.spanWatcher.onSpanRemoved(text, jVar2, 0, 0);
            }
            TokenCompleteTextView.this.updateCountSpan();
            for (j jVar3 : (j[]) text.getSpans(0, text.length(), j.class)) {
                if (jVar3.b().equals(this.val$object)) {
                    TokenCompleteTextView.this.removeSpan(jVar3);
                }
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Spannable text = TokenCompleteTextView.this.getText();
            if (text == null) {
                return;
            }
            for (j jVar : (j[]) text.getSpans(0, text.length(), j.class)) {
                TokenCompleteTextView.this.removeSpan(jVar);
                TokenCompleteTextView.this.spanWatcher.onSpanRemoved(text, jVar, text.getSpanStart(jVar), text.getSpanEnd(jVar));
            }
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TokenCompleteTextView tokenCompleteTextView = TokenCompleteTextView.this;
            tokenCompleteTextView.performCollapse(tokenCompleteTextView.isFocused());
        }
    }

    public enum i {
        _Parent,
        Clear,
        PartialCompletion,
        ToString
    }

    protected class j extends com.tokenautocomplete.e {
        private T token;

        public T b() {
            return this.token;
        }

        public j(View view, T t5, int i10) {
            super(view, i10);
            this.token = t5;
        }

        public void c() {
            Editable text = TokenCompleteTextView.this.getText();
            if (text == null) {
                return;
            }
            int i10 = g.$SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle[TokenCompleteTextView.this.tokenClickStyle.ordinal()];
            if (i10 == 1 || i10 == 2) {
                if (!this.view.isSelected()) {
                    TokenCompleteTextView.this.clearSelections();
                    this.view.setSelected(true);
                    return;
                } else if (TokenCompleteTextView.this.tokenClickStyle == h.SelectDeselect) {
                    this.view.setSelected(false);
                    TokenCompleteTextView.this.invalidate();
                    return;
                }
            } else if (i10 != 3) {
                if (TokenCompleteTextView.this.getSelectionStart() != text.getSpanEnd(this) + 1) {
                    TokenCompleteTextView.this.setSelection(text.getSpanEnd(this) + 1);
                    return;
                }
                return;
            }
            TokenCompleteTextView.this.removeSpan(this);
        }
    }

    private class k extends InputConnectionWrapper {
        public k(InputConnection inputConnection, boolean z6) {
            super(inputConnection, z6);
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean deleteSurroundingText(int i10, int i11) {
            if (TokenCompleteTextView.this.getSelectionStart() <= TokenCompleteTextView.this.prefix.length()) {
                i10 = 0;
            }
            return TokenCompleteTextView.this.deleteSelectedObject(false) || super.deleteSurroundingText(i10, i11);
        }
    }

    public interface l<T> {
    }

    private class m implements SpanWatcher {
        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i10, int i11, int i12, int i13) {
        }

        private m() {
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i10, int i11) {
            if (!(obj instanceof j) || TokenCompleteTextView.this.savingState || TokenCompleteTextView.this.focusChanging) {
                return;
            }
            TokenCompleteTextView.this.objects.add(((j) obj).b());
            TokenCompleteTextView.d(TokenCompleteTextView.this);
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i10, int i11) {
            if (!(obj instanceof j) || TokenCompleteTextView.this.savingState || TokenCompleteTextView.this.focusChanging) {
                return;
            }
            j jVar = (j) obj;
            if (TokenCompleteTextView.this.objects.contains(jVar.b())) {
                TokenCompleteTextView.this.objects.remove(jVar.b());
            }
            TokenCompleteTextView.d(TokenCompleteTextView.this);
        }
    }

    private class n implements TextWatcher {
        ArrayList<TokenCompleteTextView<T>.j> spansToRemove;

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        private n() {
            this.spansToRemove = new ArrayList<>();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            for (TokenCompleteTextView<T>.j jVar : new ArrayList(this.spansToRemove)) {
                int spanStart = editable.getSpanStart(jVar);
                int spanEnd = editable.getSpanEnd(jVar);
                a(jVar, editable);
                int i10 = spanEnd - 1;
                if (i10 >= 0 && TokenCompleteTextView.this.isSplitChar(editable.charAt(i10))) {
                    editable.delete(i10, spanEnd);
                }
                if (spanStart >= 0 && TokenCompleteTextView.this.isSplitChar(editable.charAt(spanStart))) {
                    editable.delete(spanStart, spanStart + 1);
                }
            }
            TokenCompleteTextView.this.clearSelections();
            TokenCompleteTextView.this.updateHint();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            if (i11 <= 0 || TokenCompleteTextView.this.getText() == null) {
                return;
            }
            Editable text = TokenCompleteTextView.this.getText();
            int i13 = i11 + i10;
            if (text.charAt(i10) == ' ') {
                i10--;
            }
            TokenCompleteTextView<T>.j[] jVarArr = (j[]) text.getSpans(i10, i13, j.class);
            this.spansToRemove = new ArrayList<>();
            for (TokenCompleteTextView<T>.j jVar : jVarArr) {
                if (text.getSpanStart(jVar) < i13 && i10 < text.getSpanEnd(jVar)) {
                    this.spansToRemove.add(jVar);
                }
            }
        }

        protected void a(TokenCompleteTextView<T>.j jVar, Editable editable) {
            editable.removeSpan(jVar);
        }
    }

    public TokenCompleteTextView(Context context) {
        super(context);
        this.splitChar = new char[]{kotlinx.serialization.json.internal.b.COMMA, ';'};
        this.deletionStyle = i._Parent;
        this.tokenClickStyle = h.None;
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

    static /* bridge */ /* synthetic */ l d(TokenCompleteTextView tokenCompleteTextView) {
        tokenCompleteTextView.getClass();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insertSpan(T t5, CharSequence charSequence) {
        SpannableStringBuilder spannableStringBuilderBuildSpannableForText = buildSpannableForText(charSequence);
        TokenCompleteTextView<T>.j jVarBuildSpanForObject = buildSpanForObject(t5);
        Editable text = getText();
        if (text == null) {
            return;
        }
        if (this.allowCollapse && !isFocused() && !this.hiddenSpans.isEmpty()) {
            this.hiddenSpans.add(jVarBuildSpanForObject);
            this.spanWatcher.onSpanAdded(text, jVarBuildSpanForObject, 0, 0);
            updateCountSpan();
            return;
        }
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
        text.setSpan(jVarBuildSpanForObject, length, (spannableStringBuilderBuildSpannableForText.length() + length) - 1, 33);
        if (!isFocused() && this.allowCollapse) {
            performCollapse(false);
        }
        if (this.objects.contains(t5)) {
            return;
        }
        this.spanWatcher.onSpanAdded(text, jVarBuildSpanForObject, 0, 0);
    }

    public void addObject(T t5, CharSequence charSequence) {
        post(new c(t5, charSequence));
    }

    public void allowCollapse(boolean z6) {
        this.allowCollapse = z6;
    }

    public void allowDuplicates(boolean z6) {
        this.allowDuplicates = z6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected ArrayList<T> convertSerializableArrayToObjectArray(ArrayList<Serializable> arrayList) {
        return arrayList;
    }

    protected abstract T defaultObject(String str);

    public List<T> getObjects() {
        return this.objects;
    }

    protected abstract View getViewForObject(T t5);

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6) {
            return false;
        }
        handleDone();
        return true;
    }

    public void performBestGuess(boolean z6) {
        this.performBestGuess = z6;
    }

    public void performCollapse(boolean z6) {
        Layout layout;
        this.focusChanging = true;
        if (z6) {
            Editable text = getText();
            if (text != null) {
                for (com.tokenautocomplete.b bVar : (com.tokenautocomplete.b[]) text.getSpans(0, text.length(), com.tokenautocomplete.b.class)) {
                    text.delete(text.getSpanStart(bVar), text.getSpanEnd(bVar));
                    text.removeSpan(bVar);
                }
                Iterator<TokenCompleteTextView<T>.j> it = this.hiddenSpans.iterator();
                while (it.hasNext()) {
                    insertSpan((j) it.next());
                }
                this.hiddenSpans.clear();
                if (this.hintVisible) {
                    setSelection(this.prefix.length());
                } else {
                    postDelayed(new b(text), 10L);
                }
                if (((m[]) getText().getSpans(0, getText().length(), m.class)).length == 0) {
                    text.setSpan(this.spanWatcher, 0, text.length(), 18);
                }
            }
        } else {
            Editable text2 = getText();
            if (text2 != null && (layout = this.lastLayout) != null) {
                int lineVisibleEnd = layout.getLineVisibleEnd(0);
                j[] jVarArr = (j[]) text2.getSpans(0, lineVisibleEnd, j.class);
                int size = this.objects.size() - jVarArr.length;
                com.tokenautocomplete.b[] bVarArr = (com.tokenautocomplete.b[]) text2.getSpans(0, lineVisibleEnd, com.tokenautocomplete.b.class);
                if (size > 0 && bVarArr.length == 0) {
                    int length = lineVisibleEnd + 1;
                    com.tokenautocomplete.b bVar2 = new com.tokenautocomplete.b(size, getContext(), getCurrentTextColor(), (int) getTextSize(), (int) maxTextWidth());
                    text2.insert(length, bVar2.text);
                    if (Layout.getDesiredWidth(text2, 0, bVar2.text.length() + length, this.lastLayout.getPaint()) > maxTextWidth()) {
                        text2.delete(length, bVar2.text.length() + length);
                        if (jVarArr.length > 0) {
                            length = text2.getSpanStart(jVarArr[jVarArr.length - 1]);
                            bVar2.b(size + 1);
                        } else {
                            length = this.prefix.length();
                        }
                        text2.insert(length, bVar2.text);
                    }
                    text2.setSpan(bVar2, length, bVar2.text.length() + length, 33);
                    ArrayList arrayList = new ArrayList(Arrays.asList((j[]) text2.getSpans(length + bVar2.text.length(), text2.length(), j.class)));
                    this.hiddenSpans = arrayList;
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        removeSpan((j) it2.next());
                    }
                }
            }
        }
        this.focusChanging = false;
    }

    public void setDeletionStyle(i iVar) {
        this.deletionStyle = iVar;
    }

    public void setSplitChar(char[] cArr) {
        if (cArr[0] == ' ') {
            char[] cArr2 = new char[2];
            cArr2[0] = cArr.length > 1 ? cArr[1] : (char) 167;
            cArr2[1] = cArr[0];
            cArr = cArr2;
        }
        this.splitChar = cArr;
        setTokenizer(new com.tokenautocomplete.a(cArr));
    }

    public void setTokenClickStyle(h hVar) {
        this.tokenClickStyle = hVar;
    }

    public void setTokenLimit(int i10) {
        this.tokenLimit = i10;
    }

    public void setTokenListener(l lVar) {
    }

    static /* synthetic */ class g {
        static final /* synthetic */ int[] $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle;
        static final /* synthetic */ int[] $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle;

        static {
            int[] iArr = new int[h.values().length];
            $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle = iArr;
            try {
                iArr[h.Select.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle[h.SelectDeselect.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle[h.Delete.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle[h.None.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[i.values().length];
            $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle = iArr2;
            try {
                iArr2[i.Clear.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle[i.PartialCompletion.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle[i.ToString.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle[i._Parent.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public enum h {
        None(false),
        Delete(false),
        Select(true),
        SelectDeselect(true);

        private boolean mIsSelectable;

        public boolean b() {
            return this.mIsSelectable;
        }

        h(boolean z6) {
            this.mIsSelectable = z6;
        }
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

    private SpannableStringBuilder buildSpannableForText(CharSequence charSequence) {
        return new SpannableStringBuilder(String.valueOf(this.splitChar[0]) + ((Object) this.tokenizer.terminateToken(charSequence)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelections() {
        Editable text;
        h hVar = this.tokenClickStyle;
        if (hVar == null || !hVar.b() || (text = getText()) == null) {
            return;
        }
        for (j jVar : (j[]) text.getSpans(0, text.length(), j.class)) {
            jVar.view.setSelected(false);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean deleteSelectedObject(boolean z6) {
        Editable text;
        h hVar = this.tokenClickStyle;
        if (hVar == null || !hVar.b() || (text = getText()) == null) {
            return z6;
        }
        for (TokenCompleteTextView<T>.j jVar : (j[]) text.getSpans(0, text.length(), j.class)) {
            if (jVar.view.isSelected()) {
                removeSpan(jVar);
                return true;
            }
        }
        return z6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void init() {
        if (this.initialized) {
            return;
        }
        setTokenizer(new MultiAutoCompleteTextView.CommaTokenizer());
        this.objects = new ArrayList<>();
        getText();
        this.spanWatcher = new m();
        this.textWatcher = new n();
        this.hiddenSpans = new ArrayList();
        addListeners();
        setTextIsSelectable(false);
        setLongClickable(false);
        setInputType(getInputType() | 589824);
        setHorizontallyScrolling(false);
        setOnEditorActionListener(this);
        setFilters(new InputFilter[]{new a()});
        setDeletionStyle(i.Clear);
        this.initialized = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSplitChar(char c7) {
        for (char c10 : this.splitChar) {
            if (c7 == c10) {
                return true;
            }
        }
        return false;
    }

    public void addObject(T t5) {
        addObject(t5, "");
    }

    protected TokenCompleteTextView<T>.j buildSpanForObject(T t5) {
        if (t5 == null) {
            return null;
        }
        return new j(getViewForObject(t5), t5, (int) maxTextWidth());
    }

    public void clear() {
        post(new e());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.AutoCompleteTextView
    protected CharSequence convertSelectionToString(Object obj) {
        this.selectedObject = obj;
        int i10 = g.$SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenDeleteStyle[this.deletionStyle.ordinal()];
        if (i10 == 1) {
            return "";
        }
        if (i10 == 2) {
            return currentCompletionText();
        }
        if (i10 != 3) {
            return super.convertSelectionToString(obj);
        }
        return obj != 0 ? obj.toString() : "";
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

    protected ArrayList<Serializable> getSerializableObjects() {
        ArrayList<Serializable> arrayList = new ArrayList<>();
        for (T t5 : getObjects()) {
            if (t5 instanceof Serializable) {
                arrayList.add((Serializable) t5);
            } else {
                Log.e(TAG, "Unable to save '" + t5 + "'");
            }
        }
        if (arrayList.size() != this.objects.size()) {
            Log.e(TAG, "You should make your objects Serializable or override\ngetSerializableObjects and convertSerializableArrayToObjectArray");
        }
        return arrayList;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        k kVar = new k(super.onCreateInputConnection(editorInfo), true);
        editorInfo.imeOptions = (editorInfo.imeOptions & (-1073741825)) | 268435456;
        return kVar;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, @NonNull KeyEvent keyEvent) {
        if (i10 == 23 || i10 == 61 || i10 == 66) {
            if (keyEvent.hasNoModifiers()) {
                this.shouldFocusNext = true;
                return true;
            }
        } else if (i10 == 67 && deleteSelectedObject(false)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
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
        post(new f());
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i10, int i11) {
        if (this.hintVisible) {
            i10 = 0;
        }
        h hVar = this.tokenClickStyle;
        if (hVar != null && hVar.b() && getText() != null) {
            clearSelections();
        }
        String str = this.prefix;
        if (str != null && (i10 < str.length() || i10 < this.prefix.length())) {
            setSelection(this.prefix.length());
            return;
        }
        Editable text = getText();
        if (text != null) {
            for (j jVar : (j[]) text.getSpans(i10, i10, j.class)) {
                int spanEnd = text.getSpanEnd(jVar);
                if (i10 <= spanEnd && text.getSpanStart(jVar) < i10) {
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
        super.onSelectionChanged(i10, i10);
    }

    @Override // android.widget.MultiAutoCompleteTextView
    protected void performFiltering(@NonNull CharSequence charSequence, int i10, int i11, int i12) {
        if (i10 < this.prefix.length()) {
            i10 = this.prefix.length();
        }
        Filter filter = getFilter();
        if (filter != null) {
            filter.filter(charSequence.subSequence(i10, i11), this);
        }
    }

    public void removeObject(T t5) {
        post(new d(t5));
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

    private void handleDone() {
        performCompletion();
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSpan(TokenCompleteTextView<T>.j jVar) {
        Editable text = getText();
        if (text == null) {
            return;
        }
        if (((m[]) text.getSpans(0, text.length(), m.class)).length == 0) {
            this.spanWatcher.onSpanRemoved(text, jVar, text.getSpanStart(jVar), text.getSpanEnd(jVar));
        }
        text.delete(text.getSpanStart(jVar), text.getSpanEnd(jVar) + 1);
        if (this.allowCollapse && !isFocused()) {
            updateCountSpan();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCountSpan() {
        Editable text = getText();
        com.tokenautocomplete.b[] bVarArr = (com.tokenautocomplete.b[]) text.getSpans(0, text.length(), com.tokenautocomplete.b.class);
        int size = this.hiddenSpans.size();
        for (com.tokenautocomplete.b bVar : bVarArr) {
            if (size == 0) {
                text.delete(text.getSpanStart(bVar), text.getSpanEnd(bVar));
                text.removeSpan(bVar);
            } else {
                bVar.b(this.hiddenSpans.size());
                text.setSpan(bVar, text.getSpanStart(bVar), text.getSpanEnd(bVar), 33);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHint() {
        HintSpan hintSpan;
        Editable text = getText();
        CharSequence hint = getHint();
        if (text != null && hint != null && this.prefix.length() > 0) {
            int style = 0;
            HintSpan[] hintSpanArr = (HintSpan[]) text.getSpans(0, text.length(), HintSpan.class);
            int length = this.prefix.length();
            if (hintSpanArr.length > 0) {
                hintSpan = hintSpanArr[0];
                length += text.getSpanEnd(hintSpan) - text.getSpanStart(hintSpan);
            } else {
                hintSpan = null;
            }
            if (text.length() == length) {
                this.hintVisible = true;
                if (hintSpan != null) {
                    return;
                }
                Typeface typeface = getTypeface();
                if (typeface != null) {
                    style = typeface.getStyle();
                }
                ColorStateList hintTextColors = getHintTextColors();
                HintSpan hintSpan2 = new HintSpan(null, style, (int) getTextSize(), hintTextColors, hintTextColors);
                text.insert(this.prefix.length(), hint);
                text.setSpan(hintSpan2, this.prefix.length(), this.prefix.length() + getHint().length(), 33);
                setSelection(this.prefix.length());
                return;
            }
            if (hintSpan == null) {
                return;
            }
            int spanStart = text.getSpanStart(hintSpan);
            int spanEnd = text.getSpanEnd(hintSpan);
            text.removeSpan(hintSpan);
            text.replace(spanStart, spanEnd, "");
            this.hintVisible = false;
        }
    }

    protected void addListeners() {
        Editable text = getText();
        if (text != null) {
            text.setSpan(this.spanWatcher, 0, text.length(), 18);
            addTextChangedListener(this.textWatcher);
        }
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
        if (selectionEnd - iFindTokenStart < Math.max(getThreshold(), 1)) {
            return false;
        }
        return true;
    }

    @Override // android.widget.TextView
    public boolean extractText(@NonNull ExtractedTextRequest extractedTextRequest, @NonNull ExtractedText extractedText) {
        try {
            return super.extractText(extractedTextRequest, extractedText);
        } catch (IndexOutOfBoundsException e2) {
            Log.d(TAG, "extractText hit IndexOutOfBoundsException. This may be normal.", e2);
            return false;
        }
    }

    @Override // android.view.View
    public void invalidate() {
        api16Invalidate();
        super.invalidate();
    }

    protected float maxTextWidth() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z6, int i10, Rect rect) {
        super.onFocusChanged(z6, i10, rect);
        if (!z6) {
            performCompletion();
        }
        if (this.allowCollapse) {
            performCollapse(z6);
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, @NonNull KeyEvent keyEvent) {
        boolean zOnKeyUp = super.onKeyUp(i10, keyEvent);
        if (this.shouldFocusNext) {
            this.shouldFocusNext = false;
            handleDone();
        }
        return zOnKeyUp;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        this.lastLayout = getLayout();
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
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        boolean zOnTouchEvent;
        int offsetForPosition;
        int actionMasked = motionEvent.getActionMasked();
        Editable text = getText();
        h hVar = this.tokenClickStyle;
        h hVar2 = h.None;
        if (hVar == hVar2) {
            zOnTouchEvent = super.onTouchEvent(motionEvent);
        } else {
            zOnTouchEvent = false;
        }
        if (isFocused() && text != null && this.lastLayout != null && actionMasked == 1 && (offsetForPosition = getOffsetForPosition(motionEvent.getX(), motionEvent.getY())) != -1) {
            j[] jVarArr = (j[]) text.getSpans(offsetForPosition, offsetForPosition, j.class);
            if (jVarArr.length > 0) {
                jVarArr[0].c();
                zOnTouchEvent = true;
            } else {
                clearSelections();
            }
        }
        if (!zOnTouchEvent && this.tokenClickStyle != hVar2) {
            return super.onTouchEvent(motionEvent);
        }
        return zOnTouchEvent;
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

    protected void removeListeners() {
        Editable text = getText();
        if (text != null) {
            for (m mVar : (m[]) text.getSpans(0, text.length(), m.class)) {
                text.removeSpan(mVar);
            }
            removeTextChangedListener(this.textWatcher);
        }
    }

    @Override // android.widget.MultiAutoCompleteTextView, android.widget.AutoCompleteTextView
    protected void replaceText(CharSequence charSequence) {
        clearComposingText();
        T t5 = this.selectedObject;
        if (t5 != null && !t5.toString().equals("")) {
            SpannableStringBuilder spannableStringBuilderBuildSpannableForText = buildSpannableForText(charSequence);
            TokenCompleteTextView<T>.j jVarBuildSpanForObject = buildSpanForObject(this.selectedObject);
            Editable text = getText();
            int selectionEnd = getSelectionEnd();
            int iFindTokenStart = this.tokenizer.findTokenStart(text, selectionEnd);
            if (iFindTokenStart < this.prefix.length()) {
                iFindTokenStart = this.prefix.length();
            }
            String strSubstring = TextUtils.substring(text, iFindTokenStart, selectionEnd);
            if (text != null) {
                if (jVarBuildSpanForObject == null) {
                    text.replace(iFindTokenStart, selectionEnd, "");
                    return;
                }
                if (!this.allowDuplicates && this.objects.contains(jVarBuildSpanForObject.b())) {
                    text.replace(iFindTokenStart, selectionEnd, "");
                    return;
                }
                QwertyKeyListener.markAsReplaced(text, iFindTokenStart, selectionEnd, strSubstring);
                text.replace(iFindTokenStart, selectionEnd, spannableStringBuilderBuildSpannableForText);
                text.setSpan(jVarBuildSpanForObject, iFindTokenStart, (spannableStringBuilderBuildSpannableForText.length() + iFindTokenStart) - 1, 33);
            }
        }
    }

    @Override // android.widget.MultiAutoCompleteTextView
    public void setTokenizer(MultiAutoCompleteTextView.Tokenizer tokenizer) {
        super.setTokenizer(tokenizer);
        this.tokenizer = tokenizer;
    }

    public void setSplitChar(char c7) {
        if (c7 == ' ') {
            setSplitChar(new char[]{167, c7});
        } else {
            setSplitChar(new char[]{c7});
        }
    }

    public TokenCompleteTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.splitChar = new char[]{kotlinx.serialization.json.internal.b.COMMA, ';'};
        this.deletionStyle = i._Parent;
        this.tokenClickStyle = h.None;
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

    public TokenCompleteTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.splitChar = new char[]{kotlinx.serialization.json.internal.b.COMMA, ';'};
        this.deletionStyle = i._Parent;
        this.tokenClickStyle = h.None;
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

    private void insertSpan(T t5) {
        insertSpan(t5, t5.toString());
    }

    private void insertSpan(TokenCompleteTextView<T>.j jVar) {
        insertSpan(jVar.b());
    }
}
