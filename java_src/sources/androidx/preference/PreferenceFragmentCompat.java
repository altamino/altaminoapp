package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PreferenceFragmentCompat extends Fragment implements PreferenceManager.OnPreferenceTreeClickListener, PreferenceManager.OnDisplayPreferenceDialogListener, PreferenceManager.OnNavigateToScreenListener, DialogPreference.TargetFragment {
    public static final String ARG_PREFERENCE_ROOT = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT";
    private static final String DIALOG_FRAGMENT_TAG = "androidx.preference.PreferenceFragment.DIALOG";
    private static final int MSG_BIND_PREFERENCES = 1;
    private static final String PREFERENCES_TAG = "android:preferences";
    private static final String TAG = "PreferenceFragment";
    private boolean mHavePrefs;
    private boolean mInitDone;
    RecyclerView mList;
    private PreferenceManager mPreferenceManager;
    private Runnable mSelectPreferenceRunnable;
    private final DividerDecoration mDividerDecoration = new DividerDecoration();
    private int mLayoutResId = R.layout.preference_list_fragment;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: androidx.preference.PreferenceFragmentCompat.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            PreferenceFragmentCompat.this.f();
        }
    };
    private final Runnable mRequestFocus = new Runnable() { // from class: androidx.preference.PreferenceFragmentCompat.2
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = PreferenceFragmentCompat.this.mList;
            recyclerView.focusableViewAvailable(recyclerView);
        }
    };

    /* JADX INFO: renamed from: androidx.preference.PreferenceFragmentCompat$3, reason: invalid class name */
    /* JADX INFO: loaded from: classes8.dex */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ PreferenceFragmentCompat this$0;
        final /* synthetic */ String val$key;
        final /* synthetic */ Preference val$preference;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            RecyclerView.Adapter adapter = this.this$0.mList.getAdapter();
            if (!(adapter instanceof PreferenceGroup.PreferencePositionCallback)) {
                if (adapter != 0) {
                    throw new IllegalStateException("Adapter must implement PreferencePositionCallback");
                }
                return;
            }
            Preference preference = this.val$preference;
            int iB = preference != null ? ((PreferenceGroup.PreferencePositionCallback) adapter).b(preference) : ((PreferenceGroup.PreferencePositionCallback) adapter).d(this.val$key);
            if (iB != -1) {
                this.this$0.mList.scrollToPosition(iB);
            } else {
                adapter.registerAdapterDataObserver(new ScrollToPreferenceObserver(adapter, this.this$0.mList, this.val$preference, this.val$key));
            }
        }
    }

    private class DividerDecoration extends RecyclerView.ItemDecoration {
        private boolean mAllowDividerAfterLastItem = true;
        private Drawable mDivider;
        private int mDividerHeight;

        public void d(boolean z6) {
            this.mAllowDividerAfterLastItem = z6;
        }

        DividerDecoration() {
        }

        public void e(Drawable drawable) {
            if (drawable != null) {
                this.mDividerHeight = drawable.getIntrinsicHeight();
            } else {
                this.mDividerHeight = 0;
            }
            this.mDivider = drawable;
            PreferenceFragmentCompat.this.mList.invalidateItemDecorations();
        }

        public void f(int i10) {
            this.mDividerHeight = i10;
            PreferenceFragmentCompat.this.mList.invalidateItemDecorations();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            if (this.mDivider == null) {
                return;
            }
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = recyclerView.getChildAt(i10);
                if (g(childAt, recyclerView)) {
                    int y6 = ((int) childAt.getY()) + childAt.getHeight();
                    this.mDivider.setBounds(0, y6, width, this.mDividerHeight + y6);
                    this.mDivider.draw(canvas);
                }
            }
        }

        private boolean g(View view, RecyclerView recyclerView) {
            RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(view);
            boolean z6 = false;
            if (!(childViewHolder instanceof PreferenceViewHolder) || !((PreferenceViewHolder) childViewHolder).c()) {
                return false;
            }
            boolean z10 = this.mAllowDividerAfterLastItem;
            int iIndexOfChild = recyclerView.indexOfChild(view);
            if (iIndexOfChild < recyclerView.getChildCount() - 1) {
                RecyclerView.ViewHolder childViewHolder2 = recyclerView.getChildViewHolder(recyclerView.getChildAt(iIndexOfChild + 1));
                if ((childViewHolder2 instanceof PreferenceViewHolder) && ((PreferenceViewHolder) childViewHolder2).b()) {
                    z6 = true;
                }
                return z6;
            }
            return z10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            if (g(view, recyclerView)) {
                rect.bottom = this.mDividerHeight;
            }
        }
    }

    public interface OnPreferenceDisplayDialogCallback {
        boolean a(@NonNull PreferenceFragmentCompat preferenceFragmentCompat, @NonNull Preference preference);
    }

    public interface OnPreferenceStartFragmentCallback {
        boolean b(@NonNull PreferenceFragmentCompat preferenceFragmentCompat, @NonNull Preference preference);
    }

    public interface OnPreferenceStartScreenCallback {
        boolean a(@NonNull PreferenceFragmentCompat preferenceFragmentCompat, @NonNull PreferenceScreen preferenceScreen);
    }

    private static class ScrollToPreferenceObserver extends RecyclerView.AdapterDataObserver {
        private final RecyclerView.Adapter<?> mAdapter;
        private final String mKey;
        private final RecyclerView mList;
        private final Preference mPreference;

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i10, int i11) {
            a();
        }

        private void a() {
            this.mAdapter.unregisterAdapterDataObserver(this);
            Preference preference = this.mPreference;
            int iB = preference != null ? ((PreferenceGroup.PreferencePositionCallback) this.mAdapter).b(preference) : ((PreferenceGroup.PreferencePositionCallback) this.mAdapter).d(this.mKey);
            if (iB != -1) {
                this.mList.scrollToPosition(iB);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i10, int i11, Object obj) {
            a();
        }

        ScrollToPreferenceObserver(RecyclerView.Adapter<?> adapter, RecyclerView recyclerView, Preference preference, String str) {
            this.mAdapter = adapter;
            this.mList = recyclerView;
            this.mPreference = preference;
            this.mKey = str;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i10, int i11) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i10, int i11, int i12) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i10, int i11) {
            a();
        }
    }

    @Nullable
    @RestrictTo
    public Fragment g() {
        return null;
    }

    public final RecyclerView h() {
        return this.mList;
    }

    @RestrictTo
    protected void j() {
    }

    public abstract void m(@Nullable Bundle bundle, @Nullable String str);

    @RestrictTo
    protected void o() {
    }

    @Override // androidx.preference.DialogPreference.TargetFragment
    @Nullable
    public <T extends Preference> T a(@NonNull CharSequence charSequence) {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null) {
            return null;
        }
        return (T) preferenceManager.a(charSequence);
    }

    public PreferenceScreen i() {
        return this.mPreferenceManager.j();
    }

    @NonNull
    protected RecyclerView.Adapter k(@NonNull PreferenceScreen preferenceScreen) {
        return new PreferenceGroupAdapter(preferenceScreen);
    }

    @NonNull
    public RecyclerView.LayoutManager l() {
        return new LinearLayoutManager(requireContext());
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.mHandler.removeCallbacks(this.mRequestFocus);
        this.mHandler.removeMessages(1);
        if (this.mHavePrefs) {
            r();
        }
        this.mList = null;
        super.onDestroyView();
    }

    public void p(@Nullable Drawable drawable) {
        this.mDividerDecoration.e(drawable);
    }

    public void q(int i10) {
        this.mDividerDecoration.f(i10);
    }

    private void r() {
        h().setAdapter(null);
        PreferenceScreen preferenceScreenI = i();
        if (preferenceScreenI != null) {
            preferenceScreenI.Q();
        }
        o();
    }

    @Override // androidx.preference.PreferenceManager.OnDisplayPreferenceDialogListener
    public void c(@NonNull Preference preference) {
        boolean zA;
        DialogFragment dialogFragmentO;
        if (g() instanceof OnPreferenceDisplayDialogCallback) {
            zA = ((OnPreferenceDisplayDialogCallback) g()).a(this, preference);
        } else {
            zA = false;
        }
        for (Fragment parentFragment = this; !zA && parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
            if (parentFragment instanceof OnPreferenceDisplayDialogCallback) {
                zA = ((OnPreferenceDisplayDialogCallback) parentFragment).a(this, preference);
            }
        }
        if (!zA && (getContext() instanceof OnPreferenceDisplayDialogCallback)) {
            zA = ((OnPreferenceDisplayDialogCallback) getContext()).a(this, preference);
        }
        if (!zA && (getActivity() instanceof OnPreferenceDisplayDialogCallback)) {
            zA = ((OnPreferenceDisplayDialogCallback) getActivity()).a(this, preference);
        }
        if (zA || getParentFragmentManager().m0(DIALOG_FRAGMENT_TAG) != null) {
            return;
        }
        if (preference instanceof EditTextPreference) {
            dialogFragmentO = EditTextPreferenceDialogFragmentCompat.p(preference.q());
        } else if (preference instanceof ListPreference) {
            dialogFragmentO = ListPreferenceDialogFragmentCompat.o(preference.q());
        } else if (preference instanceof MultiSelectListPreference) {
            dialogFragmentO = MultiSelectListPreferenceDialogFragmentCompat.o(preference.q());
        } else {
            throw new IllegalArgumentException("Cannot display dialog for an unknown Preference type: " + preference.getClass().getSimpleName() + ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
        }
        dialogFragmentO.setTargetFragment(this, 0);
        dialogFragmentO.show(getParentFragmentManager(), DIALOG_FRAGMENT_TAG);
    }

    @Override // androidx.preference.PreferenceManager.OnPreferenceTreeClickListener
    public boolean d(@NonNull Preference preference) {
        boolean zB;
        if (preference.l() == null) {
            return false;
        }
        if (g() instanceof OnPreferenceStartFragmentCallback) {
            zB = ((OnPreferenceStartFragmentCallback) g()).b(this, preference);
        } else {
            zB = false;
        }
        for (Fragment parentFragment = this; !zB && parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
            if (parentFragment instanceof OnPreferenceStartFragmentCallback) {
                zB = ((OnPreferenceStartFragmentCallback) parentFragment).b(this, preference);
            }
        }
        if (!zB && (getContext() instanceof OnPreferenceStartFragmentCallback)) {
            zB = ((OnPreferenceStartFragmentCallback) getContext()).b(this, preference);
        }
        if (!zB && (getActivity() instanceof OnPreferenceStartFragmentCallback)) {
            zB = ((OnPreferenceStartFragmentCallback) getActivity()).b(this, preference);
        }
        if (!zB) {
            Log.w(TAG, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
            FragmentManager parentFragmentManager = getParentFragmentManager();
            Bundle bundleJ = preference.j();
            Fragment fragmentA = parentFragmentManager.z0().a(requireActivity().getClassLoader(), preference.l());
            fragmentA.setArguments(bundleJ);
            fragmentA.setTargetFragment(this, 0);
            parentFragmentManager.q().u(((View) requireView().getParent()).getId(), fragmentA).h(null).j();
            return true;
        }
        return true;
    }

    @Override // androidx.preference.PreferenceManager.OnNavigateToScreenListener
    public void e(@NonNull PreferenceScreen preferenceScreen) {
        boolean zA;
        if (g() instanceof OnPreferenceStartScreenCallback) {
            zA = ((OnPreferenceStartScreenCallback) g()).a(this, preferenceScreen);
        } else {
            zA = false;
        }
        for (Fragment parentFragment = this; !zA && parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
            if (parentFragment instanceof OnPreferenceStartScreenCallback) {
                zA = ((OnPreferenceStartScreenCallback) parentFragment).a(this, preferenceScreen);
            }
        }
        if (!zA && (getContext() instanceof OnPreferenceStartScreenCallback)) {
            zA = ((OnPreferenceStartScreenCallback) getContext()).a(this, preferenceScreen);
        }
        if (!zA && (getActivity() instanceof OnPreferenceStartScreenCallback)) {
            ((OnPreferenceStartScreenCallback) getActivity()).a(this, preferenceScreen);
        }
    }

    void f() {
        PreferenceScreen preferenceScreenI = i();
        if (preferenceScreenI != null) {
            h().setAdapter(k(preferenceScreenI));
            preferenceScreenI.M();
        }
        j();
    }

    @NonNull
    public RecyclerView n(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup, @Nullable Bundle bundle) {
        RecyclerView recyclerView;
        if (requireContext().getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(R.id.recycler_view)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(R.layout.preference_recyclerview, viewGroup, false);
        recyclerView2.setLayoutManager(l());
        recyclerView2.setAccessibilityDelegateCompat(new PreferenceRecyclerViewAccessibilityDelegate(recyclerView2));
        return recyclerView2;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        String string;
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        requireContext().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i10 = typedValue.resourceId;
        if (i10 == 0) {
            i10 = R.style.PreferenceThemeOverlay;
        }
        requireContext().getTheme().applyStyle(i10, false);
        PreferenceManager preferenceManager = new PreferenceManager(requireContext());
        this.mPreferenceManager = preferenceManager;
        preferenceManager.m(this);
        if (getArguments() != null) {
            string = getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT");
        } else {
            string = null;
        }
        m(bundle, string);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        TypedArray typedArrayObtainStyledAttributes = requireContext().obtainStyledAttributes(null, R.styleable.PreferenceFragmentCompat, R.attr.preferenceFragmentCompatStyle, 0);
        this.mLayoutResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PreferenceFragmentCompat_android_layout, this.mLayoutResId);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.PreferenceFragmentCompat_android_divider);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PreferenceFragmentCompat_android_dividerHeight, -1);
        boolean z6 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PreferenceFragmentCompat_allowDividerAfterLastItem, true);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(requireContext());
        View viewInflate = layoutInflaterCloneInContext.inflate(this.mLayoutResId, viewGroup, false);
        View viewFindViewById = viewInflate.findViewById(android.R.id.list_container);
        if (viewFindViewById instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) viewFindViewById;
            RecyclerView recyclerViewN = n(layoutInflaterCloneInContext, viewGroup2, bundle);
            if (recyclerViewN != null) {
                this.mList = recyclerViewN;
                recyclerViewN.addItemDecoration(this.mDividerDecoration);
                p(drawable);
                if (dimensionPixelSize != -1) {
                    q(dimensionPixelSize);
                }
                this.mDividerDecoration.d(z6);
                if (this.mList.getParent() == null) {
                    viewGroup2.addView(this.mList);
                }
                this.mHandler.post(this.mRequestFocus);
                return viewInflate;
            }
            throw new RuntimeException("Could not create RecyclerView");
        }
        throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreenI = i();
        if (preferenceScreenI != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreenI.g0(bundle2);
            bundle.putBundle(PREFERENCES_TAG, bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.mPreferenceManager.n(this);
        this.mPreferenceManager.l(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.mPreferenceManager.n(null);
        this.mPreferenceManager.l(null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreenI;
        super.onViewCreated(view, bundle);
        if (bundle != null && (bundle2 = bundle.getBundle(PREFERENCES_TAG)) != null && (preferenceScreenI = i()) != null) {
            preferenceScreenI.f0(bundle2);
        }
        if (this.mHavePrefs) {
            f();
            Runnable runnable = this.mSelectPreferenceRunnable;
            if (runnable != null) {
                runnable.run();
                this.mSelectPreferenceRunnable = null;
            }
        }
        this.mInitDone = true;
    }
}
