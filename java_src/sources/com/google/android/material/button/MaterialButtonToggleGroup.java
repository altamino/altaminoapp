package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.annotation.BoolRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.s;
import com.google.android.material.internal.u;
import d3.k;
import d3.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes9.dex */
public class MaterialButtonToggleGroup extends LinearLayout {
    private static final int DEF_STYLE_RES = k.Widget_MaterialComponents_MaterialButtonToggleGroup;
    private static final String LOG_TAG = "MaterialButtonToggleGroup";
    private Set<Integer> checkedIds;
    private Integer[] childOrder;
    private final Comparator<MaterialButton> childOrderComparator;

    @IdRes
    private final int defaultCheckId;
    private final LinkedHashSet<d> onButtonCheckedListeners;
    private final List<c> originalCornerData;
    private final e pressedStateTracker;
    private boolean selectionRequired;
    private boolean singleSelection;
    private boolean skipCheckedStateTracker;

    class a implements Comparator<MaterialButton> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            int iCompareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
            if (iCompareTo2 != 0) {
                return iCompareTo2;
            }
            return Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.h0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(0, 1, MaterialButtonToggleGroup.this.j(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    private static class c {
        private static final com.google.android.material.shape.c noCorner = new com.google.android.material.shape.a(0.0f);
        com.google.android.material.shape.c bottomLeft;
        com.google.android.material.shape.c bottomRight;
        com.google.android.material.shape.c topLeft;
        com.google.android.material.shape.c topRight;

        public static c a(c cVar) {
            com.google.android.material.shape.c cVar2 = noCorner;
            return new c(cVar2, cVar.bottomLeft, cVar2, cVar.bottomRight);
        }

        public static c c(c cVar) {
            com.google.android.material.shape.c cVar2 = cVar.topLeft;
            com.google.android.material.shape.c cVar3 = cVar.bottomLeft;
            com.google.android.material.shape.c cVar4 = noCorner;
            return new c(cVar2, cVar3, cVar4, cVar4);
        }

        public static c d(c cVar) {
            com.google.android.material.shape.c cVar2 = noCorner;
            return new c(cVar2, cVar2, cVar.topRight, cVar.bottomRight);
        }

        public static c f(c cVar) {
            com.google.android.material.shape.c cVar2 = cVar.topLeft;
            com.google.android.material.shape.c cVar3 = noCorner;
            return new c(cVar2, cVar3, cVar.topRight, cVar3);
        }

        c(com.google.android.material.shape.c cVar, com.google.android.material.shape.c cVar2, com.google.android.material.shape.c cVar3, com.google.android.material.shape.c cVar4) {
            this.topLeft = cVar;
            this.topRight = cVar3;
            this.bottomRight = cVar4;
            this.bottomLeft = cVar2;
        }

        public static c b(c cVar, View view) {
            if (u.g(view)) {
                return c(cVar);
            }
            return d(cVar);
        }

        public static c e(c cVar, View view) {
            if (u.g(view)) {
                return d(cVar);
            }
            return c(cVar);
        }
    }

    public interface d {
        void a(MaterialButtonToggleGroup materialButtonToggleGroup, @IdRes int i10, boolean z6);
    }

    private class e implements MaterialButton.b {
        private e() {
        }

        /* synthetic */ e(MaterialButtonToggleGroup materialButtonToggleGroup, a aVar) {
            this();
        }

        @Override // com.google.android.material.button.MaterialButton.b
        public void a(@NonNull MaterialButton materialButton, boolean z6) {
            MaterialButtonToggleGroup.this.invalidate();
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context) {
        this(context, null);
    }

    private void f(@IdRes int i10, boolean z6) {
        if (i10 == -1) {
            Log.e(LOG_TAG, "Button ID is not valid: " + i10);
            return;
        }
        HashSet hashSet = new HashSet(this.checkedIds);
        if (z6 && !hashSet.contains(Integer.valueOf(i10))) {
            if (this.singleSelection && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i10));
        } else {
            if (z6 || !hashSet.contains(Integer.valueOf(i10))) {
                return;
            }
            if (!this.selectionRequired || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i10));
            }
        }
        r(hashSet);
    }

