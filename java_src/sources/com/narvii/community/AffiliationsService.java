package com.narvii.community;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AffiliationsService {
    private static final long EXPIRE;
    private AccountService account;
    private ArrayList<Integer> affiliations;
    private NVContext context;
    private LocalBroadcastManager lbm;
    private Callback<AffiliationResponse> refreshCallback;
    private String timeStamp;
    public final EventDispatcher<Callback<Collection<Integer>>> listeners = new EventDispatcher<>();
    public final EventDispatcher<AffiliationChangeListener> affiliationChangeListeners = new EventDispatcher<>();
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.community.AffiliationsService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AffiliationsService.this.refresh(false);
        }
    };
    private final ApiResponseListener<AffiliationResponse> listener = new ApiResponseListener<AffiliationResponse>(AffiliationResponse.class) { // from class: com.narvii.community.AffiliationsService.4
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            AffiliationsService.this.account.getPrefs().edit().remove("affiliationsTime").apply();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AffiliationResponse affiliationResponse) throws Exception {
            String strJoin = StringUtils.join(affiliationResponse.affiliations, ",");
            SharedPreferences prefs = AffiliationsService.this.account.getPrefs();
            String string = prefs.getString("affiliations", null);
            AffiliationsService.this.timeStamp = affiliationResponse.timestamp;
            if (AffiliationsService.this.refreshCallback != null) {
                AffiliationsService.this.refreshCallback.call(affiliationResponse);
            }
            if (Utils.isStringEquals(strJoin, string)) {
                return;
            }
            AffiliationsService.this.affiliations = affiliationResponse.affiliations;
            prefs.edit().putString("affiliations", strJoin).apply();
            final ArrayList<Integer> arrayList = affiliationResponse.affiliations;
            AffiliationsService.this.listeners.dispatch(new Callback<Callback<Collection<Integer>>>() { // from class: com.narvii.community.AffiliationsService.4.1
                @Override // com.narvii.util.Callback
                public void call(Callback<Collection<Integer>> callback) {
                    callback.call(arrayList);
                }
            });
            AffiliationsService.this.affiliationChangeListeners.dispatch(new Callback<AffiliationChangeListener>() { // from class: com.narvii.community.AffiliationsService.4.2
                @Override // com.narvii.util.Callback
                public void call(AffiliationChangeListener affiliationChangeListener) {
                    affiliationChangeListener.onAffiliationChanged();
                }
            });
            ((StatisticsService) AffiliationsService.this.context.getService("statistics")).event(null).userProp("Communities Joined Total", affiliationResponse.affiliations.size()).userProp("Communities Joined", affiliationResponse.affiliations);
        }
    };

    public interface AffiliationChangeListener {
        void onAffiliationChanged();
    }

    public static class AffiliationResponse extends ApiResponse {

        @JsonDeserialize(contentAs = Integer.class)
        public ArrayList<Integer> affiliations;
    }

    public String getTimeStamp() {
        return this.timeStamp;
    }

    public void opAdd(int i10) {
        op(1, i10);
    }

    public void opRemove(int i10) {
        op(-1, i10);
    }

    public void refresh(boolean z6) {
        refresh(z6, null);
    }

    static {
        EXPIRE = NVApplication.DEBUG ? 30000L : 3600000L;
    }

    private void op(int i10, int i11) {
        ArrayList arrayList = new ArrayList(affiliations());
        boolean zRemove = true;
        if (i10 == 1) {
            if (arrayList.contains(Integer.valueOf(i11))) {
                zRemove = false;
            } else {
                arrayList.add(0, Integer.valueOf(i11));
            }
        } else {
            if (i10 != -1) {
                throw new IllegalArgumentException();
            }
            zRemove = arrayList.remove(Integer.valueOf(i11));
        }
        this.account.getPrefs().edit().putString("affiliations", StringUtils.join(arrayList, ",")).remove("affiliationsTime").apply();
        this.affiliations = null;
        if (zRemove) {
            final List<Integer> listAffiliations = affiliations();
            this.listeners.dispatch(new Callback<Callback<Collection<Integer>>>() { // from class: com.narvii.community.AffiliationsService.2
                @Override // com.narvii.util.Callback
                public void call(Callback<Collection<Integer>> callback) {
                    callback.call(listAffiliations);
                }
            });
            this.affiliationChangeListeners.dispatch(new Callback<AffiliationChangeListener>() { // from class: com.narvii.community.AffiliationsService.3
                @Override // com.narvii.util.Callback
                public void call(AffiliationChangeListener affiliationChangeListener) {
                    affiliationChangeListener.onAffiliationChanged();
                }
            });
        }
    }

    public void addAffiliationChangeListener(AffiliationChangeListener affiliationChangeListener) {
        this.affiliationChangeListeners.addListener(affiliationChangeListener);
    }

    public List<Integer> affiliations() {
        if (!this.account.hasAccount()) {
            return Collections.emptyList();
        }
        if (this.affiliations == null) {
            String string = this.account.getPrefs().getString("affiliations", null);
            ArrayList<Integer> arrayList = new ArrayList<>();
            Iterator<String> it = StringUtils.split(string, ",").iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(StringUtils.parseInt(it.next(), 0)));
            }
            this.affiliations = arrayList;
        }
        return Collections.unmodifiableList(this.affiliations);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0028 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:? A[RETURN, SYNTHETIC] */
    public void refresh(boolean z6, Callback<AffiliationResponse> callback) {
        if (!this.account.hasAccount()) {
            this.affiliations = null;
            return;
        }
        SharedPreferences prefs = this.account.getPrefs();
        if (!z6) {
            long j6 = prefs.getLong("affiliationsTime", 0L);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis >= j6 && jCurrentTimeMillis <= j6 + EXPIRE) {
                if (!z6) {
                    return;
                }
            }
        } else if (!z6) {
            return;
        }
        this.refreshCallback = callback;
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().global().path("/account/affiliations").param("type", AppMeasurementSdk.ConditionalUserProperty.ACTIVE).build(), this.listener);
        prefs.edit().putLong("affiliationsTime", System.currentTimeMillis()).apply();
    }

    public void removeAffiliationChangeListener(AffiliationChangeListener affiliationChangeListener) {
        this.affiliationChangeListeners.removeListener(affiliationChangeListener);
    }

    public void start() {
        this.lbm.c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public void stop() {
        this.lbm.f(this.receiver);
    }

    public AffiliationsService(NVContext nVContext) {
        this.context = nVContext;
        this.account = (AccountService) nVContext.getService("account");
        this.lbm = LocalBroadcastManager.b(nVContext.getContext());
    }

    public boolean contains(int i10) {
        return affiliations().contains(Integer.valueOf(i10));
    }
}
