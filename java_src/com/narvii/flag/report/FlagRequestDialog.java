package com.narvii.flag.report;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.model.api.ApiResponse;
import com.narvii.userblock.BlockListResponse;
import com.narvii.userblock.UserBlockService;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.CheckDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVImageView;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class FlagRequestDialog<T extends ApiResponse> extends AlertDialog {
    protected CheckBox blockCheck;
    protected RelativeLayout blockLayout;
    public Class<? extends T> clazz;
    public int communityId;
    protected EditText edtRequest;
    private int minLength;
    private ProgressBar progressView;
    public String userId;

    @Override // com.narvii.util.dialog.AlertDialog
    protected int baseLayoutId() {
        return R.layout.dialog_falg_report_alert_layout;
    }

    public abstract ApiRequest.Builder createApiRequestBuilder(String str);

    public void execPreBlockRequest() {
    }

    protected FlagReportOptionDialog.FlagPreview getFlagPreview() {
        return null;
    }

    public boolean hasPreBlockRequest() {
        return false;
    }

    protected void onBlockUser() {
    }

    public void onRequestFail(ApiRequest apiRequest, String str) {
    }

    public void onRequestSuccess(ApiRequest apiRequest, T t) {
    }

    protected void onReuqestFinished(T t) {
    }

    public void onSendRequest() {
    }

    public boolean showBlockUser() {
        return true;
    }

    public FlagRequestDialog(Context context, Class<? extends T> cls) {
        super(context);
        this.clazz = cls;
        setTitle(getContext().getString(R.string.flag_title));
        setTitleColor(Color.rgb(0, 206, 125));
        setContentView(R.layout.dialog_request);
        this.edtRequest = (EditText) findViewById(R.id.request_edit);
        this.progressView = (ProgressBar) findViewById(R.id.request_progress);
        this.blockLayout = (RelativeLayout) findViewById(R.id.block_user_layout);
        this.blockCheck = (CheckBox) findViewById(R.id.block_user_check);
        this.blockLayout.setVisibility(showBlockUser() ? 0 : 8);
        View viewFindViewById = findViewById(R.id.flag_preview_layout);
        if (getFlagPreview() == null) {
            viewFindViewById.setVisibility(8);
        } else {
            viewFindViewById.setVisibility(0);
            NVImageView nVImageView = (NVImageView) viewFindViewById.findViewById(R.id.icon);
            TextView textView = (TextView) viewFindViewById.findViewById(R.id.title);
            TextView textView2 = (TextView) viewFindViewById.findViewById(R.id.subTitle);
            nVImageView.setImageMedia(getFlagPreview().media);
            textView.setText(getFlagPreview().title);
            textView2.setText(getFlagPreview().subTitle);
        }
        addButton(getContext().getString(R.string.cancel), 0, new View.OnClickListener() { // from class: com.narvii.flag.report.FlagRequestDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SoftKeyboard.hideSoftKeyboard(FlagRequestDialog.this.edtRequest);
                FlagRequestDialog.this.dismiss();
            }
        });
        addButton(getContext().getString(R.string.submit), 4, new View.OnClickListener() { // from class: com.narvii.flag.report.FlagRequestDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FlagRequestDialog.this.edtRequest.clearFocus();
                SoftKeyboard.hideSoftKeyboard(FlagRequestDialog.this.edtRequest);
                if (FlagRequestDialog.this.isStatusOk()) {
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.flag.report.FlagRequestDialog.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            FlagRequestDialog.this.onSendRequest();
                            FlagRequestDialog.this.progressView.setVisibility(0);
                            if (!FlagRequestDialog.this.hasPreBlockRequest()) {
                                FlagRequestDialog.this.sendFlagRequest();
                            } else {
                                FlagRequestDialog.this.execPreBlockRequest();
                            }
                        }
                    }, 100L);
                }
            }
        });
    }

    protected boolean isStatusOk() {
        return checkRequestMessage();
    }

    private boolean checkRequestMessage() {
        if (!TextUtils.isEmpty(this.edtRequest.getText())) {
            return true;
        }
        NVToast.makeText(getContext(), getContext().getString(R.string.flag_notify_title), 1).show();
        return false;
    }

    public void sendFlagRequest() {
        ApiService apiService = (ApiService) Utils.getNVContext(getContext()).getService("api");
        apiService.exec(createApiRequestBuilder(this.edtRequest.getText().toString()).build(), new ApiResponseListener<T>(this.clazz) { // from class: com.narvii.flag.report.FlagRequestDialog.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, T t) throws Exception {
                super.onFinish(apiRequest, t);
                FlagRequestDialog.this.onReuqestFinished(t);
                FlagRequestDialog.this.progressView.setVisibility(8);
                FlagRequestDialog.this.onRequestSuccess(apiRequest, t);
                FlagRequestDialog.this.dismiss();
                CheckDialog checkDialog = new CheckDialog(FlagRequestDialog.this.getContext());
                checkDialog.setText(FlagRequestDialog.this.getContext().getResources().getString(R.string.flag_successfully));
                checkDialog.show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                FlagRequestDialog.this.progressView.setVisibility(8);
                FlagRequestDialog.this.onRequestFail(apiRequest, str);
                NVToast.makeText(FlagRequestDialog.this.getContext(), str, 0).show();
            }
        });
        if (showBlockUser() && this.blockCheck.isChecked()) {
            apiService.exec(ApiRequest.builder().post().communityId(this.communityId).path("/block/" + this.userId).build(), new ApiResponseListener<BlockListResponse>(BlockListResponse.class) { // from class: com.narvii.flag.report.FlagRequestDialog.4
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, BlockListResponse blockListResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) blockListResponse);
                    FlagRequestDialog.this.onBlockUser();
                    ((UserBlockService) Utils.getNVContext(FlagRequestDialog.this.getContext()).getService("block")).updateBlockList(blockListResponse.blockedUidList, blockListResponse.blockerUidList);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                }
            });
        }
    }

    public void setFlagUserInfo(int i, String str) {
        this.userId = str;
        this.communityId = i;
    }

    public void setEditHint(String str) {
        this.edtRequest.setHint(str);
    }

    public void setEditText(String str) {
        EditText editText = this.edtRequest;
        if (editText != null) {
            editText.setText(str);
            if (str != null) {
                this.edtRequest.setSelection(str.length());
            }
        }
    }

    @Override // com.narvii.util.dialog.AlertDialog
    public View addButton(int i, int i2, View.OnClickListener onClickListener) {
        return addButton(i, i2, onClickListener);
    }

    @Override // com.narvii.util.dialog.AlertDialog
    public View addButton(CharSequence charSequence, int i, View.OnClickListener onClickListener) {
        TextView textView = (TextView) this.inflater.inflate(i != 2 ? i != 4 ? i != 8 ? R.layout.dialog_alert_button_gray : R.layout.dialog_alert_button_red : R.layout.dialog_alert_button_green : R.layout.dialog_alert_button_blue, this.buttons, false);
        textView.setText(charSequence);
        if (this.buttons.getChildCount() > 0) {
            this.inflater.inflate(R.layout.dialog_alert_button_divider, this.buttons);
        }
        this.buttons.addView(textView);
        textView.setOnClickListener(onClickListener);
        this.buttons.setVisibility(0);
        return textView;
    }
}
