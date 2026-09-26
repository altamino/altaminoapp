package com.narvii.prefs;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class DevSelectionFragment extends NVListFragment {
    private AccountService account;
    private ApiService api;
    private boolean isSingleSelection;
    private DevOption option;
    private ProgressDialog progressDialog;

    @NotNull
    private String group = "";

    @NotNull
    private List<String> selectedItems = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    final class Adapter extends NVAdapter {
        final /* synthetic */ DevSelectionFragment this$0;

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(@NotNull DevSelectionFragment devSelectionFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = devSelectionFragment;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void getView$lambda$0(DevSelectionFragment this$0, String content, Adapter this$1, View view) {
            t.j(this$0, "this$0");
            t.j(content, "$content");
            t.j(this$1, "this$1");
            if (!this$0.isSingleSelection) {
                if (this$0.selectedItems.contains(content)) {
                    this$0.selectedItems.remove(content);
                    this$1.notifyDataSetChanged();
                    return;
                } else {
                    this$0.selectedItems.add(content);
                    this$1.notifyDataSetChanged();
                    return;
                }
            }
            if (!this$0.selectedItems.contains(content)) {
                this$0.selectedItems.clear();
                this$0.selectedItems.add(content);
                this$1.notifyDataSetChanged();
            } else {
                ProgressDialog progressDialog = this$0.progressDialog;
                if (progressDialog == null) {
                    t.B("progressDialog");
                    progressDialog = null;
                }
                progressDialog.dismiss();
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            DevOption devOption = this.this$0.option;
            if (devOption == null) {
                t.B("option");
                devOption = null;
            }
            List<String> list = devOption.options;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        @NotNull
        public String getItem(int i10) {
            DevOption devOption = this.this$0.option;
            if (devOption == null) {
                t.B("option");
                devOption = null;
            }
            List<String> list = devOption.options;
            String str = list != null ? list.get(i10) : null;
            return str == null ? "" : str;
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            int i11;
            View viewCreateView = createView(R.layout.settings_dev_selection_item, viewGroup, view);
            t.h(viewCreateView, "null cannot be cast to non-null type android.widget.FrameLayout");
            FrameLayout frameLayout = (FrameLayout) viewCreateView;
            TextView textView = (TextView) frameLayout.findViewById(R.id.text);
            FontAwesomeView fontAwesomeView = (FontAwesomeView) frameLayout.findViewById(R.id.check);
            final String item = getItem(i10);
            textView.setText(item);
            if (this.this$0.selectedItems.contains(item)) {
                i11 = 0;
            } else {
                i11 = 4;
            }
            fontAwesomeView.setVisibility(i11);
            final DevSelectionFragment devSelectionFragment = this.this$0;
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.prefs.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DevSelectionFragment.Adapter.getView$lambda$0(devSelectionFragment, item, this, view2);
                }
            });
            return frameLayout;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$1(DevSelectionFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.requestDevOptionUpdate();
    }

    private final void requestDevOptionUpdate() {
        String strSubstring;
        ProgressDialog progressDialog = this.progressDialog;
        ApiService apiService = null;
        if (progressDialog == null) {
            t.B("progressDialog");
            progressDialog = null;
        }
        if (progressDialog.isShowing()) {
            return;
        }
        AccountService accountService = this.account;
        if (accountService == null) {
            t.B("account");
            accountService = null;
        }
        if (accountService.hasAccount()) {
            ProgressDialog progressDialog2 = this.progressDialog;
            if (progressDialog2 == null) {
                t.B("progressDialog");
                progressDialog2 = null;
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
                t.B("option");
                devOption = null;
            }
            ApiRequest apiRequestBuild = builderParam.param("name", devOption.name).param("value", strSubstring).build();
            ApiService apiService2 = this.api;
            if (apiService2 == null) {
                t.B("api");
            } else {
                apiService = apiService2;
            }
            apiService.exec(apiRequestBuild, new ApiResponseListener<DeviceResponse>(DeviceResponse.class) { // from class: com.narvii.prefs.DevSelectionFragment.requestDevOptionUpdate.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    ProgressDialog progressDialog3 = DevSelectionFragment.this.progressDialog;
                    if (progressDialog3 == null) {
                        t.B("progressDialog");
                        progressDialog3 = null;
                    }
                    progressDialog3.dismiss();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@Nullable ApiRequest apiRequest, @Nullable DeviceResponse deviceResponse) {
                    ObjectNode objectNode;
                    AccountService accountService2 = DevSelectionFragment.this.account;
                    ProgressDialog progressDialog3 = null;
                    if (accountService2 == null) {
                        t.B("account");
                        accountService2 = null;
                    }
                    accountService2.saveDevOptions((deviceResponse == null || (objectNode = deviceResponse.devOptions) == null) ? null : objectNode.toString());
                    ProgressDialog progressDialog4 = DevSelectionFragment.this.progressDialog;
                    if (progressDialog4 == null) {
                        t.B("progressDialog");
                    } else {
                        progressDialog3 = progressDialog4;
                    }
                    progressDialog3.dismiss();
                    DevSelectionFragment.this.finish();
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        return new Adapter(this, this);
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
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        FragmentWrapperActivity fragmentWrapperActivity = (FragmentWrapperActivity) getActivity();
        if (fragmentWrapperActivity != null) {
            fragmentWrapperActivity.setActionBarRightView(R.string.done, new View.OnClickListener() { // from class: com.narvii.prefs.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DevSelectionFragment.onActivityCreated$lambda$1(this.f2621a, view);
                }
            });
        }
        if (fragmentWrapperActivity != null) {
            fragmentWrapperActivity.setRightViewVisible(true);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        String stringParam = getStringParam("group");
        t.i(stringParam, "getStringParam(...)");
        this.group = stringParam;
        this.isSingleSelection = getBooleanParam("singleSelection");
        Object as = JacksonUtils.readAs(getStringParam("option"), DevOption.class);
        t.i(as, "readAs(...)");
        DevOption devOption = (DevOption) as;
        this.option = devOption;
        DevOption devOption2 = null;
        if (devOption == null) {
            t.B("option");
            devOption = null;
        }
        String str = devOption.value;
        if (str != null) {
            this.selectedItems = d0.W0(u.C0(str, new String[]{","}, false, 0, 6, null));
        }
        DevOption devOption3 = this.option;
        if (devOption3 == null) {
            t.B("option");
        } else {
            devOption2 = devOption3;
        }
        setTitle(devOption2.title);
        Object service = getService("api");
        t.i(service, "getService(...)");
        this.api = (ApiService) service;
        Object service2 = getService("account");
        t.i(service2, "getService(...)");
        this.account = (AccountService) service2;
        this.progressDialog = new ProgressDialog(getContext());
    }
}