    private int getVisibleButtonCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if ((getChildAt(i11) instanceof MaterialButton) && l(i11)) {
                i10++;
            }
        }
        return i10;
    }

    private void setupButtonChild(@NonNull MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.pressedStateTracker);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    public void e(@IdRes int i10) {
        f(i10, true);
    }

    public boolean m() {
        return this.singleSelection;
    }

    public void setSelectionRequired(boolean z6) {
        this.selectionRequired = z6;
    }

    public void setSingleSelection(boolean z6) {
        if (this.singleSelection != z6) {
            this.singleSelection = z6;
            g();
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.materialButtonToggleGroupStyle);
    }

    private void h(@IdRes int i10, boolean z6) {
        Iterator<d> it = this.onButtonCheckedListeners.iterator();
        while (it.hasNext()) {
            it.next().a(this, i10, z6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int j(@Nullable View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if (getChildAt(i11) == view) {
                return i10;
            }
            if ((getChildAt(i11) instanceof MaterialButton) && l(i11)) {
                i10++;
            }
        }
        return -1;
    }

    @Nullable
    private c k(int i10, int i11, int i12) {
        c cVar = this.originalCornerData.get(i10);
        if (i11 == i12) {
            return cVar;
        }
        boolean z6 = getOrientation() == 0;
        if (i10 == i11) {
            return z6 ? c.e(cVar, this) : c.f(cVar);
        }
        if (i10 == i12) {
            return z6 ? c.b(cVar, this) : c.a(cVar);
        }
        return null;
    }

    private static void q(com.google.android.material.shape.k.b bVar, @Nullable c cVar) {
        if (cVar == null) {
            bVar.o(0.0f);
        } else {
            bVar.C(cVar.topLeft).t(cVar.bottomLeft).G(cVar.topRight).x(cVar.bottomRight);
        }
    }

    private void r(Set<Integer> set) {
        Set<Integer> set2 = this.checkedIds;
        this.checkedIds = new HashSet(set);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id = i(i10).getId();
            p(id, set.contains(Integer.valueOf(id)));
            if (set2.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                h(id, set.contains(Integer.valueOf(id)));
            }
        }
        invalidate();
    }

    private void s() {
        TreeMap treeMap = new TreeMap(this.childOrderComparator);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            treeMap.put(i(i10), Integer.valueOf(i10));
        }
        this.childOrder = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e(LOG_TAG, "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i10, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        f(materialButton.getId(), materialButton.isChecked());
        com.google.android.material.shape.k shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.originalCornerData.add(new c(shapeAppearanceModel.r(), shapeAppearanceModel.j(), shapeAppearanceModel.t(), shapeAppearanceModel.l()));
        ViewCompat.u0(materialButton, new b());
    }

    public void b(@NonNull d dVar) {
        this.onButtonCheckedListeners.add(dVar);
    }

    public void g() {
        r(new HashSet());
    }

    @IdRes
    public int getCheckedButtonId() {
        if (!this.singleSelection || this.checkedIds.isEmpty()) {
            return -1;
        }
        return this.checkedIds.iterator().next().intValue();
    }

    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id = i(i10).getId();
            if (this.checkedIds.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        Integer[] numArr = this.childOrder;
        if (numArr != null && i11 < numArr.length) {
            return numArr[i11].intValue();
        }
        Log.w(LOG_TAG, "Child order wasn't updated");
        return i11;
    }

    void n(@NonNull MaterialButton materialButton, boolean z6) {
        if (this.skipCheckedStateTracker) {
            return;
        }
        f(materialButton.getId(), z6);
    }

    public void setSingleSelection(@BoolRes int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = DEF_STYLE_RES;
        super(r3.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.originalCornerData = new ArrayList();
        this.pressedStateTracker = new e(this, null);
        this.onButtonCheckedListeners = new LinkedHashSet<>();
        this.childOrderComparator = new a();
        this.skipCheckedStateTracker = false;
        this.checkedIds = new HashSet();
        TypedArray typedArrayH = s.h(getContext(), attributeSet, l.MaterialButtonToggleGroup, i10, i11, new int[0]);
        setSingleSelection(typedArrayH.getBoolean(l.MaterialButtonToggleGroup_singleSelection, false));
        this.defaultCheckId = typedArrayH.getResourceId(l.MaterialButtonToggleGroup_checkedButton, -1);
        this.selectionRequired = typedArrayH.getBoolean(l.MaterialButtonToggleGroup_selectionRequired, false);
        setChildrenDrawingOrderEnabled(true);
        typedArrayH.recycle();
        ViewCompat.F0(this, 1);
    }

    private void c() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i10 = firstVisibleChildIndex + 1; i10 < getChildCount(); i10++) {
            MaterialButton materialButtonI = i(i10);
            int iMin = Math.min(materialButtonI.getStrokeWidth(), i(i10 - 1).getStrokeWidth());
            LinearLayout.LayoutParams layoutParamsD = d(materialButtonI);
            if (getOrientation() == 0) {
                MarginLayoutParamsCompat.c(layoutParamsD, 0);
                MarginLayoutParamsCompat.d(layoutParamsD, -iMin);
                layoutParamsD.topMargin = 0;
            } else {
                layoutParamsD.bottomMargin = 0;
                layoutParamsD.topMargin = -iMin;
                MarginLayoutParamsCompat.d(layoutParamsD, 0);
            }
            materialButtonI.setLayoutParams(layoutParamsD);
        }
        o(firstVisibleChildIndex);
    }

    @NonNull
    private LinearLayout.LayoutParams d(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return (LinearLayout.LayoutParams) layoutParams;
        }
        return new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (l(i10)) {
                return i10;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (l(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private MaterialButton i(int i10) {
        return (MaterialButton) getChildAt(i10);
    }

    private boolean l(int i10) {
        if (getChildAt(i10).getVisibility() != 8) {
            return true;
        }
        return false;
    }

    private void o(int i10) {
        if (getChildCount() != 0 && i10 != -1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) i(i10).getLayoutParams();
            if (getOrientation() == 1) {
                layoutParams.topMargin = 0;
                layoutParams.bottomMargin = 0;
            } else {
                MarginLayoutParamsCompat.c(layoutParams, 0);
                MarginLayoutParamsCompat.d(layoutParams, 0);
                layoutParams.leftMargin = 0;
                layoutParams.rightMargin = 0;
            }
        }
    }

    private void p(@IdRes int i10, boolean z6) {
        View viewFindViewById = findViewById(i10);
        if (viewFindViewById instanceof MaterialButton) {
            this.skipCheckedStateTracker = true;
            ((MaterialButton) viewFindViewById).setChecked(z6);
            this.skipCheckedStateTracker = false;
        }
    }

    private void setGeneratedIdIfNeeded(@NonNull MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(ViewCompat.m());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NonNull Canvas canvas) {
        s();
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.defaultCheckId;
        if (i10 != -1) {
            r(Collections.singleton(Integer.valueOf(i10)));
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        int i10;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatR0 = AccessibilityNodeInfoCompat.R0(accessibilityNodeInfo);
        int visibleButtonCount = getVisibleButtonCount();
        if (m()) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        accessibilityNodeInfoCompatR0.g0(AccessibilityNodeInfoCompat.CollectionInfoCompat.b(1, visibleButtonCount, false, i10));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        t();
        c();
        super.onMeasure(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.originalCornerData.remove(iIndexOfChild);
        }
        t();
        c();
    }

    @VisibleForTesting
    void t() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i10 = 0; i10 < childCount; i10++) {
            MaterialButton materialButtonI = i(i10);
            if (materialButtonI.getVisibility() != 8) {
                com.google.android.material.shape.k.b bVarV = materialButtonI.getShapeAppearanceModel().v();
                q(bVarV, k(i10, firstVisibleChildIndex, lastVisibleChildIndex));
                materialButtonI.setShapeAppearanceModel(bVarV.m());
            }
        }
    }
}
