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

/* loaded from: classes3.dex */
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

    public void setTransitionTargetIds(List<Integer> list) {
        this.transitionTargetIds = list;
    }

    public void setMatchParentIds(List<Integer> list) {
        this.matchParentIds = list;
    }

    public void captureStartValues(View view) {
        captureRect(view, this.startBoundsArray);
        captureTextScale(view, this.startLineHeightArray);
        captureLocation(view, this.startWindowXArray, this.startWindowYArray);
        this.waitingLayout = true;
    }

    public void captureEndTextSize(View view) {
        captureTextScale(view, this.endLineHeightArray);
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

    public void measureMatchParentViews(View view) {
        List<Integer> list = this.matchParentIds;
        if (list != null) {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                view.findViewById(it.next().intValue()).measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824));
            }
        }
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

    private Rect getViewRect(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    public void captureEndValues(View view) {
        captureRect(view, this.endBoundsArray);
        captureLocation(view, this.endWindowXArray, this.endWindowYArray);
        this.waitingLayout = false;
    }

    public void changeTextViewScale(View view, float f) {
        List<Integer> list = this.transitionTargetIds;
        if (list == null) {
            return;
        }
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            View viewFindViewById = view.findViewById(it.next().intValue());
            if (viewFindViewById != null && (viewFindViewById instanceof TextView)) {
                float fIntValue = (this.startLineHeightArray.get(r1).intValue() * 1.0f) / this.endLineHeightArray.get(r1).intValue();
                float f2 = fIntValue + ((1.0f - fIntValue) * f);
                viewFindViewById.setScaleX(f2);
                viewFindViewById.setScaleY(f2);
            }
        }
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

    private Rect getCurrentBounds(int i, float f) {
        Rect rect = this.startBoundsArray.get(i);
        int iIntValue = this.startWindowXArray.get(i).intValue();
        int iIntValue2 = this.startWindowYArray.get(i).intValue();
        int iIntValue3 = this.endWindowXArray.get(i).intValue();
        int iIntValue4 = this.endWindowYArray.get(i).intValue();
        Rect rect2 = this.endBoundsArray.get(i);
        Rect rect3 = new Rect();
        int i2 = rect2.left;
        rect3.left = i2 - ((iIntValue3 + i2) - (iIntValue + rect.left));
        int i3 = rect2.top;
        rect3.top = i3 - ((iIntValue4 + i3) - (iIntValue2 + rect.top));
        rect3.right = rect3.left + (rect.right - rect.left);
        rect3.bottom = rect3.top + (rect.bottom - rect.top);
        Rect rect4 = new Rect();
        rect4.left = (int) (rect3.left + ((rect2.left - r1) * f));
        rect4.right = (int) (rect3.right + ((rect2.right - r1) * f));
        rect4.top = (int) (rect3.top + ((rect2.top - r1) * f));
        rect4.bottom = (int) (rect3.bottom + ((rect2.bottom - r1) * f));
        return rect4;
    }
}
