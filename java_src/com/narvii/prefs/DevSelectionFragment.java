package com.narvii.prefs;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.api.ApiResponse;
import com.narvii.prefs.model.DevOption;
import com.narvii.pushservice.DeviceResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NVListView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: DevSelectionFragment.kt */
/* loaded from: classes3.dex */
public final class DevSelectionFragment extends NVListFragment {
    private HashMap _$_findViewCache;
    private AccountService account;
    private ApiService api;
    private boolean isSingleSelection;
    private DevOption option;
    private ProgressDialog progressDialog;
    private String group = "";
    private List<String> selectedItems = new ArrayList();

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

    public static final /* synthetic */ AccountService access$getAccount$p(DevSelectionFragment devSelectionFragment) {
        AccountService accountService = devSelectionFragment.account;
        if (accountService != null) {
            return accountService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("account");
        throw null;
    }

    public static final /* synthetic */ DevOption access$getOption$p(DevSelectionFragment devSelectionFragment) {
        DevOption devOption = devSelectionFragment.option;
        if (devOption != null) {
            return devOption;
        }
        Intrinsics.throwUninitializedPropertyAccessException("option");
        throw null;
    }

    public static final /* synthetic */ ProgressDialog access$getProgressDialog$p(DevSelectionFragment devSelectionFragment) {
        ProgressDialog progressDialog = devSelectionFragment.progressDialog;
        if (progressDialog != null) {
            return progressDialog;
        }
        Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
        throw null;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringParam = getStringParam("group");
        Intrinsics.checkExpressionValueIsNotNull(stringParam, "getStringParam(\"group\")");
        this.group = stringParam;
        this.isSingleSelection = getBooleanParam("singleSelection");
        Object as = JacksonUtils.readAs(getStringParam("option"), DevOption.class);
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…), DevOption::class.java)");
        this.option = (DevOption) as;
        DevOption devOption = this.option;
        if (devOption == null) {
            Intrinsics.throwUninitializedPropertyAccessException("option");
            throw null;
        }
        String str = devOption.value;
        if (str != null) {
            this.selectedItems = CollectionsKt___CollectionsKt.toMutableList((Collection) StringsKt__StringsKt.split$default(str, new String[]{","}, false, 0, 6, null));
        }
        DevOption devOption2 = this.option;
        if (devOption2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("option");
            throw null;
        }
        setTitle(devOption2.title);
        Object service = getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"api\")");
        this.api = (ApiService) service;
        Object service2 = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"account\")");
        this.account = (AccountService) service2;
        this.progressDialog = new ProgressDialog(getContext());
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        FragmentWrapperActivity fragmentWrapperActivity = (FragmentWrapperActivity) getActivity();
        if (fragmentWrapperActivity != null) {
            fragmentWrapperActivity.setActionBarRightView(R.string.done, new View.OnClickListener() { // from class: com.narvii.prefs.DevSelectionFragment.onActivityCreated.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DevSelectionFragment.this.requestDevOptionUpdate();
                }
            });
        }
        if (fragmentWrapperActivity != null) {
            fragmentWrapperActivity.setRightViewVisible(true);
        }
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
        return new Adapter(this, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestDevOptionUpdate() {
        String strSubstring;
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
            throw null;
        }
        if (progressDialog.isShowing()) {
            return;
        }
        AccountService accountService = this.account;
        if (accountService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        if (accountService.hasAccount()) {
            ProgressDialog progressDialog2 = this.progressDialog;
            if (progressDialog2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
                throw null;
            }
            progressDialog2.show();
            if (this.selectedItems.isEmpty()) {
                strSubstring = "";
            } else {
                StringBuilder sb = new StringBuilder();
                Iterator<T> it = this.selectedItems.iterator();
                while (it.hasNext()) {
                    sb.append((String) it.next());
                    sb.append(",");
                }
                strSubstring = sb.substring(0, sb.length() - 1);
            }
            ApiRequest.Builder builderParam = ApiRequest.builder().post().path("/device/dev-options").param("group", this.group);
            DevOption devOption = this.option;
            if (devOption == null) {
                Intrinsics.throwUninitializedPropertyAccessException("option");
                throw null;
            }
            ApiRequest apiRequestBuild = builderParam.param(AppMeasurementSdk.ConditionalUserProperty.NAME, devOption.name).param("value", strSubstring).build();
            ApiService apiService = this.api;
            if (apiService != null) {
                apiService.exec(apiRequestBuild, new ApiResponseListener<DeviceResponse>(DeviceResponse.class) { // from class: com.narvii.prefs.DevSelectionFragment.requestDevOptionUpdate.1
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, DeviceResponse deviceResponse) {
                        JsonNode jsonNode;
                        DevSelectionFragment.access$getAccount$p(DevSelectionFragment.this).saveDevOptions((deviceResponse == null || (jsonNode = deviceResponse.devOptions) == null) ? null : jsonNode.toString());
                        DevSelectionFragment.access$getProgressDialog$p(DevSelectionFragment.this).dismiss();
                        DevSelectionFragment.this.finish();
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        DevSelectionFragment.access$getProgressDialog$p(DevSelectionFragment.this).dismiss();
                    }
                });
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("api");
                throw null;
            }
        }
    }

    /* compiled from: DevSelectionFragment.kt */
    private final class Adapter extends NVAdapter {
        final /* synthetic */ DevSelectionFragment this$0;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(DevSelectionFragment devSelectionFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = devSelectionFragment;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.settings_dev_selection_item, viewGroup, view);
            if (viewCreateView == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.FrameLayout");
            }
            FrameLayout frameLayout = (FrameLayout) viewCreateView;
            TextView tv2 = (TextView) frameLayout.findViewById(R.id.text);
            FontAwesomeView check = (FontAwesomeView) frameLayout.findViewById(R.id.check);
            final String item = getItem(i);
            Intrinsics.checkExpressionValueIsNotNull(tv2, "tv");
            tv2.setText(item);
            Intrinsics.checkExpressionValueIsNotNull(check, "check");
            check.setVisibility(this.this$0.selectedItems.contains(item) ? 0 : 4);
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.prefs.DevSelectionFragment$Adapter$getView$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    if (this.this$0.this$0.isSingleSelection) {
                        if (!this.this$0.this$0.selectedItems.contains(item)) {
                            this.this$0.this$0.selectedItems.clear();
                            this.this$0.this$0.selectedItems.add(item);
                            this.this$0.notifyDataSetChanged();
                            return;
                        }
                        DevSelectionFragment.access$getProgressDialog$p(this.this$0.this$0).dismiss();
                        return;
                    }
                    if (this.this$0.this$0.selectedItems.contains(item)) {
                        this.this$0.this$0.selectedItems.remove(item);
                        this.this$0.notifyDataSetChanged();
                    } else {
                        this.this$0.this$0.selectedItems.add(item);
                        this.this$0.notifyDataSetChanged();
                    }
                }
            });
            return frameLayout;
        }

        @Override // android.widget.Adapter
        public String getItem(int i) {
            String str;
            List<String> list = DevSelectionFragment.access$getOption$p(this.this$0).options;
            return (list == null || (str = list.get(i)) == null) ? "" : str;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = DevSelectionFragment.access$getOption$p(this.this$0).options;
            if (list != null) {
                return list.size();
            }
            return 0;
        }
    }
}
