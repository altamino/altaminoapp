package com.narvii.wallet;

import android.content.DialogInterface;
import android.os.SystemClock;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;

/* loaded from: classes3.dex */
public class RewardVideoHelper {
    private AdsVendor adsVendor;
    private NVContext nvContext;
    private ProgressDialog pendingDlg;
    private boolean pendingRewardVideo;
    private long rewardVideoStartMs;
    private Runnable delayCloseRunnable = new Runnable() { // from class: com.narvii.wallet.RewardVideoHelper.1
        @Override // java.lang.Runnable
        public void run() {
            RewardVideoHelper.this.delayCloseRunnable = null;
            RewardVideoHelper.this.cleanPendingDialog();
        }
    };
    Callback rewardVideoCallback = new Callback<Object>() { // from class: com.narvii.wallet.RewardVideoHelper.2
        @Override // com.narvii.util.Callback
        public void call(Object obj) {
            if (RewardVideoHelper.this.pendingRewardVideo) {
                if ((RewardVideoHelper.this.nvContext.getContext() instanceof NVActivity) && !((NVActivity) RewardVideoHelper.this.nvContext.getContext()).isActivityResumed()) {
                    RewardVideoHelper.this.cleanPendingDialog();
                    return;
                }
                if (obj == Boolean.TRUE) {
                    if (RewardVideoHelper.this.adsVendor.openRewardVideo(RewardVideoHelper.this.nvContext)) {
                        RewardVideoHelper.this.pendingRewardVideo = false;
                        RewardVideoHelper.this.delayCloseRunnable = new Runnable() { // from class: com.narvii.wallet.RewardVideoHelper.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                RewardVideoHelper.this.delayCloseRunnable = null;
                                RewardVideoHelper.this.cleanPendingDialog();
                                RewardVideoHelper.this.onDelayClose();
                            }
                        };
                        Utils.postDelayed(RewardVideoHelper.this.delayCloseRunnable, ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
                        RewardVideoHelper.this.onRewardVideoOpened(SystemClock.elapsedRealtime() - RewardVideoHelper.this.rewardVideoStartMs);
                        ((ApiService) RewardVideoHelper.this.nvContext.getService("api")).exec(ApiRequest.builder().global().post().path("/wallet/ads/video/start").build(), new ApiResponseListener<AdsVideoStatsResponse>(AdsVideoStatsResponse.class) { // from class: com.narvii.wallet.RewardVideoHelper.2.2
                            @Override // com.narvii.util.http.ApiResponseListener
                            public void onFinish(ApiRequest apiRequest, AdsVideoStatsResponse adsVideoStatsResponse) throws Exception {
                                AdsVideoStats adsVideoStats;
                                super.onFinish(apiRequest, (ApiRequest) adsVideoStatsResponse);
                                RewardVideoHelper.this.onAdsVideoStatsResponse(adsVideoStatsResponse);
                                if (!RewardVideoHelper.this.autoLoadNextRewardVideo() || RewardVideoHelper.this.pendingRewardVideo || (adsVideoStats = adsVideoStatsResponse.adsVideoStats) == null || !adsVideoStats.canWatchVideo) {
                                    return;
                                }
                                RewardVideoHelper.this.adsVendor.requestRewardVideo(RewardVideoHelper.this.nvContext, null);
                            }
                        });
                        return;
                    }
                    RewardVideoHelper.this.cleanPendingDialog();
                    NVToast.makeText(RewardVideoHelper.this.nvContext.getContext(), R.string.wallet_no_ads, 0).show();
                    return;
                }
                RewardVideoHelper.this.cleanPendingDialog();
                NVToast.makeText(RewardVideoHelper.this.nvContext.getContext(), Utils.getErrorCodeMessage(RewardVideoHelper.this.nvContext.getContext(), R.string.wallet_no_ads, obj), 0).show();
            }
        }
    };

    protected boolean autoLoadNextRewardVideo() {
        return true;
    }

    protected void onAdsVideoStatsResponse(AdsVideoStatsResponse adsVideoStatsResponse) {
    }

    protected void onDelayClose() {
    }

    protected void onRewardVideoOpened(long j) {
    }

    public RewardVideoHelper(NVContext nVContext, AdsVendor adsVendor) {
        this.nvContext = nVContext;
        this.adsVendor = adsVendor;
    }

    private void showPendingDialog() {
        this.pendingRewardVideo = true;
        this.pendingDlg = new ProgressDialog(this.nvContext.getContext());
        this.pendingDlg.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.wallet.-$$Lambda$RewardVideoHelper$JGxkL0QGm5BLTc3r10mpisynIA0
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f$0.lambda$showPendingDialog$0$RewardVideoHelper(dialogInterface);
            }
        });
        this.pendingDlg.show();
    }

    public /* synthetic */ void lambda$showPendingDialog$0$RewardVideoHelper(DialogInterface dialogInterface) {
        this.pendingDlg = null;
        this.pendingRewardVideo = false;
        Runnable runnable = this.delayCloseRunnable;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        abortRewardVideo();
    }

    public void startRewardVideo() {
        this.rewardVideoStartMs = SystemClock.elapsedRealtime();
        showPendingDialog();
        this.adsVendor.requestRewardVideo(this.nvContext, this.rewardVideoCallback);
    }

    private void abortRewardVideo() {
        this.adsVendor.abortRewardVideo(this.rewardVideoCallback);
    }

    public void cleanPendingDialog() {
        this.pendingRewardVideo = false;
        ProgressDialog progressDialog = this.pendingDlg;
        if (progressDialog != null) {
            progressDialog.dismiss();
            this.pendingDlg = null;
        }
    }

    public boolean isPendingRewardVideo() {
        return this.pendingRewardVideo;
    }
}
