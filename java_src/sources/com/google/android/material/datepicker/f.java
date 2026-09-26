package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo
public final class f<S> extends m<S> {
    private static final String CALENDAR_CONSTRAINTS_KEY = "CALENDAR_CONSTRAINTS_KEY";
    private static final String CURRENT_MONTH_KEY = "CURRENT_MONTH_KEY";
    private static final String GRID_SELECTOR_KEY = "GRID_SELECTOR_KEY";
    private static final int SMOOTH_SCROLL_MAX = 3;
    private static final String THEME_RES_ID_KEY = "THEME_RES_ID_KEY";

    @Nullable
    private CalendarConstraints calendarConstraints;
    private k calendarSelector;
    private com.google.android.material.datepicker.b calendarStyle;

    @Nullable
    private Month current;

    @Nullable
    private DateSelector<S> dateSelector;
    private View dayFrame;
    private RecyclerView recyclerView;

    @StyleRes
    private int themeResId;
    private View yearFrame;
    private RecyclerView yearSelector;

    @VisibleForTesting
    static final Object MONTHS_VIEW_GROUP_TAG = "MONTHS_VIEW_GROUP_TAG";

    @VisibleForTesting
    static final Object NAVIGATION_PREV_TAG = "NAVIGATION_PREV_TAG";

    @VisibleForTesting
    static final Object NAVIGATION_NEXT_TAG = "NAVIGATION_NEXT_TAG";

    @VisibleForTesting
    static final Object SELECTOR_TOGGLE_TAG = "SELECTOR_TOGGLE_TAG";

    class a implements Runnable {
        final /* synthetic */ int val$position;

        a(int i10) {
            this.val$position = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.recyclerView.smoothScrollToPosition(this.val$position);
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.g0(null);
        }
    }

