package com.narvii.monetization.bubble;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class SlotEditView extends FrameLayout implements View.OnClickListener {
    public static int STATUS_FOCUSED = 1;
    public static int STATUS_IDLE = 0;
    public static int STATUS_READY = 2;
    public static int STATUS_READY_NOT_FOCUS = 3;
    public View btnDelete;
    private int curStatus;
    public NVImageView imgSlot;
    SlotEditListener listener;

    interface SlotEditListener {
        void onDeleteClicked(View view);

        void onSlotSelected(View view);
    }

    public void setListener(SlotEditListener slotEditListener) {
        this.listener = slotEditListener;
    }

    public SlotEditView(Context context) {
        this(context, null);
    }

    public SlotEditView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(context, R.layout.slot_edit_layout, this);
        setClipChildren(false);
        configView();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        configView();
    }

    private void configView() {
        this.imgSlot = (NVImageView) findViewById(R.id.slot_image);
        this.imgSlot.setOnClickListener(this);
        this.btnDelete = findViewById(R.id.slot_delete);
        this.btnDelete.setOnClickListener(this);
    }

    private void updateViews() {
        int i;
        int i2 = this.curStatus;
        if (i2 == STATUS_READY) {
            i = R.drawable.slot_edit_ready;
        } else if (i2 == STATUS_FOCUSED) {
            i = R.drawable.slot_edit_focused;
        } else {
            i = i2 == STATUS_READY_NOT_FOCUS ? R.drawable.slot_edit_ready_not_focused : R.drawable.slot_edit_normal;
        }
        this.imgSlot.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), i));
        this.btnDelete.setVisibility(this.curStatus == STATUS_READY ? 0 : 8);
    }

    public void updateStatus(boolean z, String str) {
        if (str != null && z) {
            this.curStatus = STATUS_READY;
        } else if (str != null) {
            this.curStatus = STATUS_READY_NOT_FOCUS;
        } else if (z) {
            this.curStatus = STATUS_FOCUSED;
        } else {
            this.curStatus = STATUS_IDLE;
        }
        updateViews();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.slot_delete /* 2131298897 */:
                this.imgSlot.setImageDrawable(null);
                SlotEditListener slotEditListener = this.listener;
                if (slotEditListener != null) {
                    slotEditListener.onDeleteClicked(this);
                    break;
                }
                break;
            case R.id.slot_image /* 2131298898 */:
                SlotEditListener slotEditListener2 = this.listener;
                if (slotEditListener2 != null) {
                    slotEditListener2.onSlotSelected(this);
                    break;
                }
                break;
        }
    }
}
