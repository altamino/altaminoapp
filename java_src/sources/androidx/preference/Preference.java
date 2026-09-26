package androidx.preference;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class Preference implements Comparable<Preference> {
    private static final String CLIPBOARD_ID = "Preference";
    public static final int DEFAULT_ORDER = Integer.MAX_VALUE;
    private boolean mAllowDividerAbove;
    private boolean mAllowDividerBelow;
    private boolean mBaseMethodCalled;
    private final View.OnClickListener mClickListener;

    @NonNull
    private final Context mContext;
    private boolean mCopyingEnabled;
    private Object mDefaultValue;
    private String mDependencyKey;
    private boolean mDependencyMet;
    private List<Preference> mDependents;
    private boolean mEnabled;
    private Bundle mExtras;
    private String mFragment;
    private boolean mHasId;
    private boolean mHasSingleLineTitleAttr;
    private Drawable mIcon;
    private int mIconResId;
    private boolean mIconSpaceReserved;
    private long mId;
    private Intent mIntent;
    private String mKey;
    private int mLayoutResId;
    private OnPreferenceChangeInternalListener mListener;
    private OnPreferenceChangeListener mOnChangeListener;
    private OnPreferenceClickListener mOnClickListener;
    private OnPreferenceCopyListener mOnCopyListener;
    private int mOrder;
    private boolean mParentDependencyMet;
    private PreferenceGroup mParentGroup;
    private boolean mPersistent;

    @Nullable
    private PreferenceDataStore mPreferenceDataStore;

    @Nullable
    private PreferenceManager mPreferenceManager;
    private boolean mRequiresKey;
    private boolean mSelectable;
    private boolean mShouldDisableView;
    private boolean mSingleLineTitle;
    private CharSequence mSummary;
    private SummaryProvider mSummaryProvider;
    private CharSequence mTitle;
    private int mViewId;
    private boolean mVisible;
    private boolean mWasDetached;
    private int mWidgetLayoutResId;

    public static class BaseSavedState extends AbsSavedState {

        @NonNull
        public static final Parcelable.Creator<BaseSavedState> CREATOR = new Parcelable.Creator<BaseSavedState>() { // from class: androidx.preference.Preference.BaseSavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public BaseSavedState createFromParcel(Parcel parcel) {
                return new BaseSavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public BaseSavedState[] newArray(int i10) {
                return new BaseSavedState[i10];
            }
        };

        public BaseSavedState(Parcel parcel) {
            super(parcel);
        }

        public BaseSavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    interface OnPreferenceChangeInternalListener {
        void c(@NonNull Preference preference);

        void e(@NonNull Preference preference);
    }

    public interface OnPreferenceChangeListener {
        boolean a(@NonNull Preference preference, Object obj);
    }

    public interface OnPreferenceClickListener {
        boolean a(@NonNull Preference preference);
    }

    private static class OnPreferenceCopyListener implements View.OnCreateContextMenuListener, MenuItem.OnMenuItemClickListener {
        private final Preference mPreference;

        @Override // android.view.View.OnCreateContextMenuListener
        public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
            CharSequence charSequenceZ = this.mPreference.z();
            if (!this.mPreference.E() || TextUtils.isEmpty(charSequenceZ)) {
                return;
            }
            contextMenu.setHeaderTitle(charSequenceZ);
            contextMenu.add(0, 0, 0, R.string.copy).setOnMenuItemClickListener(this);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            ClipboardManager clipboardManager = (ClipboardManager) this.mPreference.i().getSystemService("clipboard");
            CharSequence charSequenceZ = this.mPreference.z();
            clipboardManager.setPrimaryClip(ClipData.newPlainText(Preference.CLIPBOARD_ID, charSequenceZ));
            Toast.makeText(this.mPreference.i(), this.mPreference.i().getString(R.string.preference_copied, charSequenceZ), 0).show();
            return true;
        }

        OnPreferenceCopyListener(@NonNull Preference preference) {
            this.mPreference = preference;
        }
    }

    public interface SummaryProvider<T extends Preference> {
        @Nullable
        CharSequence a(@NonNull T t5);
    }

    public Preference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        this.mOrder = Integer.MAX_VALUE;
        this.mViewId = 0;
        this.mEnabled = true;
        this.mSelectable = true;
        this.mPersistent = true;
        this.mDependencyMet = true;
        this.mParentDependencyMet = true;
        this.mVisible = true;
        this.mAllowDividerAbove = true;
        this.mAllowDividerBelow = true;
        this.mSingleLineTitle = true;
        this.mShouldDisableView = true;
        int i12 = R.layout.preference;
        this.mLayoutResId = i12;
        this.mClickListener = new View.OnClickListener() { // from class: androidx.preference.Preference.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Preference.this.Y(view);
            }
        };
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Preference, i10, i11);
        this.mIconResId = TypedArrayUtils.n(typedArrayObtainStyledAttributes, R.styleable.Preference_icon, R.styleable.Preference_android_icon, 0);
        this.mKey = TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.Preference_key, R.styleable.Preference_android_key);
        this.mTitle = TypedArrayUtils.p(typedArrayObtainStyledAttributes, R.styleable.Preference_title, R.styleable.Preference_android_title);
        this.mSummary = TypedArrayUtils.p(typedArrayObtainStyledAttributes, R.styleable.Preference_summary, R.styleable.Preference_android_summary);
        this.mOrder = TypedArrayUtils.d(typedArrayObtainStyledAttributes, R.styleable.Preference_order, R.styleable.Preference_android_order, Integer.MAX_VALUE);
        this.mFragment = TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.Preference_fragment, R.styleable.Preference_android_fragment);
        this.mLayoutResId = TypedArrayUtils.n(typedArrayObtainStyledAttributes, R.styleable.Preference_layout, R.styleable.Preference_android_layout, i12);
        this.mWidgetLayoutResId = TypedArrayUtils.n(typedArrayObtainStyledAttributes, R.styleable.Preference_widgetLayout, R.styleable.Preference_android_widgetLayout, 0);
        this.mEnabled = TypedArrayUtils.b(typedArrayObtainStyledAttributes, R.styleable.Preference_enabled, R.styleable.Preference_android_enabled, true);
        this.mSelectable = TypedArrayUtils.b(typedArrayObtainStyledAttributes, R.styleable.Preference_selectable, R.styleable.Preference_android_selectable, true);
        this.mPersistent = TypedArrayUtils.b(typedArrayObtainStyledAttributes, R.styleable.Preference_persistent, R.styleable.Preference_android_persistent, true);
        this.mDependencyKey = TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.Preference_dependency, R.styleable.Preference_android_dependency);
        int i13 = R.styleable.Preference_allowDividerAbove;
        this.mAllowDividerAbove = TypedArrayUtils.b(typedArrayObtainStyledAttributes, i13, i13, this.mSelectable);
        int i14 = R.styleable.Preference_allowDividerBelow;
        this.mAllowDividerBelow = TypedArrayUtils.b(typedArrayObtainStyledAttributes, i14, i14, this.mSelectable);
        int i15 = R.styleable.Preference_defaultValue;
        if (typedArrayObtainStyledAttributes.hasValue(i15)) {
            this.mDefaultValue = R(typedArrayObtainStyledAttributes, i15);
        } else {
            int i16 = R.styleable.Preference_android_defaultValue;
            if (typedArrayObtainStyledAttributes.hasValue(i16)) {
                this.mDefaultValue = R(typedArrayObtainStyledAttributes, i16);
            }
        }
        this.mShouldDisableView = TypedArrayUtils.b(typedArrayObtainStyledAttributes, R.styleable.Preference_shouldDisableView, R.styleable.Preference_android_shouldDisableView, true);
        int i17 = R.styleable.Preference_singleLineTitle;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i17);
        this.mHasSingleLineTitleAttr = zHasValue;
        if (zHasValue) {
            this.mSingleLineTitle = TypedArrayUtils.b(typedArrayObtainStyledAttributes, i17, R.styleable.Preference_android_singleLineTitle, true);
        }
        this.mIconSpaceReserved = TypedArrayUtils.b(typedArrayObtainStyledAttributes, R.styleable.Preference_iconSpaceReserved, R.styleable.Preference_android_iconSpaceReserved, false);
        int i18 = R.styleable.Preference_isPreferenceVisible;
        this.mVisible = TypedArrayUtils.b(typedArrayObtainStyledAttributes, i18, i18, true);
        int i19 = R.styleable.Preference_enableCopying;
        this.mCopyingEnabled = TypedArrayUtils.b(typedArrayObtainStyledAttributes, i19, i19, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Nullable
    public final SummaryProvider A() {
        return this.mSummaryProvider;
    }

    @Nullable
    public CharSequence B() {
        return this.mTitle;
    }

    public final int C() {
        return this.mWidgetLayoutResId;
    }

    public boolean E() {
        return this.mCopyingEnabled;
    }

    public boolean F() {
        return this.mEnabled && this.mDependencyMet && this.mParentDependencyMet;
    }

    public boolean G() {
        return this.mPersistent;
    }

    public boolean H() {
        return this.mSelectable;
    }

    public final boolean I() {
        return this.mVisible;
    }

    protected void O() {
    }

    @Nullable
    protected Object R(@NonNull TypedArray typedArray, int i10) {
        return null;
    }

    @CallSuper
    @Deprecated
    public void S(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    protected void V(@Nullable Parcelable parcelable) {
        this.mBaseMethodCalled = true;
        if (parcelable != AbsSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    @Nullable
    protected Parcelable W() {
        this.mBaseMethodCalled = true;
        return AbsSavedState.EMPTY_STATE;
    }

    final void c() {
        this.mWasDetached = false;
    }

    @NonNull
    public Context i() {
        return this.mContext;
    }

    public void k0(int i10) {
        this.mLayoutResId = i10;
    }

    @Nullable
    public String l() {
        return this.mFragment;
    }

    final void l0(@Nullable OnPreferenceChangeInternalListener onPreferenceChangeInternalListener) {
        this.mListener = onPreferenceChangeInternalListener;
    }

    public void m0(@Nullable OnPreferenceClickListener onPreferenceClickListener) {
        this.mOnClickListener = onPreferenceClickListener;
    }

    long o() {
        return this.mId;
    }

    @Nullable
    public Intent p() {
        return this.mIntent;
    }

    public String q() {
        return this.mKey;
    }

    public final int r() {
        return this.mLayoutResId;
    }

    @Nullable
    public PreferenceGroup s() {
        return this.mParentGroup;
    }

    final boolean x0() {
        return this.mWasDetached;
    }

    public PreferenceManager y() {
        return this.mPreferenceManager;
    }

    private void d0() {
        if (TextUtils.isEmpty(this.mDependencyKey)) {
            return;
        }
        Preference preferenceH = h(this.mDependencyKey);
        if (preferenceH != null) {
            preferenceH.e0(this);
            return;
        }
        throw new IllegalStateException("Dependency \"" + this.mDependencyKey + "\" not found for preference \"" + this.mKey + "\" (title: \"" + ((Object) this.mTitle) + "\"");
    }

    private void e0(Preference preference) {
        if (this.mDependents == null) {
            this.mDependents = new ArrayList();
        }
        this.mDependents.add(preference);
        preference.P(this, s0());
    }

    private void u0(@NonNull SharedPreferences.Editor editor) {
        if (this.mPreferenceManager.p()) {
            editor.apply();
        }
    }

    private void v0() {
        Preference preferenceH;
        String str = this.mDependencyKey;
        if (str == null || (preferenceH = h(str)) == null) {
            return;
        }
        preferenceH.w0(this);
    }

    private void w0(Preference preference) {
        List<Preference> list = this.mDependents;
        if (list != null) {
            list.remove(preference);
        }
    }

    public boolean D() {
        return !TextUtils.isEmpty(this.mKey);
    }

    protected void J() {
        OnPreferenceChangeInternalListener onPreferenceChangeInternalListener = this.mListener;
        if (onPreferenceChangeInternalListener != null) {
            onPreferenceChangeInternalListener.c(this);
        }
    }

    public void K(boolean z6) {
        List<Preference> list = this.mDependents;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).P(this, z6);
        }
    }

    protected void L() {
        OnPreferenceChangeInternalListener onPreferenceChangeInternalListener = this.mListener;
        if (onPreferenceChangeInternalListener != null) {
            onPreferenceChangeInternalListener.e(this);
        }
    }

    public void N(@NonNull PreferenceViewHolder preferenceViewHolder) {
        Integer numValueOf;
        View view = preferenceViewHolder.itemView;
        view.setOnClickListener(this.mClickListener);
        view.setId(this.mViewId);
        TextView textView = (TextView) preferenceViewHolder.a(android.R.id.summary);
        if (textView != null) {
            CharSequence charSequenceZ = z();
            if (TextUtils.isEmpty(charSequenceZ)) {
                textView.setVisibility(8);
                numValueOf = null;
            } else {
                textView.setText(charSequenceZ);
                textView.setVisibility(0);
                numValueOf = Integer.valueOf(textView.getCurrentTextColor());
            }
        } else {
            numValueOf = null;
        }
        TextView textView2 = (TextView) preferenceViewHolder.a(android.R.id.title);
        if (textView2 != null) {
            CharSequence charSequenceB = B();
            if (TextUtils.isEmpty(charSequenceB)) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(charSequenceB);
                textView2.setVisibility(0);
                if (this.mHasSingleLineTitleAttr) {
                    textView2.setSingleLine(this.mSingleLineTitle);
                }
                if (!H() && F() && numValueOf != null) {
                    textView2.setTextColor(numValueOf.intValue());
                }
            }
        }
        ImageView imageView = (ImageView) preferenceViewHolder.a(android.R.id.icon);
        if (imageView != null) {
            int i10 = this.mIconResId;
            if (i10 != 0 || this.mIcon != null) {
                if (this.mIcon == null) {
                    this.mIcon = AppCompatResources.b(this.mContext, i10);
                }
                Drawable drawable = this.mIcon;
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                }
            }
            if (this.mIcon != null) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(this.mIconSpaceReserved ? 4 : 8);
            }
        }
        View viewA = preferenceViewHolder.a(R.id.icon_frame);
        if (viewA == null) {
            viewA = preferenceViewHolder.a(16908350);
        }
        if (viewA != null) {
            if (this.mIcon != null) {
                viewA.setVisibility(0);
            } else {
                viewA.setVisibility(this.mIconSpaceReserved ? 4 : 8);
            }
        }
        if (this.mShouldDisableView) {
            h0(view, F());
        } else {
            h0(view, true);
        }
        boolean zH = H();
        view.setFocusable(zH);
        view.setClickable(zH);
        preferenceViewHolder.e(this.mAllowDividerAbove);
        preferenceViewHolder.f(this.mAllowDividerBelow);
        boolean zE = E();
        if (zE && this.mOnCopyListener == null) {
            this.mOnCopyListener = new OnPreferenceCopyListener(this);
        }
        view.setOnCreateContextMenuListener(zE ? this.mOnCopyListener : null);
        view.setLongClickable(zE);
        if (!zE || zH) {
            return;
        }
        ViewCompat.y0(view, null);
    }

    public void P(@NonNull Preference preference, boolean z6) {
        if (this.mDependencyMet == z6) {
            this.mDependencyMet = !z6;
            K(s0());
            J();
        }
    }

    public void T(@NonNull Preference preference, boolean z6) {
        if (this.mParentDependencyMet == z6) {
            this.mParentDependencyMet = !z6;
            K(s0());
            J();
        }
    }

    void a(@Nullable PreferenceGroup preferenceGroup) {
        if (preferenceGroup != null && this.mParentGroup != null) {
            throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
        }
        this.mParentGroup = preferenceGroup;
    }

    public boolean b(Object obj) {
        OnPreferenceChangeListener onPreferenceChangeListener = this.mOnChangeListener;
        return onPreferenceChangeListener == null || onPreferenceChangeListener.a(this, obj);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NonNull Preference preference) {
        int i10 = this.mOrder;
        int i11 = preference.mOrder;
        if (i10 != i11) {
            return i10 - i11;
        }
        CharSequence charSequence = this.mTitle;
        CharSequence charSequence2 = preference.mTitle;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference.mTitle.toString());
    }

    @Nullable
    protected <T extends Preference> T h(@NonNull String str) {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null) {
            return null;
        }
        return (T) preferenceManager.a(str);
    }

    public void i0(int i10) {
        j0(AppCompatResources.b(this.mContext, i10));
        this.mIconResId = i10;
    }

    @NonNull
    public Bundle j() {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        return this.mExtras;
    }

    public void j0(@Nullable Drawable drawable) {
        if (this.mIcon != drawable) {
            this.mIcon = drawable;
            this.mIconResId = 0;
            J();
        }
    }

    @NonNull
    StringBuilder k() {
        StringBuilder sb = new StringBuilder();
        CharSequence charSequenceB = B();
        if (!TextUtils.isEmpty(charSequenceB)) {
            sb.append(charSequenceB);
            sb.append(' ');
        }
        CharSequence charSequenceZ = z();
        if (!TextUtils.isEmpty(charSequenceZ)) {
            sb.append(charSequenceZ);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb;
    }

    @Nullable
    public Drawable n() {
        int i10;
        if (this.mIcon == null && (i10 = this.mIconResId) != 0) {
            this.mIcon = AppCompatResources.b(this.mContext, i10);
        }
        return this.mIcon;
    }

    public void n0(int i10) {
        if (i10 != this.mOrder) {
            this.mOrder = i10;
            L();
        }
    }

    public final void p0(@Nullable SummaryProvider summaryProvider) {
        this.mSummaryProvider = summaryProvider;
        J();
    }

    public void q0(int i10) {
        r0(this.mContext.getString(i10));
    }

    public void r0(@Nullable CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.mTitle)) {
            return;
        }
        this.mTitle = charSequence;
        J();
    }

    protected boolean t0() {
        return this.mPreferenceManager != null && G() && D();
    }

    @Nullable
    public PreferenceDataStore x() {
        PreferenceDataStore preferenceDataStore = this.mPreferenceDataStore;
        if (preferenceDataStore != null) {
            return preferenceDataStore;
        }
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager != null) {
            return preferenceManager.i();
        }
        return null;
    }

    private void h0(@NonNull View view, boolean z6) {
        view.setEnabled(z6);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                h0(viewGroup.getChildAt(childCount), z6);
            }
        }
    }

    public void M() {
        d0();
    }

    public void Q() {
        v0();
        this.mWasDetached = true;
    }

    protected void U() {
        v0();
    }

    @RestrictTo
    public void X() {
        PreferenceManager.OnPreferenceTreeClickListener onPreferenceTreeClickListenerG;
        if (F() && H()) {
            O();
            OnPreferenceClickListener onPreferenceClickListener = this.mOnClickListener;
            if (onPreferenceClickListener != null && onPreferenceClickListener.a(this)) {
                return;
            }
            PreferenceManager preferenceManagerY = y();
            if ((preferenceManagerY == null || (onPreferenceTreeClickListenerG = preferenceManagerY.g()) == null || !onPreferenceTreeClickListenerG.d(this)) && this.mIntent != null) {
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(i(), this.mIntent);
            }
        }
    }

    @RestrictTo
    protected void Y(@NonNull View view) {
        X();
    }

    protected boolean Z(boolean z6) {
        if (!t0()) {
            return false;
        }
        if (z6 == t(!z6)) {
            return true;
        }
        PreferenceDataStore preferenceDataStoreX = x();
        if (preferenceDataStoreX != null) {
            preferenceDataStoreX.e(this.mKey, z6);
        } else {
            SharedPreferences.Editor editorE = this.mPreferenceManager.e();
            editorE.putBoolean(this.mKey, z6);
            u0(editorE);
        }
        return true;
    }

    protected boolean a0(int i10) {
        if (!t0()) {
            return false;
        }
        if (i10 == u(~i10)) {
            return true;
        }
        PreferenceDataStore preferenceDataStoreX = x();
        if (preferenceDataStoreX != null) {
            preferenceDataStoreX.f(this.mKey, i10);
        } else {
            SharedPreferences.Editor editorE = this.mPreferenceManager.e();
            editorE.putInt(this.mKey, i10);
            u0(editorE);
        }
        return true;
    }

    protected boolean b0(String str) {
        if (!t0()) {
            return false;
        }
        if (TextUtils.equals(str, v(null))) {
            return true;
        }
        PreferenceDataStore preferenceDataStoreX = x();
        if (preferenceDataStoreX != null) {
            preferenceDataStoreX.g(this.mKey, str);
        } else {
            SharedPreferences.Editor editorE = this.mPreferenceManager.e();
            editorE.putString(this.mKey, str);
            u0(editorE);
        }
        return true;
    }

    public boolean c0(Set<String> set) {
        if (!t0()) {
            return false;
        }
        if (set.equals(w(null))) {
            return true;
        }
        PreferenceDataStore preferenceDataStoreX = x();
        if (preferenceDataStoreX != null) {
            preferenceDataStoreX.h(this.mKey, set);
        } else {
            SharedPreferences.Editor editorE = this.mPreferenceManager.e();
            editorE.putStringSet(this.mKey, set);
            u0(editorE);
        }
        return true;
    }

    void e(@NonNull Bundle bundle) {
        Parcelable parcelable;
        if (D() && (parcelable = bundle.getParcelable(this.mKey)) != null) {
            this.mBaseMethodCalled = false;
            V(parcelable);
            if (!this.mBaseMethodCalled) {
                throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
            }
        }
    }

    void f(@NonNull Bundle bundle) {
        if (D()) {
            this.mBaseMethodCalled = false;
            Parcelable parcelableW = W();
            if (this.mBaseMethodCalled) {
                if (parcelableW != null) {
                    bundle.putParcelable(this.mKey, parcelableW);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
        }
    }

    public void f0(@NonNull Bundle bundle) {
        e(bundle);
    }

    public void g0(@NonNull Bundle bundle) {
        f(bundle);
    }

    public void o0(@Nullable CharSequence charSequence) {
        if (A() == null) {
            if (!TextUtils.equals(this.mSummary, charSequence)) {
                this.mSummary = charSequence;
                J();
                return;
            }
            return;
        }
        throw new IllegalStateException("Preference already has a SummaryProvider set.");
    }

    public boolean s0() {
        return !F();
    }

    protected boolean t(boolean z6) {
        if (!t0()) {
            return z6;
        }
        PreferenceDataStore preferenceDataStoreX = x();
        if (preferenceDataStoreX != null) {
            return preferenceDataStoreX.a(this.mKey, z6);
        }
        return this.mPreferenceManager.k().getBoolean(this.mKey, z6);
    }

    @NonNull
    public String toString() {
        return k().toString();
    }

    protected int u(int i10) {
        if (!t0()) {
            return i10;
        }
        PreferenceDataStore preferenceDataStoreX = x();
        if (preferenceDataStoreX != null) {
            return preferenceDataStoreX.b(this.mKey, i10);
        }
        return this.mPreferenceManager.k().getInt(this.mKey, i10);
    }

    protected String v(String str) {
        if (!t0()) {
            return str;
        }
        PreferenceDataStore preferenceDataStoreX = x();
        if (preferenceDataStoreX != null) {
            return preferenceDataStoreX.c(this.mKey, str);
        }
        return this.mPreferenceManager.k().getString(this.mKey, str);
    }

    public Set<String> w(Set<String> set) {
        if (!t0()) {
            return set;
        }
        PreferenceDataStore preferenceDataStoreX = x();
        if (preferenceDataStoreX != null) {
            return preferenceDataStoreX.d(this.mKey, set);
        }
        return this.mPreferenceManager.k().getStringSet(this.mKey, set);
    }

    @Nullable
    public CharSequence z() {
        if (A() != null) {
            return A().a(this);
        }
        return this.mSummary;
    }

    public Preference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public Preference(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.a(context, R.attr.preferenceStyle, android.R.attr.preferenceStyle));
    }

    public Preference(@NonNull Context context) {
        this(context, null);
    }
}
