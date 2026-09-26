package com.narvii.chat.hangout;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import com.narvii.amino.master.R;
import com.narvii.util.dialog.PopupBubbleDialog;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class HangoutFilterDialog extends PopupBubbleDialog implements View.OnClickListener {

    @NotNull
    private final View item1;

    @NotNull
    private final View item2;

    @NotNull
    private final View item3;

    @Nullable
    private OnItemClickListener onItemClickListener;

    public interface OnItemClickListener {
        void onItemClick(int i10, @NotNull View view);
    }

    @NotNull
    public final View getItem1() {
        return this.item1;
    }

    @NotNull
    public final View getItem2() {
        return this.item2;
    }

    @NotNull
    public final View getItem3() {
        return this.item3;
    }

    @Nullable
    public final OnItemClickListener getOnItemClickListener() {
        return this.onItemClickListener;
    }

    @Override // com.narvii.util.dialog.PopupBubbleDialog
    protected int popupBubbleLayout() {
        return R.layout.dialog_hangout_popup_bubble;
    }

    public final void setOnItemClickListener(@Nullable OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HangoutFilterDialog(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        setContentView(R.layout.hangout_filter_view);
        View viewFindViewById = findViewById(R.id.item1);
        t.i(viewFindViewById, "findViewById(...)");
        this.item1 = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.item2);
        t.i(viewFindViewById2, "findViewById(...)");
        this.item2 = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.item3);
        t.i(viewFindViewById3, "findViewById(...)");
        this.item3 = viewFindViewById3;
        viewFindViewById.setOnClickListener(this);
        viewFindViewById2.setOnClickListener(this);
        viewFindViewById3.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
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
    public void setPosition(@NotNull Rect rect) {
        t.j(rect, "rect");
        ViewGroup.LayoutParams layoutParams = this.bubble.getLayoutParams();
        t.h(layoutParams, "null cannot be cast to non-null type android.widget.AbsoluteLayout.LayoutParams");
        AbsoluteLayout.LayoutParams layoutParams2 = (AbsoluteLayout.LayoutParams) layoutParams;
        Rect rect2 = new Rect();
        Object parent = this.bubble.getParent();
        t.h(parent, "null cannot be cast to non-null type android.view.View");
        ((View) parent).getWindowVisibleDisplayFrame(rect2);
        this.bubble.measure(View.MeasureSpec.makeMeasureSpec(rect2.width(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(rect2.height(), Integer.MIN_VALUE));
        int measuredHeight = this.bubble.getMeasuredHeight();
        int i10 = measuredHeight / 2;
        int i11 = rect.top - i10;
        int i12 = rect.bottom + i10;
        int iHeight = (int) (rect2.height() * 0.6f);
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
        layoutParams2.x = iCenterX;
        layoutParams2.y = i13;
        this.bubble.setLayoutParams(layoutParams2);
        this.bubble.setAutoRtl(false);
        this.bubble.setIndicator(!z6, rect.centerX() - iCenterX);
    }
}
