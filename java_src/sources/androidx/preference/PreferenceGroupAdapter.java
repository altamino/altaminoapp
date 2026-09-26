package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
public class PreferenceGroupAdapter extends RecyclerView.Adapter<PreferenceViewHolder> implements Preference.OnPreferenceChangeInternalListener, PreferenceGroup.PreferencePositionCallback {
    private final PreferenceGroup mPreferenceGroup;
    private final List<PreferenceResourceDescriptor> mPreferenceResourceDescriptors;
    private List<Preference> mPreferences;
    private List<Preference> mVisiblePreferences;
    private final Runnable mSyncRunnable = new Runnable() { // from class: androidx.preference.PreferenceGroupAdapter.1
        @Override // java.lang.Runnable
        public void run() {
            PreferenceGroupAdapter.this.n();
        }
    };
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    private static class PreferenceResourceDescriptor {
        String mClassName;
        int mLayoutResId;
        int mWidgetLayoutResId;

        public boolean equals(Object obj) {
            if (!(obj instanceof PreferenceResourceDescriptor)) {
                return false;
            }
            PreferenceResourceDescriptor preferenceResourceDescriptor = (PreferenceResourceDescriptor) obj;
            return this.mLayoutResId == preferenceResourceDescriptor.mLayoutResId && this.mWidgetLayoutResId == preferenceResourceDescriptor.mWidgetLayoutResId && TextUtils.equals(this.mClassName, preferenceResourceDescriptor.mClassName);
        }

        public int hashCode() {
            return ((((527 + this.mLayoutResId) * 31) + this.mWidgetLayoutResId) * 31) + this.mClassName.hashCode();
        }

        PreferenceResourceDescriptor(@NonNull Preference preference) {
            this.mClassName = preference.getClass().getName();
            this.mLayoutResId = preference.r();
            this.mWidgetLayoutResId = preference.C();
        }
    }

    private ExpandButton g(final PreferenceGroup preferenceGroup, List<Preference> list) {
        ExpandButton expandButton = new ExpandButton(preferenceGroup.i(), list, preferenceGroup.o());
        expandButton.m0(new Preference.OnPreferenceClickListener() { // from class: androidx.preference.PreferenceGroupAdapter.3
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public boolean a(@NonNull Preference preference) {
                preferenceGroup.G0(Integer.MAX_VALUE);
                PreferenceGroupAdapter.this.e(preference);
                PreferenceGroup.OnExpandButtonClickListener onExpandButtonClickListenerA0 = preferenceGroup.A0();
                if (onExpandButtonClickListenerA0 == null) {
                    return true;
                }
                onExpandButtonClickListenerA0.a();
                return true;
            }
        });
        return expandButton;
    }

