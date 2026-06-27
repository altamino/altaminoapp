package com.narvii.chat.thread;

import android.content.Context;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public abstract class MyChatManagePopUp {
    View anchor;
    boolean darkTheme;
    PopupWindow popupWindow;

    public abstract boolean isManageEnabled();

    public abstract void onClickInbound();

    public abstract void onClickManage();

    private MyChatManagePopUp() {
    }

    public MyChatManagePopUp(View view, boolean z) {
        this.anchor = view;
        this.darkTheme = z;
        Context context = view.getContext();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.aggregation_chat_popup, (ViewGroup) null);
        this.popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        viewInflate.findViewById(R.id.main).setBackgroundDrawable(ContextCompat.getDrawable(context, z ? R.drawable.bg_rect_grey_7_corner : R.drawable.bg_rect_white_7_corner));
        viewInflate.findViewById(R.id.divider).setBackgroundColor(z ? Utils.getColor(-1, 0.1f) : -723724);
        ((TextView) viewInflate.findViewById(R.id.inbound_text)).setTextColor(z ? -1 : -13948117);
        this.popupWindow.setFocusable(true);
        this.popupWindow.setOutsideTouchable(true);
        viewInflate.findViewById(R.id.inbound).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.thread.MyChatManagePopUp.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MyChatManagePopUp.this.popupWindow.dismiss();
                MyChatManagePopUp.this.onClickInbound();
            }
        });
        viewInflate.findViewById(R.id.manage).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.thread.-$$Lambda$MyChatManagePopUp$c9v2N3NEfamhP6YRJ-1N2oBWBaU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$0$MyChatManagePopUp(view2);
            }
        });
        updateManageButtonStatus();
    }

    public /* synthetic */ void lambda$new$0$MyChatManagePopUp(View view) {
        this.popupWindow.dismiss();
        onClickManage();
    }

    public void show() {
        if (Utils.isRtl() && Build.VERSION.SDK_INT >= 19) {
            PopupWindow popupWindow = this.popupWindow;
            View view = this.anchor;
            popupWindow.showAsDropDown(view, -Utils.dpToPxInt(view.getContext(), 6.0f), 0, 8388661);
            return;
        }
        this.popupWindow.showAsDropDown(this.anchor);
    }

    public void updateManageButtonStatus() {
        boolean zIsManageEnabled = isManageEnabled();
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow == null || popupWindow.getContentView() == null) {
            return;
        }
        this.popupWindow.getContentView().findViewById(R.id.manage).setEnabled(zIsManageEnabled);
        ((TextView) this.popupWindow.getContentView().findViewById(R.id.manage_text)).setTextColor(this.darkTheme ? zIsManageEnabled ? -1 : 1157627903 : zIsManageEnabled ? -13948117 : -8618884);
    }
}
