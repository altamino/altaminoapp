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

/* loaded from: classes2.dex */
public class CheckInHelper {
    CommunityConfigHelper communityConfigHelper;
    NVContext nvContext;
    public String source;

    public CheckInHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
    }

    public boolean shouldShowStrikeLost(CheckInHistory checkInHistory) {
        return shouldShowStrikeLost(checkInHistory, -1);
    }

    public boolean shouldShowStrikeLost(CheckInHistory checkInHistory, int i) {
        boolean[] checkInHistory2;
        if (checkInHistory == null || !this.communityConfigHelper.isPremiumFeatureEnabled() || !checkInHistory.hasAnyCheckIn || (checkInHistory2 = parseCheckInHistory(checkInHistory, i)) == null || checkInHistory2.length < 2) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(checkInHistory.joinedTime * 1000);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        for (int length = (checkInHistory2.length - 1) - 1; length > Math.max(-1, (checkInHistory2.length - 1) - 7); length--) {
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

    public boolean[] parseCheckInHistory(CheckInHistory checkInHistory) {
        return parseCheckInHistory(checkInHistory, -1);
    }

    public boolean[] parseCheckInHistory(CheckInHistory checkInHistory, int i) {
        if (checkInHistory == null) {
            return null;
        }
        int i2 = (int) (((checkInHistory.stopTime - checkInHistory.startTime) / 86400) + 1);
        if (i == -1) {
            i = i2;
        } else if (i != i2 && NVApplication.DEBUG) {
            Log.e("days", checkInHistory.startTime + "-" + checkInHistory.stopTime + "-" + Utils.getTimeZoneInMin() + "-" + i2 + "-" + i);
        }
        boolean[] zArr = new boolean[i];
        if (!TextUtils.isEmpty(checkInHistory.history)) {
            byte[] bArrDecode = Base64.decode(checkInHistory.history, 0);
            if (checkInHistory.startTime < checkInHistory.stopTime) {
                int length = bArrDecode.length;
                int i3 = 0;
                int i4 = 0;
                while (i3 < length) {
                    byte b = bArrDecode[i3];
                    int i5 = i4;
                    for (int i6 = 0; i6 <= 7 && i5 != i; i6++) {
                        zArr[i5] = isBitSet(b, i6).booleanValue();
                        i5++;
                    }
                    i3++;
                    i4 = i5;
                }
            }
        }
        return zArr;
    }

    public long getFixedStartTime(CheckInHistory checkInHistory, int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(checkInHistory.stopTime * 1000);
        calendar.add(6, -(i - 1));
        return calendar.getTime().getTime();
    }

    private static Boolean isBitSet(byte b, int i) {
        return Boolean.valueOf((b & (1 << (7 - i))) != 0);
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
            if (length <= Math.max(-1, (checkInHistory2.length - 1) - 7)) {
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
        int length = checkInHistory2.length - 1;
        while (true) {
            if (length <= Math.max(-1, (checkInHistory2.length - 1) - 7)) {
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
            } else if (this.communityConfigHelper.isPremiumFeatureEnabled()) {
                linkedList.addFirst(1);
            }
            length--;
        }
        return linkedList;
    }

    public ApiRequest getHistoryRequest(int i, long j) {
        long j2 = j / 1000;
        return ApiRequest.builder().path("/check-in/history").param("startTime", Long.valueOf(j2 - ((i - 1) * 86400))).param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).param("stopTime", Long.valueOf(j2)).build();
    }

    public void startStreakRepairDialog() {
        startStreakRepairDialog(null);
    }

    public void startStreakRepairDialog(final Callback<StreakRepairDialog> callback) {
        final ApiRequest historyRequest = getHistoryRequest(7, System.currentTimeMillis());
        final ApiService apiService = (ApiService) this.nvContext.getService("api");
        final ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        apiService.exec(historyRequest, new ApiResponseListener<CheckInHistoryResponse>(CheckInHistoryResponse.class) { // from class: com.narvii.checkin.CheckInHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(CheckInHelper.this.nvContext.getContext(), str, 0).show();
                progressDialog.dismiss();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CheckInHistoryResponse checkInHistoryResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) checkInHistoryResponse);
                progressDialog.dismiss();
                AccountService accountService = (AccountService) CheckInHelper.this.nvContext.getService("account");
                accountService.updateCheckInHistoryInfo(checkInHistoryResponse.checkInHistory, checkInHistoryResponse.timestamp, true);
                CheckInHistory checkInHistory = checkInHistoryResponse.checkInHistory;
                accountService.updateCheckInInfo(checkInHistory.hasCheckInToday, checkInHistory.consecutiveCheckInDays, checkInHistoryResponse.timestamp, true);
                CheckInHistory checkInHistory2 = checkInHistoryResponse.checkInHistory;
                if (checkInHistory2 != null) {
                    StreakRepairDialog streakRepairDialog = new StreakRepairDialog(CheckInHelper.this.nvContext, checkInHistory2);
                    streakRepairDialog.source = CheckInHelper.this.source;
                    streakRepairDialog.show();
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(streakRepairDialog);
                        return;
                    }
                    return;
                }
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(null);
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
}
