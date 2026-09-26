package com.narvii.poweruser;

import android.content.Intent;
import android.os.Bundle;
import com.narvii.app.NVFragment;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;

/* JADX INFO: loaded from: classes8.dex */
public class ChangeCategoryFragment extends NVFragment {
    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 1) {
            if (i11 == -1 && intent != null) {
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
            getFragmentManager().q().t(this).k();
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            Utils.toastTODO(getContext());
        }
    }
}
