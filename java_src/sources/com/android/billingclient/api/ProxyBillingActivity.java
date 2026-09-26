package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.view.MotionEvent;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.zzb;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;

/* JADX INFO: loaded from: classes4.dex */
@UsedByReflection("PlatformActivityProxy")
public class ProxyBillingActivity extends ComponentActivity {
    static final String KEY_ALTERNATIVE_BILLING_ONLY_DIALOG_RESULT_RECEIVER = "alternative_billing_only_dialog_result_receiver";
    static final String KEY_IN_APP_MESSAGE_RESULT_RECEIVER = "in_app_message_result_receiver";
    static final String KEY_PRICE_CHANGE_RESULT_RECEIVER = "result_receiver";
    private static final String KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED = "send_cancelled_broadcast_if_finished";
    private static final int REQUEST_CODE_FIRST_PARTY_PURCHASE_FLOW = 110;
    private static final int REQUEST_CODE_IN_APP_MESSAGE_FLOW = 101;
    private static final int REQUEST_CODE_LAUNCH_ACTIVITY = 100;
    private static final String TAG = "ProxyBillingActivity";
    private ActivityResultLauncher<IntentSenderRequest> alternativeBillingOnlyDialogLauncher;

    @Nullable
    private ResultReceiver alternativeBillingOnlyDialogResultReceiver;

    @Nullable
    private ResultReceiver inAppMessageResultReceiver;
    private boolean isFlowFromFirstPartyClient;

