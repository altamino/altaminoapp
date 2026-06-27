package com.narvii.prefs;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsEntry;
import com.narvii.list.prefs.PrefsSection;
import com.narvii.list.prefs.PrefsToggle;
import com.narvii.model.api.ApiResponse;
import com.narvii.nvplayer.debug.VideoResolutionFragment;
import com.narvii.nvplayerview.NVVideoDebugView;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.prefs.model.DevOption;
import com.narvii.prefs.model.DevOptions;
import com.narvii.pushservice.DeviceResponse;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.diagnosis.DiagnosisFragment;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVListView;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DevSettingsFragment.kt */
/* loaded from: classes3.dex */
public final class DevSettingsFragment extends NVListFragment {
    public static final Companion Companion = new Companion(null);
    private static final int REQ_DEV_SELECTION = 64817;
    private static final String TYPE_MULTIPLE_SELECTION = "multiple-selection";
    private static final String TYPE_SINGLE_SELECTION = "single-selection";
    private static final String TYPE_TOGGLE = "toggle";
    private HashMap _$_findViewCache;
    private AccountService account;
    private ApiService api;
    private Adapter optionAdapter;
    private ProgressDialog progressDialog;
    private SharedPreferences sharedPreferences;

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ AccountService access$getAccount$p(DevSettingsFragment devSettingsFragment) {
        AccountService accountService = devSettingsFragment.account;
        if (accountService != null) {
            return accountService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("account");
        throw null;
    }

    public static final /* synthetic */ ApiService access$getApi$p(DevSettingsFragment devSettingsFragment) {
        ApiService apiService = devSettingsFragment.api;
        if (apiService != null) {
            return apiService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("api");
        throw null;
    }

    public static final /* synthetic */ ProgressDialog access$getProgressDialog$p(DevSettingsFragment devSettingsFragment) {
        ProgressDialog progressDialog = devSettingsFragment.progressDialog;
        if (progressDialog != null) {
            return progressDialog;
        }
        Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
        throw null;
    }

    public static final /* synthetic */ SharedPreferences access$getSharedPreferences$p(DevSettingsFragment devSettingsFragment) {
        SharedPreferences sharedPreferences = devSettingsFragment.sharedPreferences;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
        throw null;
    }

    /* compiled from: DevSettingsFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.developer_options);
        Object service = getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"api\")");
        this.api = (ApiService) service;
        Object service2 = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"account\")");
        this.account = (AccountService) service2;
        this.progressDialog = new ProgressDialog(getContext());
        Object service3 = getService("prefs");
        Intrinsics.checkExpressionValueIsNotNull(service3, "getService<SharedPreferences>(\"prefs\")");
        this.sharedPreferences = (SharedPreferences) service3;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView list, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(list, "list");
        super.onListViewCreated(list, bundle);
        list.setDivider(null);
        list.setDividerHeight(0);
        int color = getResources().getColor(R.color.prefs_background);
        NVListView nVListView = (NVListView) list;
        nVListView.setOverscrollStretchHeader(color);
        nVListView.setOverscrollStretchFooter(color);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        final Adapter adapter = new Adapter(this, this);
        this.optionAdapter = adapter;
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.prefs.DevSettingsFragment.createAdapter.1
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    adapter.notifyDataSetChanged();
                }
            });
            return adapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
        throw null;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        Adapter adapter;
        super.onActivityResult(i, i2, intent);
        if (i != REQ_DEV_SELECTION || (adapter = this.optionAdapter) == null) {
            return;
        }
        adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DevSettingsFragment.kt */
    final class Adapter extends PrefsAdapter {
        private final NVContext ctx;
        final /* synthetic */ DevSettingsFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(DevSettingsFragment devSettingsFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = devSettingsFragment;
            this.ctx = ctx;
        }

        public final NVContext getCtx() {
            return this.ctx;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            List<DevOption> list2;
            List<DevOption> list3;
            Intrinsics.checkParameterIsNotNull(list, "list");
            DevOptions devOptions = (DevOptions) JacksonUtils.readAs(DevSettingsFragment.access$getAccount$p(this.this$0).getDevOptions(), DevOptions.class);
            PrefsSection prefsSection = new PrefsSection(R.string.client_configurations);
            prefsSection.isAllCaps = false;
            list.add(prefsSection);
            PrefsEntry prefsEntry = new PrefsEntry("Diagnosis");
            prefsEntry.callbackIntent = FragmentWrapperActivity.intent(DiagnosisFragment.class);
            list.add(prefsEntry);
            PrefsToggle prefsToggle = new PrefsToggle("Video Debug");
            prefsToggle.on = DevSettingsFragment.access$getSharedPreferences$p(this.this$0).getBoolean(NVVideoDebugView.VIDEO_DEBUG_PREFS, false);
            prefsToggle.callback = new Callback<PrefsToggle>() { // from class: com.narvii.prefs.DevSettingsFragment$Adapter$buildCells$2
                @Override // com.narvii.util.Callback
                public final void call(PrefsToggle prefsToggle2) {
                    DevSettingsFragment.access$getSharedPreferences$p(this.this$0.this$0).edit().putBoolean(NVVideoDebugView.VIDEO_DEBUG_PREFS, prefsToggle2.on).apply();
                    NVVideoView.videoDebugEnable = prefsToggle2.on;
                }
            };
            list.add(prefsToggle);
            PrefsEntry prefsEntry2 = new PrefsEntry("Video Resolution");
            prefsEntry2.callbackIntent = FragmentWrapperActivity.intent(VideoResolutionFragment.class);
            list.add(prefsEntry2);
            PrefsToggle prefsToggle2 = new PrefsToggle("Strategy Debug Info");
            prefsToggle2.on = DevSettingsFragment.access$getSharedPreferences$p(this.this$0).getBoolean(NVVideoDebugView.VIDEO_STRATEGY_INFO, false);
            prefsToggle2.callback = new Callback<PrefsToggle>() { // from class: com.narvii.prefs.DevSettingsFragment$Adapter$buildCells$3
                @Override // com.narvii.util.Callback
                public final void call(PrefsToggle prefsToggle3) {
                    DevSettingsFragment.access$getSharedPreferences$p(this.this$0.this$0).edit().putBoolean(NVVideoDebugView.VIDEO_STRATEGY_INFO, prefsToggle3.on).apply();
                    NVVideoDebugView.showStrategyInfo = prefsToggle3.on;
                }
            };
            list.add(prefsToggle2);
            if (devOptions != null && (list3 = devOptions.client) != null) {
                for (DevOption it : list3) {
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    addPrefsToList("client", it, list);
                }
            }
            if (devOptions == null || (list2 = devOptions.server) == null) {
                return;
            }
            PrefsSection prefsSection2 = new PrefsSection(R.string.server_configurations);
            prefsSection2.isAllCaps = false;
            list.add(prefsSection2);
            if (list2 != null) {
                for (DevOption it2 : list2) {
                    Intrinsics.checkExpressionValueIsNotNull(it2, "it");
                    addPrefsToList("server", it2, list);
                }
            }
        }

        private final void addPrefsToList(final String str, final DevOption devOption, List<Object> list) {
            String str2 = devOption.type;
            if (str2 == null) {
                return;
            }
            int iHashCode = str2.hashCode();
            if (iHashCode != -1151918521) {
                if (iHashCode == -868304044) {
                    if (str2.equals(DevSettingsFragment.TYPE_TOGGLE)) {
                        PrefsToggle prefsToggle = new PrefsToggle(devOption.title);
                        prefsToggle.callback = new Callback<PrefsToggle>() { // from class: com.narvii.prefs.DevSettingsFragment$Adapter$addPrefsToList$1
                            @Override // com.narvii.util.Callback
                            public final void call(PrefsToggle prefsToggle2) {
                                if (DevSettingsFragment.access$getProgressDialog$p(this.this$0.this$0).isShowing()) {
                                    return;
                                }
                                DevSettingsFragment.access$getProgressDialog$p(this.this$0.this$0).show();
                                DevSettingsFragment.access$getApi$p(this.this$0.this$0).exec(ApiRequest.builder().post().path("/device/dev-options").param("group", str).param(AppMeasurementSdk.ConditionalUserProperty.NAME, devOption.name).param("value", prefsToggle2.on ? "true" : "false").build(), new ApiResponseListener<DeviceResponse>(DeviceResponse.class) { // from class: com.narvii.prefs.DevSettingsFragment$Adapter$addPrefsToList$1.1
                                    @Override // com.narvii.util.http.ApiResponseListener
                                    public void onFinish(ApiRequest apiRequest, DeviceResponse deviceResponse) {
                                        JsonNode jsonNode;
                                        DevSettingsFragment.access$getAccount$p(DevSettingsFragment$Adapter$addPrefsToList$1.this.this$0.this$0).saveDevOptions((deviceResponse == null || (jsonNode = deviceResponse.devOptions) == null) ? null : jsonNode.toString());
                                        DevSettingsFragment$Adapter$addPrefsToList$1.this.this$0.finishUpdateOption();
                                    }

                                    @Override // com.narvii.util.http.ApiResponseListener
                                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list2, String str3, ApiResponse apiResponse, Throwable th) {
                                        DevSettingsFragment$Adapter$addPrefsToList$1.this.this$0.finishUpdateOption();
                                    }
                                });
                            }
                        };
                        prefsToggle.on = Intrinsics.areEqual("true", devOption.value);
                        list.add(prefsToggle);
                        return;
                    }
                    return;
                }
                if (iHashCode != -171071985 || !str2.equals(DevSettingsFragment.TYPE_MULTIPLE_SELECTION)) {
                    return;
                }
            } else if (!str2.equals(DevSettingsFragment.TYPE_SINGLE_SELECTION)) {
                return;
            }
            PrefsEntry prefsEntry = new PrefsEntry(devOption.title);
            prefsEntry.callback = new Callback<PrefsEntry>() { // from class: com.narvii.prefs.DevSettingsFragment$Adapter$addPrefsToList$2
                @Override // com.narvii.util.Callback
                public final void call(PrefsEntry prefsEntry2) {
                    if (DevSettingsFragment.access$getProgressDialog$p(this.this$0.this$0).isShowing()) {
                        return;
                    }
                    Intent intent = FragmentWrapperActivity.intent(DevSelectionFragment.class);
                    intent.putExtra("group", str);
                    intent.putExtra("option", JacksonUtils.writeAsString(devOption));
                    intent.putExtra("singleSelection", Intrinsics.areEqual(devOption.type, "single-selection"));
                    this.this$0.this$0.startActivityForResult(intent, 64817);
                }
            };
            list.add(prefsEntry);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void finishUpdateOption() {
            DevSettingsFragment.access$getProgressDialog$p(this.this$0).dismiss();
            notifyDataSetChanged();
        }
    }
}
