package com.narvii.util.dialog;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import com.narvii.app.NVDialog;
import com.narvii.lib.R;
import com.narvii.widget.PopupBubble;

/* JADX INFO: loaded from: classes.dex */
public class PopupBubbleDialog extends NVDialog {
    protected PopupBubble bubble;

    protected int popupBubbleLayout() {
        return R.layout.dialog_popup_bubble;
    }

    @Override // android.app.Dialog
    public void setContentView(int i10) {
        clearView();
        LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this.bubble, true);
    }

    public void setPosition(Rect rect) {
        AbsoluteLayout.LayoutParams layoutParams = (AbsoluteLayout.LayoutParams) this.bubble.getLayoutParams();
        Rect rect2 = new Rect();
        ((View) this.bubble.getParent()).getWindowVisibleDisplayFrame(rect2);
        this.bubble.measure(View.MeasureSpec.makeMeasureSpec(rect2.width(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(rect2.height(), Integer.MIN_VALUE));
        int measuredHeight = this.bubble.getMeasuredHeight();
        int i10 = measuredHeight / 2;
        int i11 = rect.top - i10;
        int i12 = rect.bottom + i10;
        int iHeight = (int) (rect2.height() * 0.4f);
        boolean z6 = Math.abs(iHeight - i11) < Math.abs(iHeight - i12);
        int i13 = z6 ? rect.top - measuredHeight : rect.bottom;
        int measuredWidth = this.bubble.getMeasuredWidth();
        int iCenterX = rect.centerX() - (measuredWidth / 2);
        int i14 = rect.left;
        if (rect.centerX() < rect2.width() / 2 && i14 > 0) {
            iCenterX = Math.max(iCenterX, i14 / 4);
        }
        int iWidth = rect2.width() - rect.right;
        if (rect.centerX() > rect2.width() / 2 && iWidth > 0) {
            iCenterX = Math.min(iCenterX, (rect2.width() - (iWidth / 4)) - measuredWidth);
        }
        layoutParams.x = iCenterX;
        layoutParams.y = i13;
        this.bubble.setLayoutParams(layoutParams);
        this.bubble.setAutoRtl(false);
        this.bubble.setIndicator(!z6, rect.centerX() - iCenterX);
    }

    public PopupBubbleDialog(Context context) {
        super(context, R.style.CustomDialog);
        super.setContentView(popupBubbleLayout());
        this.bubble = (PopupBubble) findViewById(R.id.popup_bubble);
        findViewById(R.id.popup_bubble_bg).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.util.dialog.PopupBubbleDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PopupBubbleDialog.this.cancel();
            }
        });
    }

    public void clearView() {
        this.bubble.removeAllViews();
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        clearView();
        this.bubble.addView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        clearView();
        this.bubble.addView(view, layoutParams);
    }

    public void setPosition(View view) {
        View rootView = view.getRootView();
        Rect rect = new Rect();
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        if (rootView != null) {
            int[] iArr2 = new int[2];
            rootView.getLocationInWindow(iArr2);
            rect.left = iArr[0] - iArr2[0];
            rect.top = iArr[1] - iArr2[1];
        } else {
            view.getWindowVisibleDisplayFrame(rect);
            int i10 = rect.top;
            rect.left = iArr[0];
            rect.top = iArr[1] - i10;
        }
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        setPosition(rect);
    }
}