    private List<Preference> h(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int iC0 = preferenceGroup.C0();
        int i10 = 0;
        for (int i11 = 0; i11 < iC0; i11++) {
            Preference preferenceB0 = preferenceGroup.B0(i11);
            if (preferenceB0.I()) {
                if (!k(preferenceGroup) || i10 < preferenceGroup.z0()) {
                    arrayList.add(preferenceB0);
                } else {
                    arrayList2.add(preferenceB0);
                }
                if (preferenceB0 instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) preferenceB0;
                    if (!preferenceGroup2.D0()) {
                        continue;
                    } else {
                        if (k(preferenceGroup) && k(preferenceGroup2)) {
                            throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                        }
                        for (Preference preference : h(preferenceGroup2)) {
                            if (!k(preferenceGroup) || i10 < preferenceGroup.z0()) {
                                arrayList.add(preference);
                            } else {
                                arrayList2.add(preference);
                            }
                            i10++;
                        }
                    }
                } else {
                    i10++;
                }
            }
        }
        if (k(preferenceGroup) && i10 > preferenceGroup.z0()) {
            arrayList.add(g(preferenceGroup, arrayList2));
        }
        return arrayList;
    }

    @Override // androidx.preference.PreferenceGroup.PreferencePositionCallback
    public int b(@NonNull Preference preference) {
        int size = this.mVisiblePreferences.size();
        for (int i10 = 0; i10 < size; i10++) {
            Preference preference2 = this.mVisiblePreferences.get(i10);
            if (preference2 != null && preference2.equals(preference)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeInternalListener
    public void c(@NonNull Preference preference) {
        int iIndexOf = this.mVisiblePreferences.indexOf(preference);
        if (iIndexOf != -1) {
            notifyItemChanged(iIndexOf, preference);
        }
    }

    @Override // androidx.preference.PreferenceGroup.PreferencePositionCallback
    public int d(@NonNull String str) {
        int size = this.mVisiblePreferences.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (TextUtils.equals(str, this.mVisiblePreferences.get(i10).q())) {
                return i10;
            }
        }
        return -1;
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeInternalListener
    public void e(@NonNull Preference preference) {
        this.mHandler.removeCallbacks(this.mSyncRunnable);
        this.mHandler.post(this.mSyncRunnable);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mVisiblePreferences.size();
    }

    @Nullable
    public Preference j(int i10) {
        if (i10 < 0 || i10 >= getItemCount()) {
            return null;
        }
        return this.mVisiblePreferences.get(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public PreferenceViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        PreferenceResourceDescriptor preferenceResourceDescriptor = this.mPreferenceResourceDescriptors.get(i10);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        TypedArray typedArrayObtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, R.styleable.BackgroundStyle);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.BackgroundStyle_android_selectableItemBackground);
        if (drawable == null) {
            drawable = AppCompatResources.b(viewGroup.getContext(), android.R.drawable.list_selector_background);
        }
        typedArrayObtainStyledAttributes.recycle();
        View viewInflate = layoutInflaterFrom.inflate(preferenceResourceDescriptor.mLayoutResId, viewGroup, false);
        if (viewInflate.getBackground() == null) {
            ViewCompat.y0(viewInflate, drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) viewInflate.findViewById(android.R.id.widget_frame);
        if (viewGroup2 != null) {
            int i11 = preferenceResourceDescriptor.mWidgetLayoutResId;
            if (i11 != 0) {
                layoutInflaterFrom.inflate(i11, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new PreferenceViewHolder(viewInflate);
    }

    void n() {
        Iterator<Preference> it = this.mPreferences.iterator();
        while (it.hasNext()) {
            it.next().l0(null);
        }
        ArrayList arrayList = new ArrayList(this.mPreferences.size());
        this.mPreferences = arrayList;
        i(arrayList, this.mPreferenceGroup);
        final List<Preference> list = this.mVisiblePreferences;
        final List<Preference> listH = h(this.mPreferenceGroup);
        this.mVisiblePreferences = listH;
        PreferenceManager preferenceManagerY = this.mPreferenceGroup.y();
        if (preferenceManagerY == null || preferenceManagerY.h() == null) {
            notifyDataSetChanged();
        } else {
            final PreferenceManager.PreferenceComparisonCallback preferenceComparisonCallbackH = preferenceManagerY.h();
            DiffUtil.b(new DiffUtil.Callback() { // from class: androidx.preference.PreferenceGroupAdapter.2
                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean a(int i10, int i11) {
                    return preferenceComparisonCallbackH.a((Preference) list.get(i10), (Preference) listH.get(i11));
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean b(int i10, int i11) {
                    return preferenceComparisonCallbackH.b((Preference) list.get(i10), (Preference) listH.get(i11));
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int d() {
                    return listH.size();
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int e() {
                    return list.size();
                }
            }).c(this);
        }
        Iterator<Preference> it2 = this.mPreferences.iterator();
        while (it2.hasNext()) {
            it2.next().c();
        }
    }

    public PreferenceGroupAdapter(@NonNull PreferenceGroup preferenceGroup) {
        this.mPreferenceGroup = preferenceGroup;
        preferenceGroup.l0(this);
        this.mPreferences = new ArrayList();
        this.mVisiblePreferences = new ArrayList();
        this.mPreferenceResourceDescriptors = new ArrayList();
        if (preferenceGroup instanceof PreferenceScreen) {
            setHasStableIds(((PreferenceScreen) preferenceGroup).I0());
        } else {
            setHasStableIds(true);
        }
        n();
    }

    private void i(List<Preference> list, PreferenceGroup preferenceGroup) {
        preferenceGroup.H0();
        int iC0 = preferenceGroup.C0();
        for (int i10 = 0; i10 < iC0; i10++) {
            Preference preferenceB0 = preferenceGroup.B0(i10);
            list.add(preferenceB0);
            PreferenceResourceDescriptor preferenceResourceDescriptor = new PreferenceResourceDescriptor(preferenceB0);
            if (!this.mPreferenceResourceDescriptors.contains(preferenceResourceDescriptor)) {
                this.mPreferenceResourceDescriptors.add(preferenceResourceDescriptor);
            }
            if (preferenceB0 instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) preferenceB0;
                if (preferenceGroup2.D0()) {
                    i(list, preferenceGroup2);
                }
            }
            preferenceB0.l0(this);
        }
    }

    private boolean k(PreferenceGroup preferenceGroup) {
        if (preferenceGroup.z0() != Integer.MAX_VALUE) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        if (!hasStableIds()) {
            return -1L;
        }
        return j(i10).o();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        PreferenceResourceDescriptor preferenceResourceDescriptor = new PreferenceResourceDescriptor(j(i10));
        int iIndexOf = this.mPreferenceResourceDescriptors.indexOf(preferenceResourceDescriptor);
        if (iIndexOf != -1) {
            return iIndexOf;
        }
        int size = this.mPreferenceResourceDescriptors.size();
        this.mPreferenceResourceDescriptors.add(preferenceResourceDescriptor);
        return size;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull PreferenceViewHolder preferenceViewHolder, int i10) {
        Preference preferenceJ = j(i10);
        preferenceViewHolder.d();
        preferenceJ.N(preferenceViewHolder);
    }
}
