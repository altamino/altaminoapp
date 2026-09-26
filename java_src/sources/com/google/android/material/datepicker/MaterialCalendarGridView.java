package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.u;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: loaded from: classes10.dex */
final class MaterialCalendarGridView extends GridView {
    private final Calendar dayCompute;
    private final boolean nestedScrollable;

    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.g0(null);
        }
    }

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    private static boolean e(@Nullable Long l, @Nullable Long l6, @Nullable Long l10, @Nullable Long l11) {
        return l == null || l6 == null || l10 == null || l11 == null || l10.longValue() > l6.longValue() || l11.longValue() < l.longValue();
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a(int i10, Rect rect) {
        if (i10 == 33) {
            setSelection(getAdapter().i());
        } else if (i10 == 130) {
            setSelection(getAdapter().b());
        } else {
            super.onFocusChanged(true, i10, rect);
        }
    }

    @Override // android.view.View
    protected final void onDraw(@NonNull Canvas canvas) {
        int iA;
        int iD;
        int iA2;
        int iD2;
        int width;
        int i10;
        int right;
        int right2;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        j adapter = getAdapter();
        DateSelector<?> dateSelector = adapter.dateSelector;
        b bVar = adapter.calendarStyle;
        int iMax = Math.max(adapter.b(), getFirstVisiblePosition());
        int iMin = Math.min(adapter.i(), getLastVisiblePosition());
        Long item = adapter.getItem(iMax);
        Long item2 = adapter.getItem(iMin);
        Iterator<Pair<Long, Long>> it = dateSelector.g0().iterator();
        while (it.hasNext()) {
            Pair<Long, Long> next = it.next();
            Long l = next.first;
            if (l == null) {
                materialCalendarGridView = this;
            } else if (next.second != null) {
                long jLongValue = l.longValue();
                long jLongValue2 = next.second.longValue();
                if (!e(item, item2, Long.valueOf(jLongValue), Long.valueOf(jLongValue2))) {
                    boolean zG = u.g(this);
                    if (jLongValue < item.longValue()) {
                        if (adapter.f(iMax)) {
                            right2 = 0;
                        } else {
                            right2 = !zG ? materialCalendarGridView.c(iMax - 1).getRight() : materialCalendarGridView.c(iMax - 1).getLeft();
                        }
                        iD = right2;
                        iA = iMax;
                    } else {
                        materialCalendarGridView.dayCompute.setTimeInMillis(jLongValue);
                        iA = adapter.a(materialCalendarGridView.dayCompute.get(5));
                        iD = d(materialCalendarGridView.c(iA));
                    }
                    if (jLongValue2 > item2.longValue()) {
                        if (adapter.g(iMin)) {
                            right = getWidth();
                        } else {
                            right = !zG ? materialCalendarGridView.c(iMin).getRight() : materialCalendarGridView.c(iMin).getLeft();
                        }
                        iD2 = right;
                        iA2 = iMin;
                    } else {
                        materialCalendarGridView.dayCompute.setTimeInMillis(jLongValue2);
                        iA2 = adapter.a(materialCalendarGridView.dayCompute.get(5));
                        iD2 = d(materialCalendarGridView.c(iA2));
                    }
                    int itemId = (int) adapter.getItemId(iA);
                    int i11 = iMax;
                    int i12 = iMin;
                    int itemId2 = (int) adapter.getItemId(iA2);
                    while (itemId <= itemId2) {
                        int numColumns = getNumColumns() * itemId;
                        int numColumns2 = (numColumns + getNumColumns()) - 1;
                        View viewC = materialCalendarGridView.c(numColumns);
                        int top = viewC.getTop() + bVar.day.c();
                        j jVar = adapter;
                        int bottom = viewC.getBottom() - bVar.day.b();
                        if (zG) {
                            int i13 = iA2 > numColumns2 ? 0 : iD2;
                            width = numColumns > iA ? getWidth() : iD;
                            i10 = i13;
                        } else {
                            i10 = numColumns > iA ? 0 : iD;
                            width = iA2 > numColumns2 ? getWidth() : iD2;
                        }
                        canvas.drawRect(i10, top, width, bottom, bVar.rangeFill);
                        itemId++;
                        materialCalendarGridView = this;
                        it = it;
                        adapter = jVar;
                    }
                    materialCalendarGridView = this;
                    iMax = i11;
                    iMin = i12;
                }
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z6, int i10, Rect rect) {
        if (z6) {
            a(i10, rect);
        } else {
            super.onFocusChanged(false, i10, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i10, int i11) {
        if (!this.nestedScrollable) {
            super.onMeasure(i10, i11);
            return;
        }
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(ViewCompat.MEASURED_SIZE_MASK, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof j)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), j.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.dayCompute = s.k();
        if (g.v(getContext())) {
            setNextFocusLeftId(d3.f.cancel_button);
            setNextFocusRightId(d3.f.confirm_button);
        }
        this.nestedScrollable = g.w(getContext());
        ViewCompat.u0(this, new a());
    }

    private View c(int i10) {
        return getChildAt(i10 - getFirstVisiblePosition());
    }

    private static int d(@NonNull View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    @NonNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public j getAdapter() {
        return (j) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (!super.onKeyDown(i10, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().b()) {
            return true;
        }
        if (19 != i10) {
            return false;
        }
        setSelection(getAdapter().b());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i10) {
        if (i10 < getAdapter().b()) {
            super.setSelection(getAdapter().b());
        } else {
            super.setSelection(i10);
        }
    }
}