    class c extends n {
        final /* synthetic */ int val$orientation;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context context, int i10, boolean z6, int i11) {
            super(context, i10, z6);
            this.val$orientation = i11;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
            if (this.val$orientation == 0) {
                iArr[0] = f.this.recyclerView.getWidth();
                iArr[1] = f.this.recyclerView.getWidth();
            } else {
                iArr[0] = f.this.recyclerView.getHeight();
                iArr[1] = f.this.recyclerView.getHeight();
            }
        }
    }

    class d implements l {
        d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.datepicker.f.l
        public void a(long j6) {
            if (f.this.calendarConstraints.i().f(j6)) {
                f.this.dateSelector.U(j6);
                Iterator<com.google.android.material.datepicker.l<S>> it = f.this.onSelectionChangedListeners.iterator();
                while (it.hasNext()) {
                    it.next().a(f.this.dateSelector.Q());
                }
                f.this.recyclerView.getAdapter().notifyDataSetChanged();
                if (f.this.yearSelector != null) {
                    f.this.yearSelector.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }

    class e extends RecyclerView.ItemDecoration {
        private final Calendar startItem = s.k();
        private final Calendar endItem = s.k();

        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            if ((recyclerView.getAdapter() instanceof t) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                t tVar = (t) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (Pair<Long, Long> pair : f.this.dateSelector.g0()) {
                    Long l = pair.first;
                    if (l != null && pair.second != null) {
                        this.startItem.setTimeInMillis(l.longValue());
                        this.endItem.setTimeInMillis(pair.second.longValue());
                        int i10 = tVar.i(this.startItem.get(1));
                        int i11 = tVar.i(this.endItem.get(1));
                        View viewFindViewByPosition = gridLayoutManager.findViewByPosition(i10);
                        View viewFindViewByPosition2 = gridLayoutManager.findViewByPosition(i11);
                        int iK = i10 / gridLayoutManager.k();
                        int iK2 = i11 / gridLayoutManager.k();
                        int i12 = iK;
                        while (i12 <= iK2) {
                            View viewFindViewByPosition3 = gridLayoutManager.findViewByPosition(gridLayoutManager.k() * i12);
                            if (viewFindViewByPosition3 != null) {
                                canvas.drawRect(i12 == iK ? viewFindViewByPosition.getLeft() + (viewFindViewByPosition.getWidth() / 2) : 0, viewFindViewByPosition3.getTop() + f.this.calendarStyle.year.c(), i12 == iK2 ? viewFindViewByPosition2.getLeft() + (viewFindViewByPosition2.getWidth() / 2) : recyclerView.getWidth(), viewFindViewByPosition3.getBottom() - f.this.calendarStyle.year.b(), f.this.calendarStyle.rangeFill);
                            }
                            i12++;
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.f$f, reason: collision with other inner class name */
    class C0201f extends AccessibilityDelegateCompat {
        C0201f() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            String string;
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (f.this.dayFrame.getVisibility() == 0) {
                string = f.this.getString(d3.j.mtrl_picker_toggle_to_year_selection);
            } else {
                string = f.this.getString(d3.j.mtrl_picker_toggle_to_day_selection);
            }
            accessibilityNodeInfoCompat.r0(string);
        }
    }

    class g extends RecyclerView.OnScrollListener {
        final /* synthetic */ MaterialButton val$monthDropSelect;
        final /* synthetic */ com.google.android.material.datepicker.k val$monthsPagerAdapter;

        g(com.google.android.material.datepicker.k kVar, MaterialButton materialButton) {
            this.val$monthsPagerAdapter = kVar;
            this.val$monthDropSelect = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i10) {
            if (i10 == 0) {
                recyclerView.announceForAccessibility(this.val$monthDropSelect.getText());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i10, int i11) {
            int iFindFirstVisibleItemPosition = i10 < 0 ? f.this.w().findFirstVisibleItemPosition() : f.this.w().findLastVisibleItemPosition();
            f.this.current = this.val$monthsPagerAdapter.h(iFindFirstVisibleItemPosition);
            this.val$monthDropSelect.setText(this.val$monthsPagerAdapter.i(iFindFirstVisibleItemPosition));
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.this.B();
        }
    }

    class i implements View.OnClickListener {
        final /* synthetic */ com.google.android.material.datepicker.k val$monthsPagerAdapter;

        i(com.google.android.material.datepicker.k kVar) {
            this.val$monthsPagerAdapter = kVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iFindFirstVisibleItemPosition = f.this.w().findFirstVisibleItemPosition() + 1;
            if (iFindFirstVisibleItemPosition < f.this.recyclerView.getAdapter().getItemCount()) {
                f.this.z(this.val$monthsPagerAdapter.h(iFindFirstVisibleItemPosition));
            }
        }
    }

    class j implements View.OnClickListener {
        final /* synthetic */ com.google.android.material.datepicker.k val$monthsPagerAdapter;

        j(com.google.android.material.datepicker.k kVar) {
            this.val$monthsPagerAdapter = kVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iFindLastVisibleItemPosition = f.this.w().findLastVisibleItemPosition() - 1;
            if (iFindLastVisibleItemPosition >= 0) {
                f.this.z(this.val$monthsPagerAdapter.h(iFindLastVisibleItemPosition));
            }
        }
    }

    enum k {
        DAY,
        YEAR
    }

    interface l {
        void a(long j6);
    }

    @Nullable
    CalendarConstraints q() {
        return this.calendarConstraints;
    }

    com.google.android.material.datepicker.b r() {
        return this.calendarStyle;
    }

    @Nullable
    Month s() {
        return this.current;
    }

    @Nullable
    public DateSelector<S> t() {
        return this.dateSelector;
    }

    private void o(@NonNull View view, @NonNull com.google.android.material.datepicker.k kVar) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(d3.f.month_navigation_fragment_toggle);
        materialButton.setTag(SELECTOR_TOGGLE_TAG);
        ViewCompat.u0(materialButton, new C0201f());
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(d3.f.month_navigation_previous);
        materialButton2.setTag(NAVIGATION_PREV_TAG);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(d3.f.month_navigation_next);
        materialButton3.setTag(NAVIGATION_NEXT_TAG);
        this.yearFrame = view.findViewById(d3.f.mtrl_calendar_year_selector_frame);
        this.dayFrame = view.findViewById(d3.f.mtrl_calendar_day_selector_frame);
        A(k.DAY);
        materialButton.setText(this.current.n());
        this.recyclerView.addOnScrollListener(new g(kVar, materialButton));
        materialButton.setOnClickListener(new h());
        materialButton3.setOnClickListener(new i(kVar));
        materialButton2.setOnClickListener(new j(kVar));
    }

    @NonNull
    private RecyclerView.ItemDecoration p() {
        return new e();
    }

    @NonNull
    public static <T> f<T> x(@NonNull DateSelector<T> dateSelector, @StyleRes int i10, @NonNull CalendarConstraints calendarConstraints) {
        f<T> fVar = new f<>();
        Bundle bundle = new Bundle();
        bundle.putInt(THEME_RES_ID_KEY, i10);
        bundle.putParcelable(GRID_SELECTOR_KEY, dateSelector);
        bundle.putParcelable(CALENDAR_CONSTRAINTS_KEY, calendarConstraints);
        bundle.putParcelable(CURRENT_MONTH_KEY, calendarConstraints.m());
        fVar.setArguments(bundle);
        return fVar;
    }

    private void y(int i10) {
        this.recyclerView.post(new a(i10));
    }

    void A(k kVar) {
        this.calendarSelector = kVar;
        if (kVar == k.YEAR) {
            this.yearSelector.getLayoutManager().scrollToPosition(((t) this.yearSelector.getAdapter()).i(this.current.year));
            this.yearFrame.setVisibility(0);
            this.dayFrame.setVisibility(8);
        } else if (kVar == k.DAY) {
            this.yearFrame.setVisibility(8);
            this.dayFrame.setVisibility(0);
            z(this.current);
        }
    }

    void B() {
        k kVar = this.calendarSelector;
        k kVar2 = k.YEAR;
        if (kVar == kVar2) {
            A(k.DAY);
        } else if (kVar == k.DAY) {
            A(kVar2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int i10;
        int i11;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.themeResId);
        this.calendarStyle = new com.google.android.material.datepicker.b(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month monthN = this.calendarConstraints.n();
        if (com.google.android.material.datepicker.g.v(contextThemeWrapper)) {
            i10 = d3.h.mtrl_calendar_vertical;
            i11 = 1;
        } else {
            i10 = d3.h.mtrl_calendar_horizontal;
            i11 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i10, viewGroup, false);
        viewInflate.setMinimumHeight(v(requireContext()));
        GridView gridView = (GridView) viewInflate.findViewById(d3.f.mtrl_calendar_days_of_week);
        ViewCompat.u0(gridView, new b());
        gridView.setAdapter((ListAdapter) new com.google.android.material.datepicker.e());
        gridView.setNumColumns(monthN.daysInWeek);
        gridView.setEnabled(false);
        this.recyclerView = (RecyclerView) viewInflate.findViewById(d3.f.mtrl_calendar_months);
        this.recyclerView.setLayoutManager(new c(getContext(), i11, false, i11));
        this.recyclerView.setTag(MONTHS_VIEW_GROUP_TAG);
        com.google.android.material.datepicker.k kVar = new com.google.android.material.datepicker.k(contextThemeWrapper, this.dateSelector, this.calendarConstraints, new d());
        this.recyclerView.setAdapter(kVar);
        int integer = contextThemeWrapper.getResources().getInteger(d3.g.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(d3.f.mtrl_calendar_year_selector_frame);
        this.yearSelector = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.yearSelector.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.yearSelector.setAdapter(new t(this));
            this.yearSelector.addItemDecoration(p());
        }
        if (viewInflate.findViewById(d3.f.month_navigation_fragment_toggle) != null) {
            o(viewInflate, kVar);
        }
        if (!com.google.android.material.datepicker.g.v(contextThemeWrapper)) {
            new PagerSnapHelper().b(this.recyclerView);
        }
        this.recyclerView.scrollToPosition(kVar.j(this.current));
        return viewInflate;
    }

    @NonNull
    LinearLayoutManager w() {
        return (LinearLayoutManager) this.recyclerView.getLayoutManager();
    }

    void z(Month month) {
        com.google.android.material.datepicker.k kVar = (com.google.android.material.datepicker.k) this.recyclerView.getAdapter();
        int iJ = kVar.j(month);
        int iJ2 = iJ - kVar.j(this.current);
        boolean z6 = Math.abs(iJ2) > 3;
        boolean z10 = iJ2 > 0;
        this.current = month;
        if (z6 && z10) {
            this.recyclerView.scrollToPosition(iJ - 3);
            y(iJ);
        } else if (!z6) {
            y(iJ);
        } else {
            this.recyclerView.scrollToPosition(iJ + 3);
            y(iJ);
        }
    }

    @Px
    static int u(@NonNull Context context) {
        return context.getResources().getDimensionPixelSize(d3.d.mtrl_calendar_day_height);
    }

    private static int v(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(d3.d.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(d3.d.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(d3.d.mtrl_calendar_navigation_bottom_padding);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(d3.d.mtrl_calendar_days_of_week_height);
        int i10 = com.google.android.material.datepicker.j.MAXIMUM_WEEKS;
        return dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelSize(d3.d.mtrl_calendar_day_height) * i10) + ((i10 - 1) * resources.getDimensionPixelOffset(d3.d.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(d3.d.mtrl_calendar_bottom_padding);
    }

    @Override // com.google.android.material.datepicker.m
    public boolean f(@NonNull com.google.android.material.datepicker.l<S> lVar) {
        return super.f(lVar);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.themeResId = bundle.getInt(THEME_RES_ID_KEY);
        this.dateSelector = (DateSelector) bundle.getParcelable(GRID_SELECTOR_KEY);
        this.calendarConstraints = (CalendarConstraints) bundle.getParcelable(CALENDAR_CONSTRAINTS_KEY);
        this.current = (Month) bundle.getParcelable(CURRENT_MONTH_KEY);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(THEME_RES_ID_KEY, this.themeResId);
        bundle.putParcelable(GRID_SELECTOR_KEY, this.dateSelector);
        bundle.putParcelable(CALENDAR_CONSTRAINTS_KEY, this.calendarConstraints);
        bundle.putParcelable(CURRENT_MONTH_KEY, this.current);
    }
}
