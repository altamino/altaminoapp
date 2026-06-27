package com.narvii.chat.setting;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SelectCoHostFragment.kt */
/* loaded from: classes2.dex */
public final class SelectCoHostFragment extends ChatMemberPickerFragment {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_CO_HOST_SIZE = 10;
    private HashMap _$_findViewCache;
    private ApiService apiService;
    private List<? extends User> initialUsers;
    private ProgressDialog loadingDialog;

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

    @Override // com.narvii.chat.ChatMemberPickerFragment
    protected String getMemberType() {
        return "co-host";
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment
    protected boolean showSearchBar() {
        return true;
    }

    public static final /* synthetic */ ProgressDialog access$getLoadingDialog$p(SelectCoHostFragment selectCoHostFragment) {
        ProgressDialog progressDialog = selectCoHostFragment.loadingDialog;
        if (progressDialog != null) {
            return progressDialog;
        }
        Intrinsics.throwUninitializedPropertyAccessException("loadingDialog");
        throw null;
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.add_co_host);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.initialUsers = JacksonUtils.readListAs(getStringParam("users"), User.class);
        this.loadingDialog = new ProgressDialog(context);
        Object service = getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"api\")");
        this.apiService = (ApiService) service;
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment
    protected ChatMemberPickerFragment.Adapter createMainAdapter() {
        return new Adapter();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.chat.ChatMemberPickerFragment
    public void onConfirmPick(final List<User> list) {
        if (Utils.isListEquals(list, this.initialUsers)) {
            finish();
            return;
        }
        ProgressDialog progressDialog = this.loadingDialog;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadingDialog");
            throw null;
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
        StringBuilder sb = new StringBuilder();
        sb.append("/chat/thread/");
        ChatThread chatThread = this.thread;
        sb.append(chatThread != null ? chatThread.threadId : null);
        sb.append("/co-host");
        ApiRequest.Builder builderParam = builderPost.path(sb.toString()).param("uidList", arrayNodeCreateArrayNode);
        ApiService apiService = this.apiService;
        if (apiService != null) {
            apiService.exec(builderParam.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.setting.SelectCoHostFragment.onConfirmPick.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                    SelectCoHostFragment.access$getLoadingDialog$p(SelectCoHostFragment.this).dismiss();
                    SelectCoHostFragment.super.onConfirmPick(list);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list2, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list2, str, apiResponse, th);
                    NVToast.makeText(SelectCoHostFragment.this.getContext(), str, 0).show();
                    SelectCoHostFragment.access$getLoadingDialog$p(SelectCoHostFragment.this).dismiss();
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("apiService");
            throw null;
        }
    }

    @Override // com.narvii.chat.ChatMemberPickerFragment
    protected boolean isUserEnableInSearchBar(User user) {
        Intrinsics.checkParameterIsNotNull(user, "user");
        if (this.initialUsers != null) {
            return !Utils.containsId(r0, user.id());
        }
        return true;
    }

    /* compiled from: SelectCoHostFragment.kt */
    public final class Adapter extends ChatMemberPickerFragment.Adapter {
        public Adapter() {
            super();
        }

        @Override // com.narvii.chat.ChatMemberPickerFragment.Adapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View view2 = super.getItemView(obj, view, viewGroup);
            List list = SelectCoHostFragment.this.initialUsers;
            if (list != null) {
                if ((obj instanceof User) && Utils.containsId(list, ((User) obj).uid)) {
                    View viewFindViewById = view2.findViewById(R.id.user_picker_exist_check);
                    Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById<View>(….user_picker_exist_check)");
                    viewFindViewById.setVisibility(0);
                    View viewFindViewById2 = view2.findViewById(R.id.user_picker_check);
                    Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "view.findViewById<View>(R.id.user_picker_check)");
                    viewFindViewById2.setVisibility(8);
                    View viewFindViewById3 = view2.findViewById(R.id.user_picker_uncheck);
                    Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "view.findViewById<View>(R.id.user_picker_uncheck)");
                    viewFindViewById3.setVisibility(8);
                } else {
                    View viewFindViewById4 = view2.findViewById(R.id.user_picker_exist_check);
                    Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "view.findViewById<View>(….user_picker_exist_check)");
                    viewFindViewById4.setVisibility(8);
                }
            }
            Intrinsics.checkExpressionValueIsNotNull(view2, "view");
            return view2;
        }

        @Override // com.narvii.chat.ChatMemberPickerFragment.Adapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (SelectCoHostFragment.this.initialUsers != null && (obj instanceof User) && Utils.containsId(SelectCoHostFragment.this.initialUsers, ((User) obj).uid)) {
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.chat.ChatMemberPickerFragment.Adapter
        public void pickerUser(User user) {
            ArrayList<User> arrayList = this.users;
            if (arrayList != null && arrayList.size() >= 10 && !this.users.contains(user)) {
                final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(R.string.add_co_host_settings_description);
                aCMAlertDialog.addButton(R.string.got_it, new View.OnClickListener() { // from class: com.narvii.chat.setting.SelectCoHostFragment$Adapter$pickerUser$1$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        aCMAlertDialog.dismiss();
                    }
                });
                aCMAlertDialog.show();
                return;
            }
            super.pickerUser(user);
        }
    }

    /* compiled from: SelectCoHostFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
