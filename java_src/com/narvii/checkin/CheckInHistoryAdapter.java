package com.narvii.checkin;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.checkin.CheckInHistoryView;
import com.narvii.list.NVAdapter;
import com.narvii.model.CheckInHistory;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.Calendar;
import java.util.List;

/* loaded from: classes2.dex */
public class CheckInHistoryAdapter extends NVAdapter {
    public static boolean[] _checkins;
    public static long _joinTime;
    public static long _startTime;
    private CheckInHistoryResponse checkInHistoryResponse;
    private boolean dataGot;
    private int days;
    String error;
    List<Boolean> history;
    private CheckInHistoryView historyView;
    boolean isMe;
    private int mColumn;
    private TextView strikeLost;

    @Override // android.widget.Adapter
    public int getCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return false;
    }

    public CheckInHistoryAdapter(NVContext nVContext, boolean z) {
        super(nVContext);
        this.isMe = z;
    }

    public boolean isDataGot() {
        return this.dataGot;
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        refreshMonitorStart(i, callback);
        this.error = null;
        sendRequest();
        notifyDataSetChanged();
        refreshMonitorEnd();
    }

    public void sendRequest() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        this.days = Math.abs(calendar.getFirstDayOfWeek() - calendar.get(7)) + 1 + ((this.mColumn - 1) * 7);
        ApiService apiService = (ApiService) getService("api");
        final CheckInHelper checkInHelper = new CheckInHelper(getParentContext());
        apiService.exec(checkInHelper.getHistoryRequest(this.days, jCurrentTimeMillis), new ApiResponseListener<CheckInHistoryResponse>(CheckInHistoryResponse.class) { // from class: com.narvii.checkin.CheckInHistoryAdapter.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CheckInHistoryResponse checkInHistoryResponse) {
                CheckInHistoryAdapter.this.checkInHistoryResponse = checkInHistoryResponse;
                CheckInHistory checkInHistory = checkInHistoryResponse.checkInHistory;
                if (checkInHistory != null) {
                    boolean[] checkInHistory2 = checkInHelper.parseCheckInHistory(checkInHistory, CheckInHistoryAdapter.this.days);
                    long j = checkInHistoryResponse.checkInHistory.joinedTime * 1000;
                    if (CheckInHistoryAdapter.this.historyView != null) {
                        CheckInHistoryAdapter.this.historyView.setCheckins(checkInHelper.getFixedStartTime(checkInHistoryResponse.checkInHistory, checkInHistory2.length), checkInHistory2, j, checkInHistoryResponse.checkInHistory.hasAnyCheckIn);
                    }
                    if (CheckInHistoryAdapter.this.strikeLost != null) {
                        TextView textView = CheckInHistoryAdapter.this.strikeLost;
                        CheckInHistoryAdapter checkInHistoryAdapter = CheckInHistoryAdapter.this;
                        ViewUtils.show(textView, checkInHistoryAdapter.isMe && checkInHelper.shouldShowStrikeLost(checkInHistoryResponse.checkInHistory, checkInHistoryAdapter.days));
                    }
                }
                CheckInHistoryAdapter.this.dataGot = true;
                CheckInHistoryAdapter checkInHistoryAdapter2 = CheckInHistoryAdapter.this;
                checkInHistoryAdapter2.error = null;
                checkInHistoryAdapter2.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                CheckInHistoryAdapter checkInHistoryAdapter = CheckInHistoryAdapter.this;
                checkInHistoryAdapter.error = str;
                checkInHistoryAdapter.notifyDataSetChanged();
            }
        });
    }

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        if (isDataGot()) {
            return null;
        }
        return this.error;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isListShown() {
        return isDataGot() || this.error != null;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (view2 != null && view2.getId() == R.id.strike_lost) {
            CheckInHelper checkInHelper = new CheckInHelper(getParentContext());
            checkInHelper.source = "Achievements";
            checkInHelper.startStreakRepairDialog();
            return true;
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.check_in_history, viewGroup, view);
        CheckInHistoryView checkInHistoryView = (CheckInHistoryView) viewCreateView.findViewById(R.id.check_in_history);
        this.historyView = checkInHistoryView;
        this.historyView.setMe(this.isMe);
        this.strikeLost = (TextView) viewCreateView.findViewById(R.id.strike_lost);
        this.strikeLost.setOnClickListener(this.subviewClickListener);
        if (checkInHistoryView.getAfterGetColumnListener() == null) {
            checkInHistoryView.setAfterGetColumnListener(new CheckInHistoryView.AfterGetColumnListener() { // from class: com.narvii.checkin.CheckInHistoryAdapter.2
                @Override // com.narvii.checkin.CheckInHistoryView.AfterGetColumnListener
                public void onGetColumn(int i2) {
                    CheckInHistoryAdapter.this.mColumn = i2;
                    CheckInHistoryAdapter.this.sendRequest();
                }
            });
        }
        return viewCreateView;
    }
}