    @Nullable
    private ResultReceiver priceChangeResultReceiver;
    private boolean sendCancelledBroadcastIfFinished;

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.activityOnTouch("com.android.billingclient", me);
        return super.dispatchTouchEvent(me);
    }

    private Intent d(String str) {
        Intent intent = new Intent("com.android.vending.billing.ALTERNATIVE_BILLING");
        intent.setPackage(getApplicationContext().getPackageName());
        intent.putExtra("ALTERNATIVE_BILLING_USER_CHOICE_DATA", str);
        return intent;
    }

    private Intent e() {
        getApplicationContext().getPackageName();
        Intent intent = new Intent("com.android.vending.billing.PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    @VisibleForTesting
    void f(ActivityResult activityResult) {
        Bundle extras;
        Intent intentC = activityResult.c();
        int iZzc = zzb.zzc(intentC, TAG);
        ResultReceiver resultReceiver = this.alternativeBillingOnlyDialogResultReceiver;
        if (resultReceiver != null) {
            if (intentC == null) {
                extras = null;
            } else {
                extras = intentC.getExtras();
            }
            resultReceiver.send(iZzc, extras);
        }
        if (activityResult.e() != -1 || iZzc != 0) {
            zzb.zzk(TAG, "Alternative billing only dialog finished with resultCode " + activityResult.e() + " and billing's responseCode: " + iZzc);
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        Intent intentE;
        super.onActivityResult(i10, i11, intent);
        Bundle extras = null;
        if (i10 != 100 && i10 != 110) {
            if (i10 == 101) {
                int iZza = zzb.zza(intent, TAG);
                ResultReceiver resultReceiver = this.inAppMessageResultReceiver;
                if (resultReceiver != null) {
                    if (intent != null) {
                        extras = intent.getExtras();
                    }
                    resultReceiver.send(iZza, extras);
                }
            } else {
                zzb.zzk(TAG, "Got onActivityResult with wrong requestCode: " + i10 + "; skipping...");
            }
        } else {
            int iZzc = zzb.zzc(intent, TAG);
            if (i11 == -1) {
                if (iZzc != 0) {
                    i11 = -1;
                    zzb.zzk(TAG, "Activity finished with resultCode " + i11 + " and billing's responseCode: " + iZzc);
                } else {
                    iZzc = 0;
                }
            } else {
                zzb.zzk(TAG, "Activity finished with resultCode " + i11 + " and billing's responseCode: " + iZzc);
            }
            ResultReceiver resultReceiver2 = this.priceChangeResultReceiver;
            if (resultReceiver2 != null) {
                if (intent != null) {
                    extras = intent.getExtras();
                }
                resultReceiver2.send(iZzc, extras);
            } else {
                if (intent != null) {
                    if (intent.getExtras() != null) {
                        String string = intent.getExtras().getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
                        if (string != null) {
                            intentE = d(string);
                            intentE.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                        } else {
                            intentE = e();
                            intentE.putExtras(intent.getExtras());
                            intentE.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                        }
                    } else {
                        intentE = e();
                        zzb.zzk(TAG, "Got null bundle!");
                        intentE.putExtra("RESPONSE_CODE", 6);
                        intentE.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                        h.a aVarC = h.c();
                        aVarC.c(6);
                        aVarC.b("An internal error occurred.");
                        intentE.putExtra("FAILURE_LOGGING_PAYLOAD", m0.a(22, 2, aVarC.a()).zzc());
                        intentE.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                    }
                } else {
                    intentE = e();
                }
                if (i10 == 110) {
                    intentE.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                }
                sendBroadcast(intentE);
            }
        }
        this.sendCancelledBroadcastIfFinished = false;
        finish();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        int i10;
        PendingIntent pendingIntent;
        int i11;
        super.onCreate(bundle);
        this.alternativeBillingOnlyDialogLauncher = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() { // from class: com.android.billingclient.api.f1
            @Override // androidx.activity.result.ActivityResultCallback
            public final void a(Object obj) {
                this.zza.f((ActivityResult) obj);
            }
        });
        if (bundle == null) {
            zzb.zzj(TAG, "Launching Play Store billing flow");
            if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
                PendingIntent pendingIntent2 = (PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
                this.alternativeBillingOnlyDialogResultReceiver = (ResultReceiver) getIntent().getParcelableExtra(KEY_ALTERNATIVE_BILLING_ONLY_DIALOG_RESULT_RECEIVER);
                this.alternativeBillingOnlyDialogLauncher.a(new IntentSenderRequest.Builder(pendingIntent2).a());
                return;
            }
            if (getIntent().hasExtra("BUY_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
                if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                    this.isFlowFromFirstPartyClient = true;
                    i11 = 110;
                    i10 = i11;
                } else {
                    i10 = 100;
                }
            } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
                this.priceChangeResultReceiver = (ResultReceiver) getIntent().getParcelableExtra(KEY_PRICE_CHANGE_RESULT_RECEIVER);
                i10 = 100;
            } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
                this.inAppMessageResultReceiver = (ResultReceiver) getIntent().getParcelableExtra(KEY_IN_APP_MESSAGE_RESULT_RECEIVER);
                i11 = 101;
                i10 = i11;
            } else {
                i10 = 100;
                pendingIntent = null;
            }
            try {
                this.sendCancelledBroadcastIfFinished = true;
                startIntentSenderForResult(pendingIntent.getIntentSender(), i10, new Intent(), 0, 0, 0);
                return;
            } catch (IntentSender.SendIntentException e) {
                zzb.zzl(TAG, "Got exception while trying to start a purchase flow.", e);
                ResultReceiver resultReceiver = this.priceChangeResultReceiver;
                if (resultReceiver != null) {
                    resultReceiver.send(6, null);
                } else {
                    ResultReceiver resultReceiver2 = this.inAppMessageResultReceiver;
                    if (resultReceiver2 != null) {
                        resultReceiver2.send(0, null);
                    } else {
                        Intent intentE = e();
                        if (this.isFlowFromFirstPartyClient) {
                            intentE.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                        }
                        intentE.putExtra("RESPONSE_CODE", 6);
                        intentE.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                        sendBroadcast(intentE);
                    }
                }
                this.sendCancelledBroadcastIfFinished = false;
                finish();
                return;
            }
        }
        zzb.zzj(TAG, "Launching Play Store billing flow from savedInstanceState");
        this.sendCancelledBroadcastIfFinished = bundle.getBoolean(KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED, false);
        if (bundle.containsKey(KEY_PRICE_CHANGE_RESULT_RECEIVER)) {
            this.priceChangeResultReceiver = (ResultReceiver) bundle.getParcelable(KEY_PRICE_CHANGE_RESULT_RECEIVER);
        } else if (bundle.containsKey(KEY_IN_APP_MESSAGE_RESULT_RECEIVER)) {
            this.inAppMessageResultReceiver = (ResultReceiver) bundle.getParcelable(KEY_IN_APP_MESSAGE_RESULT_RECEIVER);
        } else if (bundle.containsKey(KEY_ALTERNATIVE_BILLING_ONLY_DIALOG_RESULT_RECEIVER)) {
            this.alternativeBillingOnlyDialogResultReceiver = (ResultReceiver) bundle.getParcelable(KEY_ALTERNATIVE_BILLING_ONLY_DIALOG_RESULT_RECEIVER);
        }
        this.isFlowFromFirstPartyClient = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.sendCancelledBroadcastIfFinished) {
            Intent intentE = e();
            intentE.putExtra("RESPONSE_CODE", 1);
            intentE.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            sendBroadcast(intentE);
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.priceChangeResultReceiver;
        if (resultReceiver != null) {
            bundle.putParcelable(KEY_PRICE_CHANGE_RESULT_RECEIVER, resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.inAppMessageResultReceiver;
        if (resultReceiver2 != null) {
            bundle.putParcelable(KEY_IN_APP_MESSAGE_RESULT_RECEIVER, resultReceiver2);
        }
        ResultReceiver resultReceiver3 = this.alternativeBillingOnlyDialogResultReceiver;
        if (resultReceiver3 != null) {
            bundle.putParcelable(KEY_ALTERNATIVE_BILLING_ONLY_DIALOG_RESULT_RECEIVER, resultReceiver3);
        }
        bundle.putBoolean(KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED, this.sendCancelledBroadcastIfFinished);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.isFlowFromFirstPartyClient);
    }
}
