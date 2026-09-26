package com.narvii.chat.thread;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes6.dex */
public abstract class MyChatManagePopUp {
    View anchor;
    boolean darkTheme;
    PopupWindow popupWindow;

    private MyChatManagePopUp() {
    }

    public abstract boolean isManageEnabled();

    public abstract void onClickInbound();

    public abstract void onClickManage();

    public MyChatManagePopUp(View view, boolean z6) {
        this.anchor = view;
        this.darkTheme = z6;
        Context context = view.getContext();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.aggregation_chat_popup, (ViewGroup) null);
        this.popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        viewInflate.findViewById(R.id.main).setBackgroundDrawable(ContextCompat.getDrawable(context, z6 ? R.drawable.bg_rect_grey_7_corner : R.drawable.bg_rect_white_7_corner));
        viewInflate.findViewById(R.id.divider).setBackgroundColor(z6 ? Utils.getColor(-1, 0.1f) : -723724);
        ((TextView) viewInflate.findViewById(R.id.inbound_text)).setTextColor(z6 ? -1 : -13948117);
        this.popupWindow.setFocusable(true);
        this.popupWindow.setOutsideTouchable(true);
        viewInflate.findViewById(R.id.inbound).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.thread.MyChatManagePopUp.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MyChatManagePopUp.this.popupWindow.dismiss();
                MyChatManagePopUp.this.onClickInbound();
            }
        });
        viewInflate.findViewById(R.id.manage).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.thread.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2066a.lambda$new$0(view2);
            }
        });
        updateManageButtonStatus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        this.popupWindow.dismiss();
        onClickManage();
    }

    public void show() {
        if (Utils.isRtl()) {
            PopupWindow popupWindow = this.popupWindow;
            View view = this.anchor;
            popupWindow.showAsDropDown(view, -Utils.dpToPxInt(view.getContext(), 6.0f), 0, 8388661);
            return;
        }
        this.popupWindow.showAsDropDown(this.anchor);
    }

    public void updateManageButtonStatus() {
        int i10;
        boolean zIsManageEnabled = isManageEnabled();
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow != null && popupWindow.getContentView() != null) {
            this.popupWindow.getContentView().findViewById(R.id.manage).setEnabled(zIsManageEnabled);
            if (this.darkTheme) {
                if (zIsManageEnabled) {
                    i10 = -1;
                } else {
                    i10 = 1157627903;
                }
            } else if (zIsManageEnabled) {
                i10 = -13948117;
            } else {
                i10 = -8618884;
            }
            ((TextView) this.popupWindow.getContentView().findViewById(R.id.manage_text)).setTextColor(i10);
        }
    }
}
