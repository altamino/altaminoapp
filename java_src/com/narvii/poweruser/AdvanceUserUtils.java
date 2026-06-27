package com.narvii.poweruser;

import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.util.Callback;
import com.narvii.util.dialog.AlertDialog;

/* loaded from: classes3.dex */
public class AdvanceUserUtils {
    public static final int BAN_USER_RESULT_CANCEL = 0;
    public static final int BAN_USER_RESULT_CONTINUE = 1;
    public static final int STRIKE_USER_RESULT_CANCEL = 0;
    public static final int STRIKE_USER_RESULT_CONTINUE = 1;
    NVContext context;

    public AdvanceUserUtils(NVContext nVContext) {
        this.context = nVContext;
    }

    public void showStrikeWarningDialog(Callback<Integer> callback) {
        if (callback != null) {
            callback.call(1);
        }
    }

    public void showBanUserWarningDialog(final Callback<Integer> callback) {
        final AlertDialog alertDialog = new AlertDialog(this.context.getContext());
        alertDialog.setTitle(R.string.push_setting_confirm);
        alertDialog.setContentView(R.layout.dialog_ban_user_warning);
        alertDialog.findViewById(R.id.send_always).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.poweruser.AdvanceUserUtils.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(1);
                }
            }
        });
        alertDialog.findViewById(R.id.message_user).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.poweruser.AdvanceUserUtils.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(0);
                }
            }
        });
        alertDialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.poweruser.AdvanceUserUtils.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
            }
        });
        alertDialog.show();
    }
}
