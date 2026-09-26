package com.narvii.transition;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Log;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class TransitionManager {
    private List<Integer> matchParentIds;
    protected List<Integer> transitionTargetIds;
    protected boolean waitingLayout;
    protected SparseArray<Rect> startBoundsArray = new SparseArray<>();
    protected SparseArray<Rect> endBoundsArray = new SparseArray<>();
    protected SparseArray<Integer> startWindowXArray = new SparseArray<>();
    protected SparseArray<Integer> startWindowYArray = new SparseArray<>();
    protected SparseArray<Integer> endWindowXArray = new SparseArray<>();
    protected SparseArray<Integer> endWindowYArray = new SparseArray<>();
    protected SparseArray<Float> startTextSizeArray = new SparseArray<>();
    protected SparseArray<Float> endTextSizeArray = new SparseArray<>();
    protected SparseArray<Integer> startLineHeightArray = new SparseArray<>();
    protected SparseArray<Integer> endLineHeightArray = new SparseArray<>();

    public void setMatchParentIds(List<Integer> list) {
        this.matchParentIds = list;
    }

    public void setTransitionTargetIds(List<Integer> list) {
        this.transitionTargetIds = list;
    }

    private void captureLocation(View view, SparseArray<Integer> sparseArray, SparseArray<Integer> sparseArray2) {
        List<Integer> list = this.transitionTargetIds;
        if (list == null) {
            return;
        }
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            View viewFindViewById = view.findViewById(iIntValue);
            if (viewFindViewById != null && (viewFindViewById.getParent() instanceof ViewGroup)) {
                int[] iArr = new int[2];
                ((ViewGroup) viewFindViewById.getParent()).getLocationInWindow(iArr);
                sparseArray.put(iIntValue, Integer.valueOf(iArr[0]));
                sparseArray2.put(iIntValue, Integer.valueOf(iArr[1]));
            }
        }
    }

    private void captureRect(View view, SparseArray<Rect> sparseArray) {
        List<Integer> list = this.transitionTargetIds;
        if (list == null) {
            return;
        }
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            View viewFindViewById = view.findViewById(iIntValue);
            if (viewFindViewById != null) {
                if (iIntValue == R.id.title) {
                    Log.d("capture title:" + getViewRect(viewFindViewById));
                }
                sparseArray.put(iIntValue, getViewRect(viewFindViewById));
            }
        }
    }

    private void captureTextScale(View view, SparseArray<Integer> sparseArray) {
        List<Integer> list = this.transitionTargetIds;
        if (list == null) {
            return;
        }
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            View viewFindViewById = view.findViewById(iIntValue);
            if (viewFindViewById instanceof TextView) {
                sparseArray.put(iIntValue, Integer.valueOf(((TextView) viewFindViewById).getLineHeight()));
            }
        }
    }

    private Rect getCurrentBounds(int i10, float f) {
        Rect rect = this.startBoundsArray.get(i10);
        int iIntValue = this.startWindowXArray.get(i10).intValue();
        int iIntValue2 = this.startWindowYArray.get(i10).intValue();
        int iIntValue3 = this.endWindowXArray.get(i10).intValue();
        int iIntValue4 = this.endWindowYArray.get(i10).intValue();
        Rect rect2 = this.endBoundsArray.get(i10);
        Rect rect3 = new Rect();
        int i11 = rect2.left;
        int i12 = i11 - ((iIntValue3 + i11) - (iIntValue + rect.left));
        rect3.left = i12;
        int i13 = rect2.top;
        int i14 = i13 - ((iIntValue4 + i13) - (iIntValue2 + rect.top));
        rect3.top = i14;
        rect3.right = i12 + (rect.right - rect.left);
        rect3.bottom = i14 + (rect.bottom - rect.top);
        Rect rect4 = new Rect();
        int i15 = rect3.left;
        rect4.left = (int) (i15 + ((rect2.left - i15) * f));
        int i16 = rect3.right;
        rect4.right = (int) (i16 + ((rect2.right - i16) * f));
        int i17 = rect3.top;
        rect4.top = (int) (i17 + ((rect2.top - i17) * f));
        int i18 = rect3.bottom;
        rect4.bottom = (int) (i18 + ((rect2.bottom - i18) * f));
        return rect4;
    }

    private Rect getViewRect(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    public void animateViews(View view, float f) {
        List<Integer> list = this.transitionTargetIds;
        if (list == null) {
            return;
        }
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            View viewFindViewById = view.findViewById(iIntValue);
            if (viewFindViewById != null) {
                Rect currentBounds = getCurrentBounds(iIntValue, f);
                if (viewFindViewById instanceof TextView) {
                    int measuredWidth = (int) (currentBounds.left - ((viewFindViewById.getMeasuredWidth() / 2.0f) * (1.0f - viewFindViewById.getScaleX())));
                    int measuredHeight = (int) (currentBounds.top - ((viewFindViewById.getMeasuredHeight() / 2.0f) * (1.0f - viewFindViewById.getScaleX())));
                    viewFindViewById.layout(measuredWidth, measuredHeight, viewFindViewById.getMeasuredWidth() + measuredWidth, viewFindViewById.getMeasuredHeight() + measuredHeight);
                } else {
                    viewFindViewById.layout(currentBounds.left, currentBounds.top, currentBounds.right, currentBounds.bottom);
                }
            }
        }
    }

    public void captureEndTextSize(View view) {
        captureTextScale(view, this.endLineHeightArray);
    }

    public void captureEndValues(View view) {
        captureRect(view, this.endBoundsArray);
        captureLocation(view, this.endWindowXArray, this.endWindowYArray);
        this.waitingLayout = false;
    }

    public void captureStartValues(View view) {
        captureRect(view, this.startBoundsArray);
        captureTextScale(view, this.startLineHeightArray);
        captureLocation(view, this.startWindowXArray, this.startWindowYArray);
        this.waitingLayout = true;
    }

    public void changeTextViewScale(View view, float f) {
        List<Integer> list = this.transitionTargetIds;
        if (list == null) {
            return;
        }
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            View viewFindViewById = view.findViewById(iIntValue);
            if (viewFindViewById != null && (viewFindViewById instanceof TextView)) {
                float fIntValue = (this.startLineHeightArray.get(iIntValue).intValue() * 1.0f) / this.endLineHeightArray.get(iIntValue).intValue();
                float f6 = fIntValue + ((1.0f - fIntValue) * f);
                viewFindViewById.setScaleX(f6);
                viewFindViewById.setScaleY(f6);
            }
        }
    }

    public void measureMatchParentViews(View view) {
        List<Integer> list = this.matchParentIds;
        if (list != null) {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                view.findViewById(it.next().intValue()).measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824));
            }
        }
    }
}
