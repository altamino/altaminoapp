package com.narvii.checkin;

import android.content.DialogInterface;
import android.text.TextUtils;
import android.util.Base64;
import com.narvii.account.AccountService;
import com.narvii.achievements.StreakRepairDialog;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.CheckInHistory;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.Calendar;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class CheckInHelper {
    CommunityConfigHelper communityConfigHelper;
    NVContext nvContext;
    public String source;

    public List<Integer> getStreakLostList(CheckInHistory checkInHistory) {
        boolean[] checkInHistory2;
        if (checkInHistory == null || (checkInHistory2 = parseCheckInHistory(checkInHistory)) == null || !checkInHistory.hasAnyCheckIn) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(checkInHistory.joinedTime * 1000);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        for (int length = checkInHistory2.length - 1; length > Math.max(-1, checkInHistory2.length - 8); length--) {
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(getFixedStartTime(checkInHistory, checkInHistory2.length));
            calendar2.add(6, length);
            if (calendar2.before(calendar)) {
                break;
            }
            if (!checkInHistory2[length]) {
                if (length != checkInHistory2.length - 1) {
                    if (!this.communityConfigHelper.isPremiumFeatureEnabled()) {
                        break;
                    }
                    linkedList.addFirst(1);
                    break;
                }
                linkedList.addFirst(4);
            } else {
                linkedList.addFirst(2);
            }
        }
        return linkedList;
    }

    public List<Integer> getStreakRepairCellList(CheckInHistory checkInHistory) {
        boolean[] checkInHistory2;
        if (checkInHistory == null || (checkInHistory2 = parseCheckInHistory(checkInHistory)) == null) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(checkInHistory.joinedTime * 1000);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        int length = checkInHistory2.length;
        while (true) {
            length--;
            if (length <= Math.max(-1, checkInHistory2.length - 8)) {
                break;
            }
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(getFixedStartTime(checkInHistory, checkInHistory2.length));
            calendar2.add(6, length);
            if (calendar2.before(calendar)) {
                break;
            }
            if (checkInHistory2[length]) {
                linkedList.addFirst(2);
            } else if (length == checkInHistory2.length - 1) {
                linkedList.addFirst(4);
            } else {
                linkedList.addFirst(3);
            }
        }
        return linkedList;
    }

    public boolean[] parseCheckInHistory(CheckInHistory checkInHistory) {
        return parseCheckInHistory(checkInHistory, -1);
    }

    public boolean shouldShowStrikeLost(CheckInHistory checkInHistory) {
        return shouldShowStrikeLost(checkInHistory, -1);
    }

    public void startStreakRepairDialog() {
        startStreakRepairDialog(null);
    }

    private static Boolean isBitSet(byte b7, int i10) {
        return Boolean.valueOf((b7 & (1 << (7 - i10))) != 0);
    }

    public ApiRequest getHistoryRequest(int i10, long j6) {
        long j10 = j6 / 1000;
        return ApiRequest.builder().path("/check-in/history").param("startTime", Long.valueOf(j10 - (((long) (i10 - 1)) * 86400))).param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).param("stopTime", Long.valueOf(j10)).build();
    }

    public boolean[] parseCheckInHistory(CheckInHistory checkInHistory, int i10) {
        if (checkInHistory == null) {
            return null;
        }
        int i11 = (int) (((checkInHistory.stopTime - checkInHistory.startTime) / 86400) + 1);
        if (i10 == -1) {
            i10 = i11;
        } else if (i10 != i11 && NVApplication.DEBUG) {
            Log.e("days", checkInHistory.startTime + "-" + checkInHistory.stopTime + "-" + Utils.getTimeZoneInMin() + "-" + i11 + "-" + i10);
        }
        boolean[] zArr = new boolean[i10];
        if (!TextUtils.isEmpty(checkInHistory.history)) {
            byte[] bArrDecode = Base64.decode(checkInHistory.history, 0);
            if (checkInHistory.startTime < checkInHistory.stopTime) {
                int i12 = 0;
                for (byte b7 : bArrDecode) {
                    for (int i13 = 0; i13 <= 7 && i12 != i10; i13++) {
                        zArr[i12] = isBitSet(b7, i13).booleanValue();
                        i12++;
                    }
                }
            }
        }
        return zArr;
    }

    public boolean shouldShowStrikeLost(CheckInHistory checkInHistory, int i10) {
        boolean[] checkInHistory2;
        if (checkInHistory == null || !this.communityConfigHelper.isPremiumFeatureEnabled() || !checkInHistory.hasAnyCheckIn || (checkInHistory2 = parseCheckInHistory(checkInHistory, i10)) == null || checkInHistory2.length < 2) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(checkInHistory.joinedTime * 1000);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        for (int length = checkInHistory2.length - 2; length > Math.max(-1, checkInHistory2.length - 8); length--) {
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(getFixedStartTime(checkInHistory, checkInHistory2.length));
            calendar2.add(6, length);
            if (calendar2.before(calendar)) {
                return false;
            }
            if (!checkInHistory2[length]) {
                return true;
            }
        }
        return false;
    }

    public void startStreakRepairDialog(final Callback<StreakRepairDialog> callback) {
        final ApiRequest historyRequest = getHistoryRequest(7, System.currentTimeMillis());
        final ApiService apiService = (ApiService) this.nvContext.getService("api");
        final ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        apiService.exec(historyRequest, new ApiResponseListener<CheckInHistoryResponse>(CheckInHistoryResponse.class) { // from class: com.narvii.checkin.CheckInHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CheckInHistoryResponse checkInHistoryResponse) throws Exception {
                super.onFinish(apiRequest, checkInHistoryResponse);
                progressDialog.dismiss();
                AccountService accountService = (AccountService) CheckInHelper.this.nvContext.getService("account");
                accountService.updateCheckInHistoryInfo(checkInHistoryResponse.checkInHistory, checkInHistoryResponse.timestamp, true);
                CheckInHistory checkInHistory = checkInHistoryResponse.checkInHistory;
                accountService.updateCheckInInfo(checkInHistory.hasCheckInToday, checkInHistory.consecutiveCheckInDays, checkInHistoryResponse.timestamp, true);
                if (checkInHistoryResponse.checkInHistory == null) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(null);
                        return;
                    }
                    return;
                }
                StreakRepairDialog streakRepairDialog = new StreakRepairDialog(CheckInHelper.this.nvContext, checkInHistoryResponse.checkInHistory);
                streakRepairDialog.source = CheckInHelper.this.source;
                streakRepairDialog.show();
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(streakRepairDialog);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                NVToast.makeText(CheckInHelper.this.nvContext.getContext(), str, 0).show();
                progressDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }
        });
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.checkin.CheckInHelper.2
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                apiService.abort(historyRequest);
            }
        });
        progressDialog.show();
    }

    public CheckInHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
    }

    public long getFixedStartTime(CheckInHistory checkInHistory, int i10) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(checkInHistory.stopTime * 1000);
        calendar.add(6, -(i10 - 1));
        return calendar.getTime().getTime();
    }
}
