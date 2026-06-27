package com.narvii.util.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.widget.TextView;
import com.narvii.app.NVDialog;
import com.narvii.lib.R;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes3.dex */
public class ProgressDialog extends NVDialog {
    public static final int ERROR_ALERT = 1;
    public static final int ERROR_TOAST = 0;
    public final ApiResponseListener<ApiResponse> dismissListener;
    private boolean errorDialogFirst;
    public int errorMode;
    public Callback<String> failureListener;
    public int minShowTime;
    private TextView progressContent;
    public final Class<ApiResponse> responseType;
    private long showTime;
    public Callback<ApiResponse> successListener;

    public ProgressDialog(Context context) {
        this(context, ApiResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ProgressDialog(Context context, Class<? extends ApiResponse> cls) {
        super(context, R.style.CustomDialog);
        this.errorMode = 0;
        this.errorDialogFirst = false;
        this.minShowTime = 1200;
        this.responseType = cls;
        this.dismissListener = new ResultListener(this.responseType);
        setContentView(R.layout.dialog_progress_layout);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        findViewById(R.id.root).setBackgroundDrawable(drawable);
    }

    public void updateProgress(String str) {
        if (this.progressContent == null) {
            this.progressContent = (TextView) findViewById(R.id.progress_content);
        }
        if (TextUtils.isEmpty(str)) {
            this.progressContent.setVisibility(8);
        } else {
            this.progressContent.setVisibility(0);
            this.progressContent.setText(str);
        }
    }

    public void hideProgressContent() {
        if (this.progressContent == null) {
            this.progressContent = (TextView) findViewById(R.id.progress_content);
        }
        this.progressContent.setVisibility(8);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        hideProgressContent();
        try {
            super.show();
            this.showTime = SystemClock.elapsedRealtime();
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception unused) {
        }
    }

    public void setErrorDialogFirst(boolean z) {
        this.errorDialogFirst = z;
    }

    private class ResultListener extends ApiResponseListener<ApiResponse> {
        public ResultListener(Class<? extends ApiResponse> cls) {
            super(cls);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, final ApiResponse apiResponse) throws Exception {
            Runnable runnable = new Runnable() { // from class: com.narvii.util.dialog.ProgressDialog.ResultListener.1
                @Override // java.lang.Runnable
                public void run() {
                    ProgressDialog.this.dismiss();
                    Callback<ApiResponse> callback = ProgressDialog.this.successListener;
                    if (callback != null) {
                        callback.call(apiResponse);
                    }
                }
            };
            long jElapsedRealtime = (r6.minShowTime + ProgressDialog.this.showTime) - SystemClock.elapsedRealtime();
            if (jElapsedRealtime > 0) {
                Utils.postDelayed(runnable, jElapsedRealtime);
            } else {
                runnable.run();
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, final String str, final ApiResponse apiResponse, Throwable th) {
            Runnable runnable = new Runnable() { // from class: com.narvii.util.dialog.ProgressDialog.ResultListener.2
                @Override // java.lang.Runnable
                public void run() {
                    ProgressDialog.this.dismiss();
                    if (ProgressDialog.this.errorDialogFirst) {
                        Utils.showNetworkError(str, apiResponse, ProgressDialog.this.getContext());
                    } else {
                        ProgressDialog progressDialog = ProgressDialog.this;
                        if (progressDialog.errorMode == 1 && ApiService.shouldShowErrMessage(progressDialog.getContext())) {
                            AlertDialog.Builder builder = new AlertDialog.Builder(ProgressDialog.this.getContext());
                            builder.setIcon(android.R.drawable.ic_dialog_alert);
                            builder.setMessage(str);
                            builder.setNegativeButton(android.R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                            builder.show();
                        } else {
                            NVToast.makeText(ProgressDialog.this.getContext(), str, 1).show();
                        }
                    }
                    Callback<String> callback = ProgressDialog.this.failureListener;
                    if (callback != null) {
                        callback.call(str);
                    }
                }
            };
            long showDelay = ProgressDialog.this.getShowDelay();
            if (showDelay > 0) {
                Utils.postDelayed(runnable, showDelay);
            } else {
                runnable.run();
            }
        }
    }

    public long getShowDelay() {
        return (this.minShowTime + this.showTime) - SystemClock.elapsedRealtime();
    }
}
