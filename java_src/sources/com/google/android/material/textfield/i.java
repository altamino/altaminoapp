package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import androidx.annotation.ArrayRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import com.google.android.material.internal.s;

/* JADX INFO: loaded from: classes10.dex */
public class i extends AppCompatAutoCompleteTextView {
    private static final int MAX_ITEMS_MEASURED = 15;

    @Nullable
    private final AccessibilityManager accessibilityManager;

    @NonNull
    private final ListPopupWindow modalListPopup;

    @LayoutRes
    private final int simpleItemLayout;

    @NonNull
    private final Rect tempRect;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j6) {
            i iVar = i.this;
            i.this.f(i10 < 0 ? iVar.modalListPopup.t() : iVar.getAdapter().getItem(i10));
            AdapterView.OnItemClickListener onItemClickListener = i.this.getOnItemClickListener();
            if (onItemClickListener != null) {
                if (view == null || i10 < 0) {
                    view = i.this.modalListPopup.w();
                    i10 = i.this.modalListPopup.v();
                    j6 = i.this.modalListPopup.u();
                }
                onItemClickListener.onItemClick(i.this.modalListPopup.i(), view, i10, j6);
            }
            i.this.modalListPopup.dismiss();
        }
    }

    public i(@NonNull Context context) {
        this(context, null);
    }

    public void setSimpleItems(@ArrayRes int i10) {
        setSimpleItems(getResources().getStringArray(i10));
    }

    public i(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.autoCompleteTextViewStyle);
    }

    public void setSimpleItems(@NonNull String[] strArr) {
        setAdapter(new ArrayAdapter(getContext(), this.simpleItemLayout, strArr));
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.modalListPopup.show();
        }
    }

    public i(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(r3.a.c(context, attributeSet, i10, 0), attributeSet, i10);
        this.tempRect = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayH = s.h(context2, attributeSet, d3.l.MaterialAutoCompleteTextView, i10, d3.k.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        int i11 = d3.l.MaterialAutoCompleteTextView_android_inputType;
        if (typedArrayH.hasValue(i11) && typedArrayH.getInt(i11, 0) == 0) {
            setKeyListener(null);
        }
        this.simpleItemLayout = typedArrayH.getResourceId(d3.l.MaterialAutoCompleteTextView_simpleItemLayout, d3.h.mtrl_auto_complete_simple_item);
        this.accessibilityManager = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.modalListPopup = listPopupWindow;
        listPopupWindow.H(true);
        listPopupWindow.B(this);
        listPopupWindow.G(2);
        listPopupWindow.n(getAdapter());
        listPopupWindow.J(new a());
        int i12 = d3.l.MaterialAutoCompleteTextView_simpleItems;
        if (typedArrayH.hasValue(i12)) {
            setSimpleItems(typedArrayH.getResourceId(i12, 0));
        }
        typedArrayH.recycle();
    }

    @Nullable
    private TextInputLayout d() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    private int e() {
        ListAdapter adapter = getAdapter();
        TextInputLayout textInputLayoutD = d();
        int i10 = 0;
        if (adapter == null || textInputLayoutD == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMin = Math.min(adapter.getCount(), Math.max(0, this.modalListPopup.v()) + 15);
        View view = null;
        int iMax = 0;
        for (int iMax2 = Math.max(0, iMin - 15); iMax2 < iMin; iMax2++) {
            int itemViewType = adapter.getItemViewType(iMax2);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = adapter.getView(iMax2, view, textInputLayoutD);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax = Math.max(iMax, view.getMeasuredWidth());
        }
        Drawable drawableC = this.modalListPopup.c();
        if (drawableC != null) {
            drawableC.getPadding(this.tempRect);
            Rect rect = this.tempRect;
            iMax += rect.left + rect.right;
        }
        return iMax + textInputLayoutD.getEndIconView().getMeasuredWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T extends ListAdapter & Filterable> void f(Object obj) {
        setText(convertSelectionToString(obj), false);
    }

    @Override // android.widget.TextView
    @Nullable
    public CharSequence getHint() {
        TextInputLayout textInputLayoutD = d();
        if (textInputLayoutD != null && textInputLayoutD.O()) {
            return textInputLayoutD.getHint();
        }
        return super.getHint();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutD = d();
        if (textInputLayoutD != null && textInputLayoutD.O() && super.getHint() == null && com.google.android.material.internal.h.a()) {
            setHint("");
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (View.MeasureSpec.getMode(i10) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), e()), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(@Nullable T t5) {
        super.setAdapter(t5);
        this.modalListPopup.n(getAdapter());
    }
}
