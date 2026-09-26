package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.core.view.ViewCompat;
import androidx.cursoradapter.widget.CursorAdapter;
import androidx.customview.view.AbsSavedState;
import com.google.android.gms.actions.SearchIntents;
import com.safedk.android.utils.Logger;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class SearchView extends LinearLayoutCompat implements CollapsibleActionView {
    static final boolean DBG = false;
    private static final String IME_OPTION_NO_MICROPHONE = "nm";
    static final String LOG_TAG = "SearchView";
    static final PreQAutoCompleteTextViewReflector PRE_API_29_HIDDEN_METHOD_INVOKER;
    private Bundle mAppSearchData;
    private boolean mClearingFocus;
    final ImageView mCloseButton;
    private final ImageView mCollapsedIcon;
    private int mCollapsedImeOptions;
    private final CharSequence mDefaultQueryHint;
    private final View mDropDownAnchor;
    private boolean mExpandedInActionView;
    final ImageView mGoButton;
    private boolean mIconified;
    private boolean mIconifiedByDefault;
    private int mMaxWidth;
    private CharSequence mOldQueryText;
    private final View.OnClickListener mOnClickListener;
    private OnCloseListener mOnCloseListener;
    private final TextView.OnEditorActionListener mOnEditorActionListener;
    private final AdapterView.OnItemClickListener mOnItemClickListener;
    private final AdapterView.OnItemSelectedListener mOnItemSelectedListener;
    private OnQueryTextListener mOnQueryChangeListener;
    View.OnFocusChangeListener mOnQueryTextFocusChangeListener;
    private View.OnClickListener mOnSearchClickListener;
    private OnSuggestionListener mOnSuggestionListener;
    private final WeakHashMap<String, Drawable.ConstantState> mOutsideDrawablesCache;
    private CharSequence mQueryHint;
    private boolean mQueryRefinement;
    private Runnable mReleaseCursorRunnable;
    final ImageView mSearchButton;
    private final View mSearchEditFrame;
    private final Drawable mSearchHintIcon;
    private final View mSearchPlate;
    final SearchAutoComplete mSearchSrcTextView;
    private Rect mSearchSrcTextViewBounds;
    private Rect mSearchSrtTextViewBoundsExpanded;
    SearchableInfo mSearchable;
    private final View mSubmitArea;
    private boolean mSubmitButtonEnabled;
    private final int mSuggestionCommitIconResId;
    private final int mSuggestionRowLayout;
    CursorAdapter mSuggestionsAdapter;
    private int[] mTemp;
    private int[] mTemp2;
    View.OnKeyListener mTextKeyListener;
    private TextWatcher mTextWatcher;
    private UpdatableTouchDelegate mTouchDelegate;
    private final Runnable mUpdateDrawableStateRunnable;
    private CharSequence mUserQuery;
    private final Intent mVoiceAppSearchIntent;
    final ImageView mVoiceButton;
    private boolean mVoiceButtonEnabled;
    private final Intent mVoiceWebSearchIntent;

    /* JADX INFO: loaded from: classes4.dex */
    @RequiresApi
    @RestrictTo
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {
        private int mIconifiedByDefaultId;
        private int mImeOptionsId;
        private int mMaxWidthId;
        private boolean mPropertiesMapped = false;
        private int mQueryHintId;

        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void readProperties(@NonNull SearchView searchView, @NonNull PropertyReader propertyReader) {
            if (!this.mPropertiesMapped) {
                throw c.a();
            }
            propertyReader.readInt(this.mImeOptionsId, searchView.getImeOptions());
            propertyReader.readInt(this.mMaxWidthId, searchView.getMaxWidth());
            propertyReader.readBoolean(this.mIconifiedByDefaultId, searchView.N());
            propertyReader.readObject(this.mQueryHintId, searchView.getQueryHint());
        }

        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.mImeOptionsId = propertyMapper.mapInt("imeOptions", R.attr.imeOptions);
            this.mMaxWidthId = propertyMapper.mapInt("maxWidth", R.attr.maxWidth);
            this.mIconifiedByDefaultId = propertyMapper.mapBoolean("iconifiedByDefault", androidx.appcompat.R.attr.iconifiedByDefault);
            this.mQueryHintId = propertyMapper.mapObject("queryHint", androidx.appcompat.R.attr.queryHint);
            this.mPropertiesMapped = true;
        }
    }

    public interface OnCloseListener {
        boolean onClose();
    }

    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    public interface OnSuggestionListener {
        boolean onSuggestionClick(int i10);

        boolean onSuggestionSelect(int i10);
    }

    private static class PreQAutoCompleteTextViewReflector {
        private Method mDoAfterTextChanged;
        private Method mDoBeforeTextChanged;
        private Method mEnsureImeVisible;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        PreQAutoCompleteTextViewReflector() {
            this.mDoBeforeTextChanged = null;
            this.mDoAfterTextChanged = null;
            this.mEnsureImeVisible = null;
            d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.mDoBeforeTextChanged = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.mDoAfterTextChanged = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.mEnsureImeVisible = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        private static void d() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.mDoAfterTextChanged;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void b(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.mDoBeforeTextChanged;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void c(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.mEnsureImeVisible;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.widget.SearchView.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        boolean isIconified;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isIconified = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.isIconified + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeValue(Boolean.valueOf(this.isIconified));
        }
    }

    @RestrictTo
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {
        private boolean mHasPendingShowSoftInputRequest;
        final Runnable mRunShowSoftInputIfNecessary;
        private SearchView mSearchView;
        private int mThreshold;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i10, KeyEvent keyEvent) {
            if (i10 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.mSearchView.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i10, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        void setSearchView(SearchView searchView) {
            this.mSearchView = searchView;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, androidx.appcompat.R.attr.autoCompleteTextViewStyle);
        }

        void b() {
            if (Build.VERSION.SDK_INT < 29) {
                SearchView.PRE_API_29_HIDDEN_METHOD_INVOKER.c(this);
                return;
            }
            setInputMethodMode(1);
            if (enoughToFilter()) {
                showDropDown();
            }
        }

        void d() {
            if (this.mHasPendingShowSoftInputRequest) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.mHasPendingShowSoftInputRequest = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.mThreshold <= 0 || super.enoughToFilter();
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            this.mRunShowSoftInputIfNecessary = new Runnable() { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                @Override // java.lang.Runnable
                public void run() {
                    SearchAutoComplete.this.d();
                }
            };
            this.mThreshold = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i10 = configuration.screenWidthDp;
            int i11 = configuration.screenHeightDp;
            if (i10 >= 960 && i11 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i10 < 600) {
                if (i10 < 640 || i11 < 480) {
                    return 160;
                }
                return 192;
            }
            return 192;
        }

        boolean c() {
            if (TextUtils.getTrimmedLength(getText()) == 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.mHasPendingShowSoftInputRequest) {
                removeCallbacks(this.mRunShowSoftInputIfNecessary);
                post(this.mRunShowSoftInputIfNecessary);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z6, int i10, Rect rect) {
            super.onFocusChanged(z6, i10, rect);
            this.mSearchView.c0();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z6) {
            super.onWindowFocusChanged(z6);
            if (z6 && this.mSearchView.hasFocus() && getVisibility() == 0) {
                this.mHasPendingShowSoftInputRequest = true;
                if (SearchView.P(getContext())) {
                    b();
                }
            }
        }

        void setImeVisibility(boolean z6) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z6) {
                this.mHasPendingShowSoftInputRequest = false;
                removeCallbacks(this.mRunShowSoftInputIfNecessary);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (inputMethodManager.isActive(this)) {
                    this.mHasPendingShowSoftInputRequest = false;
                    removeCallbacks(this.mRunShowSoftInputIfNecessary);
                    inputMethodManager.showSoftInput(this, 0);
                    return;
                }
                this.mHasPendingShowSoftInputRequest = true;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i10) {
            super.setThreshold(i10);
            this.mThreshold = i10;
        }
    }

    private static class UpdatableTouchDelegate extends TouchDelegate {
        private final Rect mActualBounds;
        private boolean mDelegateTargeted;
        private final View mDelegateView;
        private final int mSlop;
        private final Rect mSlopBounds;
        private final Rect mTargetBounds;

        public void a(Rect rect, Rect rect2) {
            this.mTargetBounds.set(rect);
            this.mSlopBounds.set(rect);
            Rect rect3 = this.mSlopBounds;
            int i10 = this.mSlop;
            rect3.inset(-i10, -i10);
            this.mActualBounds.set(rect2);
        }

        public UpdatableTouchDelegate(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.mSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.mTargetBounds = new Rect();
            this.mSlopBounds = new Rect();
            this.mActualBounds = new Rect();
            a(rect, rect2);
            this.mDelegateView = view;
        }

        /* JADX WARN: Code duplicated, block: B:19:0x003e  */
        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z6;
            boolean z10;
            int x6 = (int) motionEvent.getX();
            int y6 = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z11 = true;
            if (action != 0) {
                if (action != 1 && action != 2) {
                    if (action == 3) {
                        z10 = this.mDelegateTargeted;
                        this.mDelegateTargeted = false;
                    } else {
                        z6 = true;
                        z11 = false;
                    }
                } else {
                    z10 = this.mDelegateTargeted;
                    if (z10 && !this.mSlopBounds.contains(x6, y6)) {
                        z11 = z10;
                        z6 = false;
                    }
                }
                z11 = z10;
                z6 = true;
            } else if (this.mTargetBounds.contains(x6, y6)) {
                this.mDelegateTargeted = true;
                z6 = true;
            } else {
                z6 = true;
                z11 = false;
            }
            if (!z11) {
                return false;
            }
            if (z6 && !this.mActualBounds.contains(x6, y6)) {
                motionEvent.setLocation(this.mDelegateView.getWidth() / 2, this.mDelegateView.getHeight() / 2);
            } else {
                Rect rect = this.mActualBounds;
                motionEvent.setLocation(x6 - rect.left, y6 - rect.top);
            }
            return this.mDelegateView.dispatchTouchEvent(motionEvent);
        }
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    private Intent F(Cursor cursor, int i10, String str) {
        int position;
        String strO;
        try {
            String strO2 = SuggestionsAdapter.o(cursor, "suggest_intent_action");
            if (strO2 == null) {
                strO2 = this.mSearchable.getSuggestIntentAction();
            }
            if (strO2 == null) {
                strO2 = "android.intent.action.SEARCH";
            }
            String str2 = strO2;
            String strO3 = SuggestionsAdapter.o(cursor, "suggest_intent_data");
            if (strO3 == null) {
                strO3 = this.mSearchable.getSuggestIntentData();
            }
            if (strO3 != null && (strO = SuggestionsAdapter.o(cursor, "suggest_intent_data_id")) != null) {
                strO3 = strO3 + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + Uri.encode(strO);
            }
            return E(str2, strO3 == null ? null : Uri.parse(strO3), SuggestionsAdapter.o(cursor, "suggest_intent_extra_data"), SuggestionsAdapter.o(cursor, "suggest_intent_query"), i10, str);
        } catch (RuntimeException e) {
            try {
                position = cursor.getPosition();
            } catch (RuntimeException unused) {
                position = -1;
            }
            Log.w(LOG_TAG, "Search suggestions cursor at row " + position + " returned exception.", e);
            return null;
        }
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public boolean N() {
        return this.mIconifiedByDefault;
    }

    public boolean O() {
        return this.mIconified;
    }

    void Y() {
        n0(false);
        this.mSearchSrcTextView.requestFocus();
        this.mSearchSrcTextView.setImeVisibility(true);
        View.OnClickListener onClickListener = this.mOnSearchClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.mClearingFocus = true;
        super.clearFocus();
        this.mSearchSrcTextView.clearFocus();
        this.mSearchSrcTextView.setImeVisibility(false);
        this.mClearingFocus = false;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    int getSuggestionCommitIconResId() {
        return this.mSuggestionCommitIconResId;
    }

    int getSuggestionRowLayout() {
        return this.mSuggestionRowLayout;
    }

    public CursorAdapter getSuggestionsAdapter() {
        return this.mSuggestionsAdapter;
    }

    @RestrictTo
    public void setAppSearchData(Bundle bundle) {
        this.mAppSearchData = bundle;
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.mOnCloseListener = onCloseListener;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.mOnQueryTextFocusChangeListener = onFocusChangeListener;
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.mOnQueryChangeListener = onQueryTextListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.mOnSearchClickListener = onClickListener;
    }

    public void setOnSuggestionListener(OnSuggestionListener onSuggestionListener) {
        this.mOnSuggestionListener = onSuggestionListener;
    }

    static {
        PRE_API_29_HIDDEN_METHOD_INVOKER = Build.VERSION.SDK_INT < 29 ? new PreQAutoCompleteTextViewReflector() : null;
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.searchViewStyle);
    }

    private Intent E(String str, Uri uri, String str2, String str3, int i10, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.mUserQuery);
        if (str3 != null) {
            intent.putExtra(SearchIntents.EXTRA_QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.mAppSearchData;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i10 != 0) {
            intent.putExtra("action_key", i10);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.mSearchable.getSearchActivity());
        return intent;
    }

    private Intent H(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private void I() {
        this.mSearchSrcTextView.dismissDropDown();
    }

    private void K(View view, Rect rect) {
        view.getLocationInWindow(this.mTemp);
        getLocationInWindow(this.mTemp2);
        int[] iArr = this.mTemp;
        int i10 = iArr[1];
        int[] iArr2 = this.mTemp2;
        int i11 = i10 - iArr2[1];
        int i12 = iArr[0] - iArr2[0];
        rect.set(i12, i11, view.getWidth() + i12, view.getHeight() + i11);
    }

    private CharSequence L(CharSequence charSequence) {
        if (!this.mIconifiedByDefault || this.mSearchHintIcon == null) {
            return charSequence;
        }
        int textSize = (int) (((double) this.mSearchSrcTextView.getTextSize()) * 1.25d);
        this.mSearchHintIcon.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.mSearchHintIcon), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private boolean M() {
        Intent intent;
        SearchableInfo searchableInfo = this.mSearchable;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        if (this.mSearchable.getVoiceSearchLaunchWebSearch()) {
            intent = this.mVoiceWebSearchIntent;
        } else {
            intent = this.mSearchable.getVoiceSearchLaunchRecognizer() ? this.mVoiceAppSearchIntent : null;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    private boolean Q() {
        return (this.mSubmitButtonEnabled || this.mVoiceButtonEnabled) && !O();
    }

    private void R(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
        } catch (RuntimeException e) {
            Log.e(LOG_TAG, "Failed launch activity: " + intent, e);
        }
    }

    private boolean T(int i10, int i11, String str) {
        Cursor cursorC = this.mSuggestionsAdapter.c();
        if (cursorC == null || !cursorC.moveToPosition(i10)) {
            return false;
        }
        R(F(cursorC, i11, str));
        return true;
    }

    private void e0() {
        post(this.mUpdateDrawableStateRunnable);
    }

    private void f0(int i10) {
        Editable text = this.mSearchSrcTextView.getText();
        Cursor cursorC = this.mSuggestionsAdapter.c();
        if (cursorC == null) {
            return;
        }
        if (!cursorC.moveToPosition(i10)) {
            setQuery(text);
            return;
        }
        CharSequence charSequenceA = this.mSuggestionsAdapter.a(cursorC);
        if (charSequenceA != null) {
            setQuery(charSequenceA);
        } else {
            setQuery(text);
        }
    }

    private void h0() {
        boolean z6 = true;
        boolean z10 = !TextUtils.isEmpty(this.mSearchSrcTextView.getText());
        if (!z10 && (!this.mIconifiedByDefault || this.mExpandedInActionView)) {
            z6 = false;
        }
        this.mCloseButton.setVisibility(z6 ? 0 : 8);
        Drawable drawable = this.mCloseButton.getDrawable();
        if (drawable != null) {
            drawable.setState(z10 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    private void k0() {
        this.mSearchSrcTextView.setThreshold(this.mSearchable.getSuggestThreshold());
        this.mSearchSrcTextView.setImeOptions(this.mSearchable.getImeOptions());
        int inputType = this.mSearchable.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.mSearchable.getSuggestAuthority() != null) {
                inputType |= 589824;
            }
        }
        this.mSearchSrcTextView.setInputType(inputType);
        CursorAdapter cursorAdapter = this.mSuggestionsAdapter;
        if (cursorAdapter != null) {
            cursorAdapter.b(null);
        }
        if (this.mSearchable.getSuggestAuthority() != null) {
            SuggestionsAdapter suggestionsAdapter = new SuggestionsAdapter(getContext(), this, this.mSearchable, this.mOutsideDrawablesCache);
            this.mSuggestionsAdapter = suggestionsAdapter;
            this.mSearchSrcTextView.setAdapter(suggestionsAdapter);
            ((SuggestionsAdapter) this.mSuggestionsAdapter).x(this.mQueryRefinement ? 2 : 1);
        }
    }

    private void m0(boolean z6) {
        this.mGoButton.setVisibility((this.mSubmitButtonEnabled && Q() && hasFocus() && (z6 || !this.mVoiceButtonEnabled)) ? 0 : 8);
    }

    private void n0(boolean z6) {
        this.mIconified = z6;
        int i10 = 8;
        int i11 = z6 ? 0 : 8;
        boolean zIsEmpty = TextUtils.isEmpty(this.mSearchSrcTextView.getText());
        this.mSearchButton.setVisibility(i11);
        m0(!zIsEmpty);
        this.mSearchEditFrame.setVisibility(z6 ? 8 : 0);
        if (this.mCollapsedIcon.getDrawable() != null && !this.mIconifiedByDefault) {
            i10 = 0;
        }
        this.mCollapsedIcon.setVisibility(i10);
        h0();
        o0(zIsEmpty);
        l0();
    }

    private void o0(boolean z6) {
        int i10 = 8;
        if (this.mVoiceButtonEnabled && !O() && z6) {
            this.mGoButton.setVisibility(8);
            i10 = 0;
        }
        this.mVoiceButton.setVisibility(i10);
    }

    private void setQuery(CharSequence charSequence) {
        this.mSearchSrcTextView.setText(charSequence);
        this.mSearchSrcTextView.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    void D() {
        if (this.mDropDownAnchor.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.mSearchPlate.getPaddingLeft();
            Rect rect = new Rect();
            boolean zB = ViewUtils.b(this);
            int dimensionPixelSize = this.mIconifiedByDefault ? resources.getDimensionPixelSize(androidx.appcompat.R.dimen.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(androidx.appcompat.R.dimen.abc_dropdownitem_text_padding_left) : 0;
            this.mSearchSrcTextView.getDropDownBackground().getPadding(rect);
            this.mSearchSrcTextView.setDropDownHorizontalOffset(zB ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.mSearchSrcTextView.setDropDownWidth((((this.mDropDownAnchor.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    void J() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.mSearchSrcTextView.refreshAutoCompleteResults();
            return;
        }
        PreQAutoCompleteTextViewReflector preQAutoCompleteTextViewReflector = PRE_API_29_HIDDEN_METHOD_INVOKER;
        preQAutoCompleteTextViewReflector.b(this.mSearchSrcTextView);
        preQAutoCompleteTextViewReflector.a(this.mSearchSrcTextView);
    }

    void S(int i10, String str, String str2) {
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), E("android.intent.action.SEARCH", null, null, str2, i10, str));
    }

    void U() {
        if (!TextUtils.isEmpty(this.mSearchSrcTextView.getText())) {
            this.mSearchSrcTextView.setText("");
            this.mSearchSrcTextView.requestFocus();
            this.mSearchSrcTextView.setImeVisibility(true);
        } else if (this.mIconifiedByDefault) {
            OnCloseListener onCloseListener = this.mOnCloseListener;
            if (onCloseListener == null || !onCloseListener.onClose()) {
                clearFocus();
                n0(true);
            }
        }
    }

    boolean V(int i10, int i11, String str) {
        OnSuggestionListener onSuggestionListener = this.mOnSuggestionListener;
        if (onSuggestionListener != null && onSuggestionListener.onSuggestionClick(i10)) {
            return false;
        }
        T(i10, 0, null);
        this.mSearchSrcTextView.setImeVisibility(false);
        I();
        return true;
    }

    boolean W(int i10) {
        OnSuggestionListener onSuggestionListener = this.mOnSuggestionListener;
        if (onSuggestionListener != null && onSuggestionListener.onSuggestionSelect(i10)) {
            return false;
        }
        f0(i10);
        return true;
    }

    void Z() {
        Editable text = this.mSearchSrcTextView.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        OnQueryTextListener onQueryTextListener = this.mOnQueryChangeListener;
        if (onQueryTextListener == null || !onQueryTextListener.onQueryTextSubmit(text.toString())) {
            if (this.mSearchable != null) {
                S(0, null, text.toString());
            }
            this.mSearchSrcTextView.setImeVisibility(false);
            I();
        }
    }

    boolean a0(View view, int i10, KeyEvent keyEvent) {
        if (this.mSearchable != null && this.mSuggestionsAdapter != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i10 == 66 || i10 == 84 || i10 == 61) {
                return V(this.mSearchSrcTextView.getListSelection(), 0, null);
            }
            if (i10 == 21 || i10 == 22) {
                this.mSearchSrcTextView.setSelection(i10 == 21 ? 0 : this.mSearchSrcTextView.length());
                this.mSearchSrcTextView.setListSelection(0);
                this.mSearchSrcTextView.clearListSelection();
                this.mSearchSrcTextView.b();
                return true;
            }
            if (i10 == 19) {
                this.mSearchSrcTextView.getListSelection();
                return false;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public void b() {
        g0("", false);
        clearFocus();
        n0(true);
        this.mSearchSrcTextView.setImeOptions(this.mCollapsedImeOptions);
        this.mExpandedInActionView = false;
    }

    void b0(CharSequence charSequence) {
        Editable text = this.mSearchSrcTextView.getText();
        this.mUserQuery = text;
        boolean zIsEmpty = TextUtils.isEmpty(text);
        m0(!zIsEmpty);
        o0(zIsEmpty);
        h0();
        l0();
        if (this.mOnQueryChangeListener != null && !TextUtils.equals(charSequence, this.mOldQueryText)) {
            this.mOnQueryChangeListener.onQueryTextChange(charSequence.toString());
        }
        this.mOldQueryText = charSequence.toString();
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public void d() {
        if (this.mExpandedInActionView) {
            return;
        }
        this.mExpandedInActionView = true;
        int imeOptions = this.mSearchSrcTextView.getImeOptions();
        this.mCollapsedImeOptions = imeOptions;
        this.mSearchSrcTextView.setImeOptions(imeOptions | 33554432);
        this.mSearchSrcTextView.setText("");
        setIconified(false);
    }

    void d0() {
        SearchableInfo searchableInfo = this.mSearchable;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), H(this.mVoiceWebSearchIntent, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), G(this.mVoiceAppSearchIntent, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
            Log.w(LOG_TAG, "Could not find voice search activity");
        }
    }

    public void g0(CharSequence charSequence, boolean z6) {
        this.mSearchSrcTextView.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.mUserQuery = charSequence;
        }
        if (!z6 || TextUtils.isEmpty(charSequence)) {
            return;
        }
        Z();
    }

    public int getImeOptions() {
        return this.mSearchSrcTextView.getImeOptions();
    }

    public int getInputType() {
        return this.mSearchSrcTextView.getInputType();
    }

    public CharSequence getQuery() {
        return this.mSearchSrcTextView.getText();
    }

    @Nullable
    public CharSequence getQueryHint() {
        CharSequence charSequence = this.mQueryHint;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.mSearchable;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.mDefaultQueryHint : getContext().getText(this.mSearchable.getHintId());
    }

    void i0() {
        int[] iArr = this.mSearchSrcTextView.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.mSearchPlate.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.mSubmitArea.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.mUpdateDrawableStateRunnable);
        post(this.mReleaseCursorRunnable);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        n0(savedState.isIconified);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i10, Rect rect) {
        if (this.mClearingFocus || !isFocusable()) {
            return false;
        }
        if (O()) {
            return super.requestFocus(i10, rect);
        }
        boolean zRequestFocus = this.mSearchSrcTextView.requestFocus(i10, rect);
        if (zRequestFocus) {
            n0(false);
        }
        return zRequestFocus;
    }

    public void setIconified(boolean z6) {
        if (z6) {
            U();
        } else {
            Y();
        }
    }

    public void setIconifiedByDefault(boolean z6) {
        if (this.mIconifiedByDefault == z6) {
            return;
        }
        this.mIconifiedByDefault = z6;
        n0(z6);
        j0();
    }

    public void setImeOptions(int i10) {
        this.mSearchSrcTextView.setImeOptions(i10);
    }

    public void setInputType(int i10) {
        this.mSearchSrcTextView.setInputType(i10);
    }

    public void setMaxWidth(int i10) {
        this.mMaxWidth = i10;
        requestLayout();
    }

    public void setQueryHint(@Nullable CharSequence charSequence) {
        this.mQueryHint = charSequence;
        j0();
    }

    public void setQueryRefinementEnabled(boolean z6) {
        this.mQueryRefinement = z6;
        CursorAdapter cursorAdapter = this.mSuggestionsAdapter;
        if (cursorAdapter instanceof SuggestionsAdapter) {
            ((SuggestionsAdapter) cursorAdapter).x(z6 ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.mSearchable = searchableInfo;
        if (searchableInfo != null) {
            k0();
            j0();
        }
        boolean zM = M();
        this.mVoiceButtonEnabled = zM;
        if (zM) {
            this.mSearchSrcTextView.setPrivateImeOptions(IME_OPTION_NO_MICROPHONE);
        }
        n0(O());
    }

    public void setSubmitButtonEnabled(boolean z6) {
        this.mSubmitButtonEnabled = z6;
        n0(O());
    }

    public void setSuggestionsAdapter(CursorAdapter cursorAdapter) {
        this.mSuggestionsAdapter = cursorAdapter;
        this.mSearchSrcTextView.setAdapter(cursorAdapter);
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mSearchSrcTextViewBounds = new Rect();
        this.mSearchSrtTextViewBoundsExpanded = new Rect();
        this.mTemp = new int[2];
        this.mTemp2 = new int[2];
        this.mUpdateDrawableStateRunnable = new Runnable() { // from class: androidx.appcompat.widget.SearchView.1
            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.i0();
            }
        };
        this.mReleaseCursorRunnable = new Runnable() { // from class: androidx.appcompat.widget.SearchView.2
            @Override // java.lang.Runnable
            public void run() {
                CursorAdapter cursorAdapter = SearchView.this.mSuggestionsAdapter;
                if (cursorAdapter instanceof SuggestionsAdapter) {
                    cursorAdapter.b(null);
                }
            }
        };
        this.mOutsideDrawablesCache = new WeakHashMap<>();
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: androidx.appcompat.widget.SearchView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SearchView searchView = SearchView.this;
                if (view == searchView.mSearchButton) {
                    searchView.Y();
                    return;
                }
                if (view == searchView.mCloseButton) {
                    searchView.U();
                    return;
                }
                if (view == searchView.mGoButton) {
                    searchView.Z();
                } else if (view == searchView.mVoiceButton) {
                    searchView.d0();
                } else if (view == searchView.mSearchSrcTextView) {
                    searchView.J();
                }
            }
        };
        this.mOnClickListener = onClickListener;
        this.mTextKeyListener = new View.OnKeyListener() { // from class: androidx.appcompat.widget.SearchView.6
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i11, KeyEvent keyEvent) {
                SearchView searchView = SearchView.this;
                if (searchView.mSearchable == null) {
                    return false;
                }
                if (searchView.mSearchSrcTextView.isPopupShowing() && SearchView.this.mSearchSrcTextView.getListSelection() != -1) {
                    return SearchView.this.a0(view, i11, keyEvent);
                }
                if (SearchView.this.mSearchSrcTextView.c() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i11 != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView searchView2 = SearchView.this;
                searchView2.S(0, null, searchView2.mSearchSrcTextView.getText().toString());
                return true;
            }
        };
        TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: androidx.appcompat.widget.SearchView.7
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i11, KeyEvent keyEvent) {
                SearchView.this.Z();
                return true;
            }
        };
        this.mOnEditorActionListener = onEditorActionListener;
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.SearchView.8
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i11, long j6) {
                SearchView.this.V(i11, 0, null);
            }
        };
        this.mOnItemClickListener = onItemClickListener;
        AdapterView.OnItemSelectedListener onItemSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.SearchView.9
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i11, long j6) {
                SearchView.this.W(i11);
            }
        };
        this.mOnItemSelectedListener = onItemSelectedListener;
        this.mTextWatcher = new TextWatcher() { // from class: androidx.appcompat.widget.SearchView.10
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
                SearchView.this.b0(charSequence);
            }
        };
        int[] iArr = androidx.appcompat.R.styleable.SearchView;
        TintTypedArray tintTypedArrayV = TintTypedArray.v(context, attributeSet, iArr, i10, 0);
        ViewCompat.s0(this, context, iArr, attributeSet, tintTypedArrayV.r(), i10, 0);
        LayoutInflater.from(context).inflate(tintTypedArrayV.n(androidx.appcompat.R.styleable.SearchView_layout, androidx.appcompat.R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(androidx.appcompat.R.id.search_src_text);
        this.mSearchSrcTextView = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.mSearchEditFrame = findViewById(androidx.appcompat.R.id.search_edit_frame);
        View viewFindViewById = findViewById(androidx.appcompat.R.id.search_plate);
        this.mSearchPlate = viewFindViewById;
        View viewFindViewById2 = findViewById(androidx.appcompat.R.id.submit_area);
        this.mSubmitArea = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(androidx.appcompat.R.id.search_button);
        this.mSearchButton = imageView;
        ImageView imageView2 = (ImageView) findViewById(androidx.appcompat.R.id.search_go_btn);
        this.mGoButton = imageView2;
        ImageView imageView3 = (ImageView) findViewById(androidx.appcompat.R.id.search_close_btn);
        this.mCloseButton = imageView3;
        ImageView imageView4 = (ImageView) findViewById(androidx.appcompat.R.id.search_voice_btn);
        this.mVoiceButton = imageView4;
        ImageView imageView5 = (ImageView) findViewById(androidx.appcompat.R.id.search_mag_icon);
        this.mCollapsedIcon = imageView5;
        ViewCompat.y0(viewFindViewById, tintTypedArrayV.g(androidx.appcompat.R.styleable.SearchView_queryBackground));
        ViewCompat.y0(viewFindViewById2, tintTypedArrayV.g(androidx.appcompat.R.styleable.SearchView_submitBackground));
        int i11 = androidx.appcompat.R.styleable.SearchView_searchIcon;
        imageView.setImageDrawable(tintTypedArrayV.g(i11));
        imageView2.setImageDrawable(tintTypedArrayV.g(androidx.appcompat.R.styleable.SearchView_goIcon));
        imageView3.setImageDrawable(tintTypedArrayV.g(androidx.appcompat.R.styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(tintTypedArrayV.g(androidx.appcompat.R.styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(tintTypedArrayV.g(i11));
        this.mSearchHintIcon = tintTypedArrayV.g(androidx.appcompat.R.styleable.SearchView_searchHintIcon);
        TooltipCompat.a(imageView, getResources().getString(androidx.appcompat.R.string.abc_searchview_description_search));
        this.mSuggestionRowLayout = tintTypedArrayV.n(androidx.appcompat.R.styleable.SearchView_suggestionRowLayout, androidx.appcompat.R.layout.abc_search_dropdown_item_icons_2line);
        this.mSuggestionCommitIconResId = tintTypedArrayV.n(androidx.appcompat.R.styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(onClickListener);
        imageView3.setOnClickListener(onClickListener);
        imageView2.setOnClickListener(onClickListener);
        imageView4.setOnClickListener(onClickListener);
        searchAutoComplete.setOnClickListener(onClickListener);
        searchAutoComplete.addTextChangedListener(this.mTextWatcher);
        searchAutoComplete.setOnEditorActionListener(onEditorActionListener);
        searchAutoComplete.setOnItemClickListener(onItemClickListener);
        searchAutoComplete.setOnItemSelectedListener(onItemSelectedListener);
        searchAutoComplete.setOnKeyListener(this.mTextKeyListener);
        searchAutoComplete.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: androidx.appcompat.widget.SearchView.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z6) {
                SearchView searchView = SearchView.this;
                View.OnFocusChangeListener onFocusChangeListener = searchView.mOnQueryTextFocusChangeListener;
                if (onFocusChangeListener != null) {
                    onFocusChangeListener.onFocusChange(searchView, z6);
                }
            }
        });
        setIconifiedByDefault(tintTypedArrayV.a(androidx.appcompat.R.styleable.SearchView_iconifiedByDefault, true));
        int iF = tintTypedArrayV.f(androidx.appcompat.R.styleable.SearchView_android_maxWidth, -1);
        if (iF != -1) {
            setMaxWidth(iF);
        }
        this.mDefaultQueryHint = tintTypedArrayV.p(androidx.appcompat.R.styleable.SearchView_defaultQueryHint);
        this.mQueryHint = tintTypedArrayV.p(androidx.appcompat.R.styleable.SearchView_queryHint);
        int iK = tintTypedArrayV.k(androidx.appcompat.R.styleable.SearchView_android_imeOptions, -1);
        if (iK != -1) {
            setImeOptions(iK);
        }
        int iK2 = tintTypedArrayV.k(androidx.appcompat.R.styleable.SearchView_android_inputType, -1);
        if (iK2 != -1) {
            setInputType(iK2);
        }
        setFocusable(tintTypedArrayV.a(androidx.appcompat.R.styleable.SearchView_android_focusable, true));
        tintTypedArrayV.w();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.mVoiceWebSearchIntent = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.mVoiceAppSearchIntent = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.mDropDownAnchor = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.appcompat.widget.SearchView.4
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                    SearchView.this.D();
                }
            });
        }
        n0(this.mIconifiedByDefault);
        j0();
    }

    private Intent G(Intent intent, SearchableInfo searchableInfo) {
        String string;
        String string2;
        String string3;
        int voiceMaxResults;
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.mAppSearchData;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        if (searchableInfo.getVoiceLanguageModeId() != 0) {
            string = resources.getString(searchableInfo.getVoiceLanguageModeId());
        } else {
            string = "free_form";
        }
        String strFlattenToShortString = null;
        if (searchableInfo.getVoicePromptTextId() != 0) {
            string2 = resources.getString(searchableInfo.getVoicePromptTextId());
        } else {
            string2 = null;
        }
        if (searchableInfo.getVoiceLanguageId() != 0) {
            string3 = resources.getString(searchableInfo.getVoiceLanguageId());
        } else {
            string3 = null;
        }
        if (searchableInfo.getVoiceMaxResults() != 0) {
            voiceMaxResults = searchableInfo.getVoiceMaxResults();
        } else {
            voiceMaxResults = 1;
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        if (searchActivity != null) {
            strFlattenToShortString = searchActivity.flattenToShortString();
        }
        intent3.putExtra("calling_package", strFlattenToShortString);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    static boolean P(Context context) {
        if (context.getResources().getConfiguration().orientation == 2) {
            return true;
        }
        return false;
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(androidx.appcompat.R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(androidx.appcompat.R.dimen.abc_search_view_preferred_width);
    }

    private void j0() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(L(queryHint));
    }

    private void l0() {
        int i10;
        if (Q() && (this.mGoButton.getVisibility() == 0 || this.mVoiceButton.getVisibility() == 0)) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        this.mSubmitArea.setVisibility(i10);
    }

    void X(CharSequence charSequence) {
        setQuery(charSequence);
    }

    void c0() {
        n0(O());
        e0();
        if (this.mSearchSrcTextView.hasFocus()) {
            J();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        if (z6) {
            K(this.mSearchSrcTextView, this.mSearchSrcTextViewBounds);
            Rect rect = this.mSearchSrtTextViewBoundsExpanded;
            Rect rect2 = this.mSearchSrcTextViewBounds;
            rect.set(rect2.left, 0, rect2.right, i13 - i11);
            UpdatableTouchDelegate updatableTouchDelegate = this.mTouchDelegate;
            if (updatableTouchDelegate == null) {
                UpdatableTouchDelegate updatableTouchDelegate2 = new UpdatableTouchDelegate(this.mSearchSrtTextViewBoundsExpanded, this.mSearchSrcTextViewBounds, this.mSearchSrcTextView);
                this.mTouchDelegate = updatableTouchDelegate2;
                setTouchDelegate(updatableTouchDelegate2);
                return;
            }
            updatableTouchDelegate.a(this.mSearchSrtTextViewBoundsExpanded, this.mSearchSrcTextViewBounds);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        if (O()) {
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824 && (i12 = this.mMaxWidth) > 0) {
                    size = Math.min(i12, size);
                }
            } else {
                size = this.mMaxWidth;
                if (size <= 0) {
                    size = getPreferredWidth();
                }
            }
        } else {
            int i13 = this.mMaxWidth;
            size = i13 > 0 ? Math.min(i13, size) : Math.min(getPreferredWidth(), size);
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 == 0) {
                size2 = getPreferredHeight();
            }
        } else {
            size2 = Math.min(getPreferredHeight(), size2);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.isIconified = O();
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        e0();
    }
}
