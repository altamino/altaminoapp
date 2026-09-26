package com.narvii.poweruser;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.narvii.amino.master.R;
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
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class SendBroadcastDialogFragment extends DialogFragment implements View.OnClickListener {
    private SendBroadcastDialog dialog;
    EditText editText;
    LinkSummary linkSummary;
    String linkUrl;
    int membersCount;

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
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
            push.payload.f1850u = this.linkUrl;
            push.scheduledTime = this.dialog.time;
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.show();
            ((ApiService) nVActivity.getService("api")).exec(ApiRequest.builder().post().path("/push").body(JacksonUtils.writeAsString(push)).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.poweruser.SendBroadcastDialogFragment.3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    if (SendBroadcastDialogFragment.this.getActivity() == null) {
                        return;
                    }
                    ProgressDialog progressDialog2 = progressDialog;
                    if (progressDialog2 != null) {
                        progressDialog2.dismiss();
                    }
                    new SendBroadcastHelper(nVActivity).processError(i10, str, null);
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

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 1 && i11 == -1) {
            this.dialog.setTime(intent.getIntExtra("time", 0));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.cancel) {
            if (id != R.id.submit) {
                if (id == R.id.time) {
                    Intent intent = FragmentWrapperActivity.intent(DeliveryTimePickerFragment.class);
                    intent.putExtra("time", this.dialog.time);
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 1);
                    return;
                }
                return;
            }
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.setTitle(R.string.send_broadcast_action_sheet_title);
            actionSheetDialog.addItem(R.string.submit, false);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.poweruser.SendBroadcastDialogFragment.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    if (i10 != 0) {
                        return;
                    }
                    SendBroadcastDialogFragment.this.sendPushRequest();
                }
            });
            actionSheetDialog.show();
            return;
        }
        dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        this.membersCount = getArguments().getInt("membersCount", 0);
        this.linkUrl = getArguments().getString("linkUrl");
        this.linkSummary = (LinkSummary) JacksonUtils.readAs(getArguments().getString("linkSummary"), LinkSummary.class);
        SendBroadcastDialog sendBroadcastDialog = new SendBroadcastDialog(getContext(), this.linkSummary, this.membersCount);
        this.dialog = sendBroadcastDialog;
        sendBroadcastDialog.findViewById(R.id.time).setOnClickListener(this);
        this.editText = (EditText) this.dialog.findViewById(R.id.content);
        this.dialog.findViewById(R.id.cancel).setOnClickListener(this);
        this.dialog.findViewById(R.id.submit).setOnClickListener(this);
        return this.dialog;
    }

    @Override // androidx.fragment.app.Fragment
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
}
