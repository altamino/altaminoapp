package com.narvii.monetization.bubble;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
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

    public SlotEditView(@NonNull Context context) {
        this(context, null);
    }

    public void setListener(SlotEditListener slotEditListener) {
        this.listener = slotEditListener;
    }

    public SlotEditView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.slot_edit_layout, this);
        setClipChildren(false);
        configView();
    }

    private void updateViews() {
        int i10;
        int i11 = this.curStatus;
        if (i11 == STATUS_READY) {
            i10 = R.drawable.slot_edit_ready;
        } else if (i11 == STATUS_FOCUSED) {
            i10 = R.drawable.slot_edit_focused;
        } else {
            i10 = i11 == STATUS_READY_NOT_FOCUS ? R.drawable.slot_edit_ready_not_focused : R.drawable.slot_edit_normal;
        }
        this.imgSlot.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), i10));
        this.btnDelete.setVisibility(this.curStatus == STATUS_READY ? 0 : 8);
    }

    public void updateStatus(boolean z6, String str) {
        if (str != null && z6) {
            this.curStatus = STATUS_READY;
        } else if (str != null) {
            this.curStatus = STATUS_READY_NOT_FOCUS;
        } else if (z6) {
            this.curStatus = STATUS_FOCUSED;
        } else {
            this.curStatus = STATUS_IDLE;
        }
        updateViews();
    }

    private void configView() {
        NVImageView nVImageView = (NVImageView) findViewById(R.id.slot_image);
        this.imgSlot = nVImageView;
        nVImageView.setOnClickListener(this);
        View viewFindViewById = findViewById(R.id.slot_delete);
        this.btnDelete = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.slot_delete /* 2131365160 */:
                this.imgSlot.setImageDrawable(null);
                SlotEditListener slotEditListener = this.listener;
                if (slotEditListener != null) {
                    slotEditListener.onDeleteClicked(this);
                }
                break;
            case R.id.slot_image /* 2131365161 */:
                SlotEditListener slotEditListener2 = this.listener;
                if (slotEditListener2 != null) {
                    slotEditListener2.onSlotSelected(this);
                }
                break;
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        configView();
    }
}
