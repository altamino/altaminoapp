package com.narvii.community;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.support.v4.content.LocalBroadcastManager;
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
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
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
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            AffiliationsService.this.account.getPrefs().edit().remove("affiliationsTime").apply();
        }
    };

    public interface AffiliationChangeListener {
        void onAffiliationChanged();
    }

    /* loaded from: classes2.dex */
    public static class AffiliationResponse extends ApiResponse {

        @JsonDeserialize(contentAs = Integer.class)
        public ArrayList<Integer> affiliations;
    }

    static {
        EXPIRE = NVApplication.DEBUG ? 30000L : 3600000L;
    }

    public AffiliationsService(NVContext nVContext) {
        this.context = nVContext;
        this.account = (AccountService) nVContext.getService("account");
        this.lbm = LocalBroadcastManager.getInstance(nVContext.getContext());
    }

    public void start() {
        this.lbm.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public void stop() {
        this.lbm.unregisterReceiver(this.receiver);
    }

    public void addAffiliationChangeListener(AffiliationChangeListener affiliationChangeListener) {
        this.affiliationChangeListeners.addListener(affiliationChangeListener);
    }

    public void removeAffiliationChangeListener(AffiliationChangeListener affiliationChangeListener) {
        this.affiliationChangeListeners.removeListener(affiliationChangeListener);
    }

    public List<Integer> affiliations() {
        if (this.account.hasAccount()) {
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
        return Collections.emptyList();
    }

    public boolean contains(int i) {
        return affiliations().contains(Integer.valueOf(i));
    }

    public void opAdd(int i) {
        op(1, i);
    }

    public void opRemove(int i) {
        op(-1, i);
    }

    private void op(int i, int i2) {
        ArrayList arrayList = new ArrayList(affiliations());
        boolean zRemove = true;
        if (i == 1) {
            if (arrayList.contains(Integer.valueOf(i2))) {
                zRemove = false;
            } else {
                arrayList.add(0, Integer.valueOf(i2));
            }
        } else if (i == -1) {
            zRemove = arrayList.remove(Integer.valueOf(i2));
        } else {
            throw new IllegalArgumentException();
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

    public void refresh(boolean z) {
        refresh(z, null);
    }

    public void refresh(boolean z, Callback<AffiliationResponse> callback) {
        if (this.account.hasAccount()) {
            SharedPreferences prefs = this.account.getPrefs();
            if (!z) {
                long j = prefs.getLong("affiliationsTime", 0L);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis < j || jCurrentTimeMillis > j + EXPIRE) {
                    z = true;
                }
            }
            if (z) {
                this.refreshCallback = callback;
                ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().global().path("/account/affiliations").param("type", AppMeasurementSdk.ConditionalUserProperty.ACTIVE).build(), this.listener);
                prefs.edit().putLong("affiliationsTime", System.currentTimeMillis()).apply();
                return;
            }
            return;
        }
        this.affiliations = null;
    }

    public String getTimeStamp() {
        return this.timeStamp;
    }
}
