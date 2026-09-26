package androidx.preference;

import android.app.DialogFragment;
import android.app.Fragment;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public abstract class PreferenceFragment extends Fragment implements PreferenceManager.OnPreferenceTreeClickListener, PreferenceManager.OnDisplayPreferenceDialogListener, PreferenceManager.OnNavigateToScreenListener, DialogPreference.TargetFragment {

    @Deprecated
    public static final String ARG_PREFERENCE_ROOT = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT";
    private static final String DIALOG_FRAGMENT_TAG = "androidx.preference.PreferenceFragment.DIALOG";
    private static final int MSG_BIND_PREFERENCES = 1;
    private static final String PREFERENCES_TAG = "android:preferences";
    private boolean mHavePrefs;
    private boolean mInitDone;
    RecyclerView mList;
    private PreferenceManager mPreferenceManager;
    private Runnable mSelectPreferenceRunnable;
    private Context mStyledContext;
    private final DividerDecoration mDividerDecoration = new DividerDecoration();
    private int mLayoutResId = R.layout.preference_list_fragment;
    private final Handler mHandler = new Handler() { // from class: androidx.preference.PreferenceFragment.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            if (message.what != 1) {
                return;
            }
            PreferenceFragment.this.b();
        }
    };
    private final Runnable mRequestFocus = new Runnable() { // from class: androidx.preference.PreferenceFragment.2
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
            RecyclerView recyclerView = PreferenceFragment.this.mList;
            recyclerView.focusableViewAvailable(recyclerView);
        }
    };

    /* JADX INFO: renamed from: androidx.preference.PreferenceFragment$3, reason: invalid class name */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ PreferenceFragment this$0;
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

        public void e(@Nullable Drawable drawable) {
            if (drawable != null) {
                this.mDividerHeight = drawable.getIntrinsicHeight();
            } else {
                this.mDividerHeight = 0;
            }
            this.mDivider = drawable;
            PreferenceFragment.this.mList.invalidateItemDecorations();
        }

        public void f(int i10) {
            this.mDividerHeight = i10;
            PreferenceFragment.this.mList.invalidateItemDecorations();
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

        private boolean g(@NonNull View view, @NonNull RecyclerView recyclerView) {
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
        boolean a(@NonNull PreferenceFragment preferenceFragment, @NonNull Preference preference);
    }

    public interface OnPreferenceStartFragmentCallback {
        boolean a(@NonNull PreferenceFragment preferenceFragment, @NonNull Preference preference);
    }

    public interface OnPreferenceStartScreenCallback {
        boolean a(@NonNull PreferenceFragment preferenceFragment, @NonNull PreferenceScreen preferenceScreen);
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

        ScrollToPreferenceObserver(@NonNull RecyclerView.Adapter<?> adapter, @NonNull RecyclerView recyclerView, Preference preference, String str) {
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

    @RestrictTo
    public Fragment f() {
        return null;
    }

    @Deprecated
    public final RecyclerView g() {
        return this.mList;
    }

    @RestrictTo
    protected void i() {
    }

    @Deprecated
    public abstract void l(@Nullable Bundle bundle, String str);

    @RestrictTo
    protected void n() {
    }

    @Override // androidx.preference.DialogPreference.TargetFragment
    @Deprecated
    public <T extends Preference> T a(@NonNull CharSequence charSequence) {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null) {
            return null;
        }
        return (T) preferenceManager.a(charSequence);
    }

    @Deprecated
    public PreferenceScreen h() {
        return this.mPreferenceManager.j();
    }

    @NonNull
    @Deprecated
    protected RecyclerView.Adapter j(@NonNull PreferenceScreen preferenceScreen) {
        return new PreferenceGroupAdapter(preferenceScreen);
    }

    @NonNull
    @Deprecated
    public RecyclerView.LayoutManager k() {
        return new LinearLayoutManager(getActivity());
    }

    @NonNull
    @Deprecated
    public RecyclerView m(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup, @Nullable Bundle bundle) {
        RecyclerView recyclerView;
        if (this.mStyledContext.getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(R.id.recycler_view)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(R.layout.preference_recyclerview, viewGroup, false);
        recyclerView2.setLayoutManager(k());
        recyclerView2.setAccessibilityDelegateCompat(new PreferenceRecyclerViewAccessibilityDelegate(recyclerView2));
        return recyclerView2;
    }

    @Deprecated
    public void o(@Nullable Drawable drawable) {
        this.mDividerDecoration.e(drawable);
    }

    @Override // android.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Context context = this.mStyledContext;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.PreferenceFragment, TypedArrayUtils.a(context, R.attr.preferenceFragmentStyle, android.R.attr.preferenceFragmentStyle), 0);
        this.mLayoutResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PreferenceFragment_android_layout, this.mLayoutResId);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.PreferenceFragment_android_divider);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PreferenceFragment_android_dividerHeight, -1);
        boolean z6 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PreferenceFragment_allowDividerAfterLastItem, true);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(this.mStyledContext);
        View viewInflate = layoutInflaterCloneInContext.inflate(this.mLayoutResId, viewGroup, false);
        View viewFindViewById = viewInflate.findViewById(android.R.id.list_container);
        if (!(viewFindViewById instanceof ViewGroup)) {
            throw new RuntimeException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
        }
        ViewGroup viewGroup2 = (ViewGroup) viewFindViewById;
        RecyclerView recyclerViewM = m(layoutInflaterCloneInContext, viewGroup2, bundle);
        if (recyclerViewM == null) {
            throw new RuntimeException("Could not create RecyclerView");
        }
        this.mList = recyclerViewM;
        recyclerViewM.addItemDecoration(this.mDividerDecoration);
        o(drawable);
        if (dimensionPixelSize != -1) {
            p(dimensionPixelSize);
        }
        this.mDividerDecoration.d(z6);
        if (this.mList.getParent() == null) {
            viewGroup2.addView(this.mList);
        }
        this.mHandler.post(this.mRequestFocus);
        return viewInflate;
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.mHandler.removeCallbacks(this.mRequestFocus);
        this.mHandler.removeMessages(1);
        if (this.mHavePrefs) {
            q();
        }
        this.mList = null;
        super.onDestroyView();
    }

    @Deprecated
    public void p(int i10) {
        this.mDividerDecoration.f(i10);
    }

    private void q() {
        PreferenceScreen preferenceScreenH = h();
        if (preferenceScreenH != null) {
            preferenceScreenH.Q();
        }
        n();
    }

    void b() {
        PreferenceScreen preferenceScreenH = h();
        if (preferenceScreenH != null) {
            g().setAdapter(j(preferenceScreenH));
            preferenceScreenH.M();
        }
        i();
    }

    @Override // androidx.preference.PreferenceManager.OnDisplayPreferenceDialogListener
    @Deprecated
    public void c(@NonNull Preference preference) {
        boolean zA;
        DialogFragment dialogFragmentI;
        if (f() instanceof OnPreferenceDisplayDialogCallback) {
            zA = ((OnPreferenceDisplayDialogCallback) f()).a(this, preference);
        } else {
            zA = false;
        }
        if (!zA && (getActivity() instanceof OnPreferenceDisplayDialogCallback)) {
            zA = ((OnPreferenceDisplayDialogCallback) getActivity()).a(this, preference);
        }
        if (zA || getFragmentManager().findFragmentByTag(DIALOG_FRAGMENT_TAG) != null) {
            return;
        }
        if (preference instanceof EditTextPreference) {
            dialogFragmentI = EditTextPreferenceDialogFragment.i(preference.q());
        } else if (preference instanceof ListPreference) {
            dialogFragmentI = ListPreferenceDialogFragment.i(preference.q());
        } else if (preference instanceof MultiSelectListPreference) {
            dialogFragmentI = MultiSelectListPreferenceDialogFragment.i(preference.q());
        } else {
            throw new IllegalArgumentException("Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?");
        }
        dialogFragmentI.setTargetFragment(this, 0);
        dialogFragmentI.show(getFragmentManager(), DIALOG_FRAGMENT_TAG);
    }

    @Override // androidx.preference.PreferenceManager.OnPreferenceTreeClickListener
    @Deprecated
    public boolean d(@NonNull Preference preference) {
        boolean zA = false;
        if (preference.l() == null) {
            return false;
        }
        if (f() instanceof OnPreferenceStartFragmentCallback) {
            zA = ((OnPreferenceStartFragmentCallback) f()).a(this, preference);
        }
        if (!zA && (getActivity() instanceof OnPreferenceStartFragmentCallback)) {
            return ((OnPreferenceStartFragmentCallback) getActivity()).a(this, preference);
        }
        return zA;
    }

    @Override // androidx.preference.PreferenceManager.OnNavigateToScreenListener
    @Deprecated
    public void e(@NonNull PreferenceScreen preferenceScreen) {
        if ((!(f() instanceof OnPreferenceStartScreenCallback) || !((OnPreferenceStartScreenCallback) f()).a(this, preferenceScreen)) && (getActivity() instanceof OnPreferenceStartScreenCallback)) {
            ((OnPreferenceStartScreenCallback) getActivity()).a(this, preferenceScreen);
        }
    }

    @Override // android.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        String string;
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        getActivity().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i10 = typedValue.resourceId;
        if (i10 == 0) {
            i10 = R.style.PreferenceThemeOverlay;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getActivity(), i10);
        this.mStyledContext = contextThemeWrapper;
        PreferenceManager preferenceManager = new PreferenceManager(contextThemeWrapper);
        this.mPreferenceManager = preferenceManager;
        preferenceManager.m(this);
        if (getArguments() != null) {
            string = getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT");
        } else {
            string = null;
        }
        l(bundle, string);
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreenH = h();
        if (preferenceScreenH != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreenH.g0(bundle2);
            bundle.putBundle(PREFERENCES_TAG, bundle2);
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.mPreferenceManager.n(this);
        this.mPreferenceManager.l(this);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.mPreferenceManager.n(null);
        this.mPreferenceManager.l(null);
    }

    @Override // android.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreenH;
        super.onViewCreated(view, bundle);
        if (bundle != null && (bundle2 = bundle.getBundle(PREFERENCES_TAG)) != null && (preferenceScreenH = h()) != null) {
            preferenceScreenH.f0(bundle2);
        }
        if (this.mHavePrefs) {
            b();
            Runnable runnable = this.mSelectPreferenceRunnable;
            if (runnable != null) {
                runnable.run();
                this.mSelectPreferenceRunnable = null;
            }
        }
        this.mInitDone = true;
    }
}
