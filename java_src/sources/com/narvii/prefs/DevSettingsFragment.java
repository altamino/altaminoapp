package com.narvii.prefs;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
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
import com.narvii.util.debug.ToggleOptionsFragment;
import com.narvii.util.diagnosis.DiagnosisFragment;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVListView;
import com.safedk.android.utils.Logger;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class DevSettingsFragment extends NVListFragment {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int REQ_DEV_SELECTION = 64817;

    @NotNull
    private static final String TYPE_MULTIPLE_SELECTION = "multiple-selection";

    @NotNull
    private static final String TYPE_SINGLE_SELECTION = "single-selection";

    @NotNull
    private static final String TYPE_TOGGLE = "toggle";
    private AccountService account;
    private ApiService api;

    @Nullable
    private Adapter optionAdapter;
    private ProgressDialog progressDialog;
    private SharedPreferences sharedPreferences;

    /* JADX INFO: Access modifiers changed from: private */
    final class Adapter extends PrefsAdapter {

        @NotNull
        private final NVContext ctx;
        final /* synthetic */ DevSettingsFragment this$0;

        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        @NotNull
        public final NVContext getCtx() {
            return this.ctx;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(@NotNull DevSettingsFragment devSettingsFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = devSettingsFragment;
            this.ctx = ctx;
        }

        private final void addPrefsToList(final String str, final DevOption devOption, List<Object> list) {
            String str2 = devOption.type;
            if (str2 != null) {
                int iHashCode = str2.hashCode();
                if (iHashCode != -1151918521) {
                    if (iHashCode == -868304044) {
                        if (str2.equals(DevSettingsFragment.TYPE_TOGGLE)) {
                            PrefsToggle prefsToggle = new PrefsToggle(devOption.title);
                            final DevSettingsFragment devSettingsFragment = this.this$0;
                            prefsToggle.callback = new Callback() { // from class: com.narvii.prefs.i
                                @Override // com.narvii.util.Callback
                                public final void call(Object obj) {
                                    DevSettingsFragment.Adapter.addPrefsToList$lambda$7(devSettingsFragment, str, devOption, this, (PrefsToggle) obj);
                                }
                            };
                            prefsToggle.on = t.e("true", devOption.value);
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
                final DevSettingsFragment devSettingsFragment2 = this.this$0;
                prefsEntry.callback = new Callback() { // from class: com.narvii.prefs.j
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        DevSettingsFragment.Adapter.addPrefsToList$lambda$8(devSettingsFragment2, str, devOption, (PrefsEntry) obj);
                    }
                };
                list.add(prefsEntry);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void addPrefsToList$lambda$7(final DevSettingsFragment this$0, String group, DevOption option, final Adapter this$1, PrefsToggle prefsToggle) {
            t.j(this$0, "this$0");
            t.j(group, "$group");
            t.j(option, "$option");
            t.j(this$1, "this$1");
            ProgressDialog progressDialog = this$0.progressDialog;
            ApiService apiService = null;
            if (progressDialog == null) {
                t.B("progressDialog");
                progressDialog = null;
            }
            if (progressDialog.isShowing()) {
                return;
            }
            ProgressDialog progressDialog2 = this$0.progressDialog;
            if (progressDialog2 == null) {
                t.B("progressDialog");
                progressDialog2 = null;
            }
            progressDialog2.show();
            ApiRequest apiRequestBuild = ApiRequest.builder().post().path("/device/dev-options").param("group", group).param("name", option.name).param("value", prefsToggle.on ? "true" : "false").build();
            ApiService apiService2 = this$0.api;
            if (apiService2 == null) {
                t.B("api");
            } else {
                apiService = apiService2;
            }
            final Class<DeviceResponse> cls = DeviceResponse.class;
            apiService.exec(apiRequestBuild, new ApiResponseListener<DeviceResponse>(cls) { // from class: com.narvii.prefs.DevSettingsFragment$Adapter$addPrefsToList$1$1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    this$1.finishUpdateOption();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@Nullable ApiRequest apiRequest, @Nullable DeviceResponse deviceResponse) {
                    ObjectNode objectNode;
                    AccountService accountService = this$0.account;
                    String string = null;
                    if (accountService == null) {
                        t.B("account");
                        accountService = null;
                    }
                    if (deviceResponse != null && (objectNode = deviceResponse.devOptions) != null) {
                        string = objectNode.toString();
                    }
                    accountService.saveDevOptions(string);
                    this$1.finishUpdateOption();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void addPrefsToList$lambda$8(DevSettingsFragment this$0, String group, DevOption option, PrefsEntry prefsEntry) {
            t.j(this$0, "this$0");
            t.j(group, "$group");
            t.j(option, "$option");
            ProgressDialog progressDialog = this$0.progressDialog;
            if (progressDialog == null) {
                t.B("progressDialog");
                progressDialog = null;
            }
            if (progressDialog.isShowing()) {
                return;
            }
            Intent intent = FragmentWrapperActivity.intent(DevSelectionFragment.class);
            intent.putExtra("group", group);
            intent.putExtra("option", JacksonUtils.writeAsString(option));
            intent.putExtra("singleSelection", t.e(option.type, DevSettingsFragment.TYPE_SINGLE_SELECTION));
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this$0, intent, DevSettingsFragment.REQ_DEV_SELECTION);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void buildCells$lambda$1(DevSettingsFragment this$0, PrefsToggle prefsToggle) {
            t.j(this$0, "this$0");
            SharedPreferences sharedPreferences = this$0.sharedPreferences;
            if (sharedPreferences == null) {
                t.B("sharedPreferences");
                sharedPreferences = null;
            }
            sharedPreferences.edit().putBoolean(NVVideoDebugView.VIDEO_DEBUG_PREFS, prefsToggle.on).apply();
            NVVideoView.videoDebugEnable = prefsToggle.on;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void buildCells$lambda$2(DevSettingsFragment this$0, PrefsToggle prefsToggle) {
            t.j(this$0, "this$0");
            SharedPreferences sharedPreferences = this$0.sharedPreferences;
            if (sharedPreferences == null) {
                t.B("sharedPreferences");
                sharedPreferences = null;
            }
            sharedPreferences.edit().putBoolean(NVVideoDebugView.VIDEO_STRATEGY_INFO, prefsToggle.on).apply();
            NVVideoDebugView.showStrategyInfo = prefsToggle.on;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void finishUpdateOption() {
            ProgressDialog progressDialog = this.this$0.progressDialog;
            if (progressDialog == null) {
                t.B("progressDialog");
                progressDialog = null;
            }
            progressDialog.dismiss();
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(@NotNull List<Object> list) {
            List<DevOption> list2;
            List<DevOption> list3;
            t.j(list, "list");
            AccountService accountService = this.this$0.account;
            SharedPreferences sharedPreferences = null;
            if (accountService == null) {
                t.B("account");
                accountService = null;
            }
            DevOptions devOptions = (DevOptions) JacksonUtils.readAs(accountService.getDevOptions(), DevOptions.class);
            PrefsSection prefsSection = new PrefsSection(R.string.client_configurations);
            prefsSection.isAllCaps = false;
            list.add(prefsSection);
            PrefsEntry prefsEntry = new PrefsEntry("Diagnosis");
            prefsEntry.callbackIntent = FragmentWrapperActivity.intent(DiagnosisFragment.class);
            list.add(prefsEntry);
            PrefsEntry prefsEntry2 = new PrefsEntry("Toggle Options");
            prefsEntry2.callbackIntent = FragmentWrapperActivity.intent(ToggleOptionsFragment.class);
            list.add(prefsEntry2);
            PrefsToggle prefsToggle = new PrefsToggle("Video Debug");
            SharedPreferences sharedPreferences2 = this.this$0.sharedPreferences;
            if (sharedPreferences2 == null) {
                t.B("sharedPreferences");
                sharedPreferences2 = null;
            }
            prefsToggle.on = sharedPreferences2.getBoolean(NVVideoDebugView.VIDEO_DEBUG_PREFS, false);
            final DevSettingsFragment devSettingsFragment = this.this$0;
            prefsToggle.callback = new Callback() { // from class: com.narvii.prefs.g
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    DevSettingsFragment.Adapter.buildCells$lambda$1(devSettingsFragment, (PrefsToggle) obj);
                }
            };
            list.add(prefsToggle);
            PrefsEntry prefsEntry3 = new PrefsEntry("Video Resolution");
            prefsEntry3.callbackIntent = FragmentWrapperActivity.intent(VideoResolutionFragment.class);
            list.add(prefsEntry3);
            PrefsToggle prefsToggle2 = new PrefsToggle("Strategy Debug Info");
            SharedPreferences sharedPreferences3 = this.this$0.sharedPreferences;
            if (sharedPreferences3 == null) {
                t.B("sharedPreferences");
            } else {
                sharedPreferences = sharedPreferences3;
            }
            prefsToggle2.on = sharedPreferences.getBoolean(NVVideoDebugView.VIDEO_STRATEGY_INFO, false);
            final DevSettingsFragment devSettingsFragment2 = this.this$0;
            prefsToggle2.callback = new Callback() { // from class: com.narvii.prefs.h
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    DevSettingsFragment.Adapter.buildCells$lambda$2(devSettingsFragment2, (PrefsToggle) obj);
                }
            };
            list.add(prefsToggle2);
            if (devOptions != null && (list3 = devOptions.client) != null) {
                for (DevOption devOption : list3) {
                    t.g(devOption);
                    addPrefsToList("client", devOption, list);
                }
            }
            if (devOptions == null || (list2 = devOptions.server) == null) {
                return;
            }
            PrefsSection prefsSection2 = new PrefsSection(R.string.server_configurations);
            prefsSection2.isAllCaps = false;
            list.add(prefsSection2);
            for (DevOption devOption2 : list2) {
                t.g(devOption2);
                addPrefsToList("server", devOption2, list);
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createAdapter$lambda$0(Adapter adapter, DialogInterface dialogInterface) {
        t.j(adapter, "$adapter");
        adapter.notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        final Adapter adapter = new Adapter(this, this);
        this.optionAdapter = adapter;
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog == null) {
            t.B("progressDialog");
            progressDialog = null;
        }
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.prefs.f
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                DevSettingsFragment.createAdapter$lambda$0(adapter, dialogInterface);
            }
        });
        return adapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@NotNull ListView list, @Nullable Bundle bundle) {
        t.j(list, "list");
        super.onListViewCreated(list, bundle);
        list.setDivider(null);
        list.setDividerHeight(0);
        int color = getResources().getColor(R.color.prefs_background);
        NVListView nVListView = (NVListView) list;
        nVListView.setOverscrollStretchHeader(color);
        nVListView.setOverscrollStretchFooter(color);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        Adapter adapter;
        super.onActivityResult(i10, i11, intent);
        if (i10 == REQ_DEV_SELECTION && (adapter = this.optionAdapter) != null) {
            adapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.developer_options);
        Object service = getService("api");
        t.i(service, "getService(...)");
        this.api = (ApiService) service;
        Object service2 = getService("account");
        t.i(service2, "getService(...)");
        this.account = (AccountService) service2;
        this.progressDialog = new ProgressDialog(getContext());
        Object service3 = getService(IncubatorApplication.PREFS_SERVICE_KEY);
        t.i(service3, "getService(...)");
        this.sharedPreferences = (SharedPreferences) service3;
    }
}
