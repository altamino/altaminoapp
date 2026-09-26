package com.narvii.chat.setting;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatMemberPickerFragment;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class SelectCoHostFragment extends ChatMemberPickerFragment {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int MAX_CO_HOST_SIZE = 10;
    private ApiService apiService;

    @Nullable
    private List<? extends User> initialUsers;
    private ProgressDialog loadingDialog;

    public final class Adapter extends ChatMemberPickerFragment.Adapter {
        public Adapter() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void pickerUser$lambda$3$lambda$2(ACMAlertDialog dialog, View view) {
            t.j(dialog, "$dialog");
            dialog.dismiss();
        }

        @Override // com.narvii.chat.ChatMemberPickerFragment.Adapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (SelectCoHostFragment.this.initialUsers != null) {
                SelectCoHostFragment selectCoHostFragment = SelectCoHostFragment.this;
                if ((obj instanceof User) && Utils.containsId(selectCoHostFragment.initialUsers, ((User) obj).uid)) {
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.chat.ChatMemberPickerFragment.Adapter
        public void pickerUser(@Nullable User user) {
            ArrayList<User> arrayList = this.users;
            if (arrayList == null || arrayList.size() < 10 || this.users.contains(user)) {
                super.pickerUser(user);
                return;
            }
            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.add_co_host_settings_description);
            aCMAlertDialog.addButton(R.string.got_it, new View.OnClickListener() { // from class: com.narvii.chat.setting.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelectCoHostFragment.Adapter.pickerUser$lambda$3$lambda$2(aCMAlertDialog, view);
                }
            });
            aCMAlertDialog.show();
        }

        @Override // com.narvii.chat.ChatMemberPickerFragment.Adapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        @NotNull
        protected View getItemView(@Nullable Object obj, @Nullable View view, @Nullable ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            List list = SelectCoHostFragment.this.initialUsers;
            if (list != null) {
                if ((obj instanceof User) && Utils.containsId(list, ((User) obj).uid)) {
                    itemView.findViewById(R.id.user_picker_exist_check).setVisibility(0);
                    itemView.findViewById(R.id.user_picker_check).setVisibility(8);
                    itemView.findViewById(R.id.user_picker_uncheck).setVisibility(8);
                } else {
                    itemView.findViewById(R.id.user_picker_exist_check).setVisibility(8);
                }
            }
            t.g(itemView);
            return itemView;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment
    @NotNull
    protected String getMemberType() {
        return "co-host";
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment
    protected boolean showSearchBar() {
        return true;
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment
    @NotNull
    protected ChatMemberPickerFragment.Adapter createMainAdapter() {
        return new Adapter();
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment
    protected boolean isUserEnableInSearchBar(@NotNull User user) {
        t.j(user, "user");
        List<? extends User> list = this.initialUsers;
        if (list != null) {
            return !Utils.containsId(list, user.id());
        }
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        t.j(context, "context");
        super.onAttach(context);
        this.initialUsers = JacksonUtils.readListAs(getStringParam("users"), User.class);
        this.loadingDialog = new ProgressDialog(context);
        Object service = getService("api");
        t.i(service, "getService(...)");
        this.apiService = (ApiService) service;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.chat.ChatMemberPickerFragment
    public void onConfirmPick(@Nullable final List<User> list) {
        if (Utils.isListEquals(list, this.initialUsers)) {
            finish();
            return;
        }
        ProgressDialog progressDialog = this.loadingDialog;
        ApiService apiService = null;
        if (progressDialog == null) {
            t.B("loadingDialog");
            progressDialog = null;
        }
        progressDialog.show();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayNodeCreateArrayNode.add(((User) it.next()).uid);
            }
        }
        ApiRequest.Builder builderPost = new ApiRequest.Builder().post();
        ChatThread chatThread = this.thread;
        ApiRequest.Builder builderParam = builderPost.path("/chat/thread/" + (chatThread != null ? chatThread.threadId : null) + "/co-host").param("uidList", arrayNodeCreateArrayNode);
        ApiService apiService2 = this.apiService;
        if (apiService2 == null) {
            t.B("apiService");
        } else {
            apiService = apiService2;
        }
        apiService.exec(builderParam.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.setting.SelectCoHostFragment.onConfirmPick.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list2, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list2, str, apiResponse, th);
                NVToast.makeText(SelectCoHostFragment.this.getContext(), str, 0).show();
                ProgressDialog progressDialog2 = SelectCoHostFragment.this.loadingDialog;
                if (progressDialog2 == null) {
                    t.B("loadingDialog");
                    progressDialog2 = null;
                }
                progressDialog2.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                ProgressDialog progressDialog2 = SelectCoHostFragment.this.loadingDialog;
                if (progressDialog2 == null) {
                    t.B("loadingDialog");
                    progressDialog2 = null;
                }
                progressDialog2.dismiss();
                SelectCoHostFragment.super.onConfirmPick(list);
            }
        });
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.add_co_host);
    }
}
