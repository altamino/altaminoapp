package com.narvii.poweruser;

import android.content.Intent;
import android.os.Bundle;
import com.narvii.app.NVFragment;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;

/* loaded from: classes3.dex */
public class ChangeCategoryFragment extends NVFragment {
    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            Utils.toastTODO(getContext());
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1) {
            if (i2 == -1 && intent != null) {
                String stringExtra = intent.getStringExtra("id");
                String stringParam = getStringParam("id");
                ApiRequest.Builder builder = new ApiRequest.Builder();
                builder.https().post();
                builder.path("/blog/" + stringParam + "/admin");
                builder.param("adminOpName", 103);
                builder.param("adminOpValue", stringExtra);
                ApiRequest apiRequestBuild = builder.build();
                ProgressDialog progressDialog = new ProgressDialog(getContext());
                progressDialog.show();
                ((ApiService) getService("api")).exec(apiRequestBuild, progressDialog.dismissListener);
            }
            getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
        }
        super.onActivityResult(i, i2, intent);
    }
}
