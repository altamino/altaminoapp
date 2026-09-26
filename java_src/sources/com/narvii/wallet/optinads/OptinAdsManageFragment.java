package com.narvii.wallet.optinads;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.AccountResponse;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.statistics.FirebaseLogManager;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes11.dex */
public class OptinAdsManageFragment extends NVFragment {
    boolean checkUpdating;
    DecimalFormat dfmt = new DecimalFormat("0.00");
    OptinAdsResponse optinAdsResponse;
    View view;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1(View view) {
        optinAds(0, "EarnFreeCoinsToggle");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$4(View view) {
        optinAds(1, "Earn2XCoinsToggle");
    }

    private void optinAds(int i10) {
        optinAds(i10, null);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "manage_ads";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$2(CompoundButton compoundButton, boolean z6) {
        if (this.checkUpdating) {
            return;
        }
        if (z6) {
            LogEvent.clickBuilder(this, ActSemantic.turnOn).area("EarnFreeCoinsToggle").send();
            optinAds(2);
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.tryTurnOff).area("EarnFreeCoinsToggle").send();
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setMessage(R.string.stop_earning_coins_warning);
        alertDialog.addButton(R.string.nevermind, 0, new View.OnClickListener() { // from class: com.narvii.wallet.optinads.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f3039a.lambda$onViewCreated$0(view);
            }
        });
        alertDialog.addButton(R.string.yes, 8, new View.OnClickListener() { // from class: com.narvii.wallet.optinads.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f3040a.lambda$onViewCreated$1(view);
            }
        });
        alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$5(CompoundButton compoundButton, boolean z6) {
        if (this.checkUpdating) {
            return;
        }
        if (z6) {
            LogEvent.clickBuilder(this, ActSemantic.turnOn).area("Earn2XCoinsToggle").send();
            optinAds(2);
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.tryTurnOff).area("Earn2XCoinsToggle").send();
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setMessage(R.string.stop_earning_more_coins_warning);
        alertDialog.addButton(R.string.nevermind, 0, new View.OnClickListener() { // from class: com.narvii.wallet.optinads.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f3037a.lambda$onViewCreated$3(view);
            }
        });
        alertDialog.addButton(R.string.yes, 8, new View.OnClickListener() { // from class: com.narvii.wallet.optinads.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f3038a.lambda$onViewCreated$4(view);
            }
        });
        alertDialog.show();
    }

    private void optinAds(int i10, final String str) {
        OptinAdsUtil.optinAdsLevel(this, i10, "Wallet", new Callback() { // from class: com.narvii.wallet.optinads.c
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f3035a.lambda$optinAds$6(str, (AccountResponse) obj);
            }
        }, str);
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return getBooleanParam("darkTheme") ? 2 : 1;
    }

    void update() {
        if (this.view == null) {
            return;
        }
        this.checkUpdating = true;
        int iOptinAdsLevel = ((AccountService) getService("account")).optinAdsLevel();
        ((CheckBox) this.view.findViewById(R.id.optin_ads_switch)).setChecked(iOptinAdsLevel > 0);
        this.view.findViewById(R.id.earn_more_coins).setVisibility(iOptinAdsLevel == 0 ? 8 : 0);
        ((CheckBox) this.view.findViewById(R.id.earn_more_switch)).setChecked(iOptinAdsLevel == 2);
        this.checkUpdating = false;
        OptinAdsResponse optinAdsResponse = this.optinAdsResponse;
        if (optinAdsResponse == null) {
            ((TextView) this.view.findViewById(R.id.optin_ads_earn_week)).setText("");
            ((TextView) this.view.findViewById(R.id.optin_ads_earn_total)).setText("");
        } else {
            OptinAdsHistory optinAdsHistory = optinAdsResponse.coinsEarnedByAds;
            ((TextView) this.view.findViewById(R.id.optin_ads_earn_week)).setText(optinAdsHistory == null ? null : this.dfmt.format(optinAdsHistory.weekly));
            ((TextView) this.view.findViewById(R.id.optin_ads_earn_total)).setText(optinAdsHistory != null ? this.dfmt.format(optinAdsHistory.total) : null);
        }
        OptinAds.sendAdLevelUserProperty(this);
        showBottomAdsViewIfOptinAds();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        update();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$3(View view) {
        update();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$optinAds$6(String str, AccountResponse accountResponse) {
        FirebaseLogManager.logEvent(this, "ad toggle", FirebaseLogManager.createParams("value", OptinAds.getAdLevel(this)));
        if (accountResponse != null && str != null) {
            LogEvent.clickBuilder(this, ActSemantic.turnOff).area(str).send();
        }
        update();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        sendOptinAdsRequest();
        setTitle(R.string.ads_settings);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.wallet_optin_ads_manage, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.view = view;
        ((CheckBox) view.findViewById(R.id.optin_ads_switch)).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.wallet.optinads.a
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                this.f3033a.lambda$onViewCreated$2(compoundButton, z6);
            }
        });
        ((CheckBox) view.findViewById(R.id.earn_more_switch)).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.wallet.optinads.b
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                this.f3034a.lambda$onViewCreated$5(compoundButton, z6);
            }
        });
        update();
    }

    void sendOptinAdsRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("/wallet/setting/ads").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build(), new ApiResponseListener<OptinAdsResponse>(OptinAdsResponse.class) { // from class: com.narvii.wallet.optinads.OptinAdsManageFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, OptinAdsResponse optinAdsResponse) throws Exception {
                OptinAdsManageFragment optinAdsManageFragment = OptinAdsManageFragment.this;
                optinAdsManageFragment.optinAdsResponse = optinAdsResponse;
                optinAdsManageFragment.update();
            }
        });
    }
}
