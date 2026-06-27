package com.narvii.poweruser;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.EditText;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.broadcast.DeliveryTimePickerFragment;
import com.narvii.broadcast.model.Push;
import com.narvii.model.LinkSummary;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes3.dex */
public class SendBroadcastDialogFragment extends DialogFragment implements View.OnClickListener {
    private SendBroadcastDialog dialog;
    EditText editText;
    LinkSummary linkSummary;
    String linkUrl;
    int membersCount;

    @Override // android.support.v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.membersCount = getArguments().getInt("membersCount", 0);
        this.linkUrl = getArguments().getString("linkUrl");
        this.linkSummary = (LinkSummary) JacksonUtils.readAs(getArguments().getString("linkSummary"), LinkSummary.class);
        this.dialog = new SendBroadcastDialog(getContext(), this.linkSummary, this.membersCount);
        this.dialog.findViewById(R.id.time).setOnClickListener(this);
        this.editText = (EditText) this.dialog.findViewById(R.id.content);
        this.dialog.findViewById(R.id.cancel).setOnClickListener(this);
        this.dialog.findViewById(R.id.submit).setOnClickListener(this);
        return this.dialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.cancel) {
            dismissAllowingStateLoss();
            return;
        }
        if (id != R.id.submit) {
            if (id != R.id.time) {
                return;
            }
            Intent intent = FragmentWrapperActivity.intent(DeliveryTimePickerFragment.class);
            intent.putExtra("time", this.dialog.time);
            startActivityForResult(intent, 1);
            return;
        }
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.setTitle(R.string.send_broadcast_action_sheet_title);
        actionSheetDialog.addItem(R.string.submit, false);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.poweruser.SendBroadcastDialogFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i != 0) {
                    return;
                }
                SendBroadcastDialogFragment.this.sendPushRequest();
            }
        });
        actionSheetDialog.show();
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        Utils.postDelayed(new Runnable() { // from class: com.narvii.poweruser.SendBroadcastDialogFragment.2
            @Override // java.lang.Runnable
            public void run() {
                EditText editText = SendBroadcastDialogFragment.this.editText;
                if (editText != null) {
                    SoftKeyboard.showSoftKeyboard(editText);
                }
            }
        }, 20L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPushRequest() {
        if (this.dialog == null) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            final NVActivity nVActivity = (NVActivity) activity;
            Push push = new Push();
            push.payload.aps.alert = this.editText.getText().toString();
            push.payload.u = this.linkUrl;
            push.scheduledTime = this.dialog.time;
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.show();
            ((ApiService) nVActivity.getService("api")).exec(ApiRequest.builder().post().path("/push").body(JacksonUtils.writeAsString(push)).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.poweruser.SendBroadcastDialogFragment.3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    if (SendBroadcastDialogFragment.this.getActivity() == null) {
                        return;
                    }
                    ProgressDialog progressDialog2 = progressDialog;
                    if (progressDialog2 != null) {
                        progressDialog2.dismiss();
                    }
                    new SendBroadcastHelper(nVActivity).processError(i, str, null);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                    if (SendBroadcastDialogFragment.this.getActivity() == null) {
                        return;
                    }
                    ProgressDialog progressDialog2 = progressDialog;
                    if (progressDialog2 != null) {
                        progressDialog2.dismiss();
                    }
                    SendBroadcastDialogFragment.this.dismissAllowingStateLoss();
                    NVToast.makeText(SendBroadcastDialogFragment.this.getContext(), R.string.submitted, 0).show();
                }
            });
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1 && i2 == -1) {
            this.dialog.setTime(intent.getIntExtra("time", 0));
        }
    }
}
