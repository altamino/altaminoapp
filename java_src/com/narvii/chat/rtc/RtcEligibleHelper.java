package com.narvii.chat.rtc;

import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.util.dialog.AlertDialog;

/* loaded from: classes2.dex */
public class RtcEligibleHelper {
    private NVContext context;
    RtcService rtcService;

    public RtcEligibleHelper(NVContext nVContext) {
        this.context = nVContext;
        this.rtcService = (RtcService) nVContext.getService("rtc");
    }

    public boolean checkEligible() {
        return checkEligible(null);
    }

    public boolean checkEligible(View.OnClickListener onClickListener) {
        if (this.rtcService.isEligible()) {
            return true;
        }
        showNotEligibleDialog(onClickListener);
        return false;
    }

    public void showNotEligibleDialog(final View.OnClickListener onClickListener) {
        final AlertDialog alertDialog = new AlertDialog(this.context.getContext());
        alertDialog.setMessage(R.string.av_not_supported);
        alertDialog.addButton(android.R.string.ok, 4, new View.OnClickListener() { // from class: com.narvii.chat.rtc.RtcEligibleHelper.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                View.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(view);
                }
                alertDialog.dismiss();
            }
        });
        alertDialog.show();
    }
}
