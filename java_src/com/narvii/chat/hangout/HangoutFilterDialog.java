package com.narvii.chat.hangout;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import com.narvii.amino.mastes.R;
import com.narvii.util.dialog.PopupBubbleDialog;
import com.narvii.widget.PopupBubble;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HangoutFilterDialog.kt */
/* loaded from: classes2.dex */
public final class HangoutFilterDialog extends PopupBubbleDialog implements View.OnClickListener {
    private final View item1;
    private final View item2;
    private final View item3;
    private OnItemClickListener onItemClickListener;

    /* compiled from: HangoutFilterDialog.kt */
    public interface OnItemClickListener {
        void onItemClick(int i, View view);
    }

    @Override // com.narvii.util.dialog.PopupBubbleDialog
    protected int popupBubbleLayout() {
        return R.layout.dialog_hangout_popup_bubble;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HangoutFilterDialog(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        setContentView(R.layout.hangout_filter_view);
        View viewFindViewById = findViewById(R.id.item1);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.item1)");
        this.item1 = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.item2);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.item2)");
        this.item2 = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.item3);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.item3)");
        this.item3 = viewFindViewById3;
        this.item1.setOnClickListener(this);
        this.item2.setOnClickListener(this);
        this.item3.setOnClickListener(this);
    }

    public final View getItem1() {
        return this.item1;
    }

    public final View getItem2() {
        return this.item2;
    }

    public final View getItem3() {
        return this.item3;
    }

    public final OnItemClickListener getOnItemClickListener() {
        return this.onItemClickListener;
    }

    public final void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.item1) {
            OnItemClickListener onItemClickListener = this.onItemClickListener;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(0, view);
            }
            dismiss();
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.item2) {
            OnItemClickListener onItemClickListener2 = this.onItemClickListener;
            if (onItemClickListener2 != null) {
                onItemClickListener2.onItemClick(1, view);
            }
            dismiss();
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.item3) {
            OnItemClickListener onItemClickListener3 = this.onItemClickListener;
            if (onItemClickListener3 != null) {
                onItemClickListener3.onItemClick(2, view);
            }
            dismiss();
        }
    }

    @Override // com.narvii.util.dialog.PopupBubbleDialog
    public void setPosition(Rect rect) {
        Intrinsics.checkParameterIsNotNull(rect, "rect");
        PopupBubble bubble = this.bubble;
        Intrinsics.checkExpressionValueIsNotNull(bubble, "bubble");
        ViewGroup.LayoutParams layoutParams = bubble.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.AbsoluteLayout.LayoutParams");
        }
        AbsoluteLayout.LayoutParams layoutParams2 = (AbsoluteLayout.LayoutParams) layoutParams;
        Rect rect2 = new Rect();
        PopupBubble bubble2 = this.bubble;
        Intrinsics.checkExpressionValueIsNotNull(bubble2, "bubble");
        Object parent = bubble2.getParent();
        if (parent == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.View");
        }
        ((View) parent).getWindowVisibleDisplayFrame(rect2);
        this.bubble.measure(View.MeasureSpec.makeMeasureSpec(rect2.width(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(rect2.height(), Integer.MIN_VALUE));
        PopupBubble bubble3 = this.bubble;
        Intrinsics.checkExpressionValueIsNotNull(bubble3, "bubble");
        int measuredHeight = bubble3.getMeasuredHeight();
        int i = measuredHeight / 2;
        int i2 = rect.top - i;
        int i3 = rect.bottom + i;
        int iHeight = (int) (rect2.height() * 0.6f);
        boolean z = Math.abs(iHeight - i2) < Math.abs(iHeight - i3);
        int i4 = z ? rect.top - measuredHeight : rect.bottom;
        PopupBubble bubble4 = this.bubble;
        Intrinsics.checkExpressionValueIsNotNull(bubble4, "bubble");
        int measuredWidth = bubble4.getMeasuredWidth();
        int iCenterX = rect.centerX() - (measuredWidth / 2);
        int i5 = rect.left;
        if (rect.centerX() < rect2.width() / 2 && i5 > 0) {
            iCenterX = Math.max(iCenterX, i5 / 4);
        }
        int iWidth = rect2.width() - rect.right;
        if (rect.centerX() > rect2.width() / 2 && iWidth > 0) {
            iCenterX = Math.min(iCenterX, (rect2.width() - (iWidth / 4)) - measuredWidth);
        }
        layoutParams2.x = iCenterX;
        layoutParams2.y = i4;
        PopupBubble bubble5 = this.bubble;
        Intrinsics.checkExpressionValueIsNotNull(bubble5, "bubble");
        bubble5.setLayoutParams(layoutParams2);
        this.bubble.setAutoRtl(false);
        this.bubble.setIndicator(!z, rect.centerX() - iCenterX);
    }
}
