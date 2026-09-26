package androidx.fragment.app;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TabHost;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {
    private boolean mAttached;
    private int mContainerId;
    private Context mContext;
    private FragmentManager mFragmentManager;
    private TabInfo mLastTab;
    private TabHost.OnTabChangeListener mOnTabChangeListener;
    private FrameLayout mRealTabContent;
    private final ArrayList<TabInfo> mTabs;

    static class DummyTabFactory implements TabHost.TabContentFactory {
        private final Context mContext;

        @Override // android.widget.TabHost.TabContentFactory
        public View createTabContent(String str) {
            View view = new View(this.mContext);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }

        public DummyTabFactory(Context context) {
            this.mContext = context;
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.fragment.app.FragmentTabHost.SavedState.1
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
        String curTab;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.curTab = parcel.readString();
        }

        @NonNull
        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.curTab + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.curTab);
        }
    }

    static final class TabInfo {

        @Nullable
        final Bundle args;

        @NonNull
        final Class<?> clss;
        Fragment fragment;

        @NonNull
        final String tag;
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context) {
        super(context, null);
        this.mTabs = new ArrayList<>();
        c(context, null);
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(@Nullable TabHost.OnTabChangeListener onTabChangeListener) {
        this.mOnTabChangeListener = onTabChangeListener;
    }

    @Nullable
    private TabInfo b(String str) {
        int size = this.mTabs.size();
        for (int i10 = 0; i10 < size; i10++) {
            TabInfo tabInfo = this.mTabs.get(i10);
            if (tabInfo.tag.equals(str)) {
                return tabInfo;
            }
        }
        return null;
    }

    @Override // android.view.View
    @Deprecated
    protected void onRestoreInstanceState(@SuppressLint({"UnknownNullness"}) Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.curTab);
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(@Nullable String str) {
        FragmentTransaction fragmentTransactionA;
        if (this.mAttached && (fragmentTransactionA = a(str, null)) != null) {
            fragmentTransactionA.j();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.mOnTabChangeListener;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Nullable
    private FragmentTransaction a(@Nullable String str, @Nullable FragmentTransaction fragmentTransaction) {
        Fragment fragment;
        TabInfo tabInfoB = b(str);
        if (this.mLastTab != tabInfoB) {
            if (fragmentTransaction == null) {
                fragmentTransaction = this.mFragmentManager.q();
            }
            TabInfo tabInfo = this.mLastTab;
            if (tabInfo != null && (fragment = tabInfo.fragment) != null) {
                fragmentTransaction.o(fragment);
            }
            if (tabInfoB != null) {
                Fragment fragment2 = tabInfoB.fragment;
                if (fragment2 == null) {
                    Fragment fragmentA = this.mFragmentManager.z0().a(this.mContext.getClassLoader(), tabInfoB.clss.getName());
                    tabInfoB.fragment = fragmentA;
                    fragmentA.setArguments(tabInfoB.args);
                    fragmentTransaction.c(this.mContainerId, tabInfoB.fragment, tabInfoB.tag);
                } else {
                    fragmentTransaction.i(fragment2);
                }
            }
            this.mLastTab = tabInfoB;
        }
        return fragmentTransaction;
    }

    private void c(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.inflatedId}, 0, 0);
        this.mContainerId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.mTabs.size();
        FragmentTransaction fragmentTransactionQ = null;
        for (int i10 = 0; i10 < size; i10++) {
            TabInfo tabInfo = this.mTabs.get(i10);
            Fragment fragmentM0 = this.mFragmentManager.m0(tabInfo.tag);
            tabInfo.fragment = fragmentM0;
            if (fragmentM0 != null && !fragmentM0.isDetached()) {
                if (tabInfo.tag.equals(currentTabTag)) {
                    this.mLastTab = tabInfo;
                } else {
                    if (fragmentTransactionQ == null) {
                        fragmentTransactionQ = this.mFragmentManager.q();
                    }
                    fragmentTransactionQ.o(tabInfo.fragment);
                }
            }
        }
        this.mAttached = true;
        FragmentTransaction fragmentTransactionA = a(currentTabTag, fragmentTransactionQ);
        if (fragmentTransactionA != null) {
            fragmentTransactionA.j();
            this.mFragmentManager.i0();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mAttached = false;
    }

    @Override // android.view.View
    @NonNull
    @Deprecated
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.curTab = getCurrentTabTag();
        return savedState;
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTabs = new ArrayList<>();
        c(context, attributeSet);
    }
}
