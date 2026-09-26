package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.TypedArrayUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public abstract class PreferenceGroup extends Preference {
    private static final String TAG = "PreferenceGroup";
    private boolean mAttachedToHierarchy;
    private final Runnable mClearRecycleCacheRunnable;
    private int mCurrentPreferenceOrder;
    private final Handler mHandler;
    final SimpleArrayMap<String, Long> mIdRecycleCache;
    private int mInitialExpandedChildrenCount;
    private OnExpandButtonClickListener mOnExpandButtonClickListener;
    private boolean mOrderingAsAdded;
    private final List<Preference> mPreferences;

    @RestrictTo
    public interface OnExpandButtonClickListener {
        void a();
    }

    public interface PreferencePositionCallback {
        int b(@NonNull Preference preference);

        int d(@NonNull String str);
    }

    public PreferenceGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mIdRecycleCache = new SimpleArrayMap<>();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mOrderingAsAdded = true;
        this.mCurrentPreferenceOrder = 0;
        this.mAttachedToHierarchy = false;
        this.mInitialExpandedChildrenCount = Integer.MAX_VALUE;
        this.mOnExpandButtonClickListener = null;
        this.mClearRecycleCacheRunnable = new Runnable() { // from class: androidx.preference.PreferenceGroup.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    PreferenceGroup.this.mIdRecycleCache.clear();
                }
            }
        };
        this.mPreferences = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PreferenceGroup, i10, i11);
        int i12 = R.styleable.PreferenceGroup_orderingFromXml;
        this.mOrderingAsAdded = TypedArrayUtils.b(typedArrayObtainStyledAttributes, i12, i12, true);
        int i13 = R.styleable.PreferenceGroup_initialExpandedChildrenCount;
        if (typedArrayObtainStyledAttributes.hasValue(i13)) {
            G0(TypedArrayUtils.d(typedArrayObtainStyledAttributes, i13, i13, Integer.MAX_VALUE));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private boolean F0(@NonNull Preference preference) {
        boolean zRemove;
        synchronized (this) {
            try {
                preference.U();
                if (preference.s() == this) {
                    preference.a(null);
                }
                zRemove = this.mPreferences.remove(preference);
                if (zRemove) {
                    String strQ = preference.q();
                    if (strQ != null) {
                        this.mIdRecycleCache.put(strQ, Long.valueOf(preference.o()));
                        this.mHandler.removeCallbacks(this.mClearRecycleCacheRunnable);
                        this.mHandler.post(this.mClearRecycleCacheRunnable);
                    }
                    if (this.mAttachedToHierarchy) {
                        preference.Q();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zRemove;
    }

    @Nullable
    @RestrictTo
    public OnExpandButtonClickListener A0() {
        return this.mOnExpandButtonClickListener;
    }

    protected boolean D0() {
        return true;
    }

    void H0() {
        synchronized (this) {
            Collections.sort(this.mPreferences);
        }
    }

    public int z0() {
        return this.mInitialExpandedChildrenCount;
    }

    static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.preference.PreferenceGroup.SavedState.1
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
        };
        int mInitialExpandedChildrenCount;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mInitialExpandedChildrenCount = parcel.readInt();
        }

        SavedState(Parcelable parcelable, int i10) {
            super(parcelable);
            this.mInitialExpandedChildrenCount = i10;
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.mInitialExpandedChildrenCount);
        }
    }

    @NonNull
    public Preference B0(int i10) {
        return this.mPreferences.get(i10);
    }

    public int C0() {
        return this.mPreferences.size();
    }

    @Override // androidx.preference.Preference
    protected void V(@Nullable Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.V(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mInitialExpandedChildrenCount = savedState.mInitialExpandedChildrenCount;
        super.V(savedState.getSuperState());
    }

    @Nullable
    public <T extends Preference> T y0(@NonNull CharSequence charSequence) {
        T t5;
        if (charSequence == null) {
            throw new IllegalArgumentException("Key cannot be null");
        }
        if (TextUtils.equals(q(), charSequence)) {
            return this;
        }
        int iC0 = C0();
        for (int i10 = 0; i10 < iC0; i10++) {
            PreferenceGroup preferenceGroup = (T) B0(i10);
            if (TextUtils.equals(preferenceGroup.q(), charSequence)) {
                return preferenceGroup;
            }
            if ((preferenceGroup instanceof PreferenceGroup) && (t5 = (T) preferenceGroup.y0(charSequence)) != null) {
                return t5;
            }
        }
        return null;
    }

    public boolean E0(@NonNull Preference preference) {
        boolean zF0 = F0(preference);
        L();
        return zF0;
    }

    public void G0(int i10) {
        if (i10 != Integer.MAX_VALUE && !D()) {
            Log.e(TAG, getClass().getSimpleName() + " should have a key defined if it contains an expandable preference");
        }
        this.mInitialExpandedChildrenCount = i10;
    }

    @Override // androidx.preference.Preference
    public void K(boolean z6) {
        super.K(z6);
        int iC0 = C0();
        for (int i10 = 0; i10 < iC0; i10++) {
            B0(i10).T(this, z6);
        }
    }

    @Override // androidx.preference.Preference
    public void M() {
        super.M();
        this.mAttachedToHierarchy = true;
        int iC0 = C0();
        for (int i10 = 0; i10 < iC0; i10++) {
            B0(i10).M();
        }
    }

    @Override // androidx.preference.Preference
    public void Q() {
        super.Q();
        this.mAttachedToHierarchy = false;
        int iC0 = C0();
        for (int i10 = 0; i10 < iC0; i10++) {
            B0(i10).Q();
        }
    }

    @Override // androidx.preference.Preference
    @NonNull
    protected Parcelable W() {
        return new SavedState(super.W(), this.mInitialExpandedChildrenCount);
    }

    @Override // androidx.preference.Preference
    protected void e(@NonNull Bundle bundle) {
        super.e(bundle);
        int iC0 = C0();
        for (int i10 = 0; i10 < iC0; i10++) {
            B0(i10).e(bundle);
        }
    }

    @Override // androidx.preference.Preference
    protected void f(@NonNull Bundle bundle) {
        super.f(bundle);
        int iC0 = C0();
        for (int i10 = 0; i10 < iC0; i10++) {
            B0(i10).f(bundle);
        }
    }

    public PreferenceGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public PreferenceGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
