package com.narvii.chat.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.model.ChatCoHostNotificationWrapper;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.paging.storage.PageStorage;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AddCoHostFragment.kt */
/* loaded from: classes2.dex */
public final class AddCoHostFragment extends NVRecyclerViewFragment implements FragmentOnBackListener {
    private static final int ADD_CO_HOST_TYPE = 1;
    private static final int CHAT_MEMBER_LIST_REQUEST_CODE = 10001;
    private static final int CO_HOST_TYPE = 0;
    public static final Companion Companion = new Companion(null);
    private HashMap _$_findViewCache;
    private ApiService apiService;
    private CoHostAdapter.CoHostDataSource coHostDataSource;
    private List<? extends User> coHostList;
    private ProgressDialog loadingDialog;
    private RecyclerViewMergeAdapter mergeAdapter;
    private List<User> newCoHostList = new ArrayList();
    private ChatThread thread;

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

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ CoHostAdapter.CoHostDataSource access$getCoHostDataSource$p(AddCoHostFragment addCoHostFragment) {
        CoHostAdapter.CoHostDataSource coHostDataSource = addCoHostFragment.coHostDataSource;
        if (coHostDataSource != null) {
            return coHostDataSource;
        }
        Intrinsics.throwUninitializedPropertyAccessException("coHostDataSource");
        throw null;
    }

    public static final /* synthetic */ ProgressDialog access$getLoadingDialog$p(AddCoHostFragment addCoHostFragment) {
        ProgressDialog progressDialog = addCoHostFragment.loadingDialog;
        if (progressDialog != null) {
            return progressDialog;
        }
        Intrinsics.throwUninitializedPropertyAccessException("loadingDialog");
        throw null;
    }

    public static final /* synthetic */ RecyclerViewMergeAdapter access$getMergeAdapter$p(AddCoHostFragment addCoHostFragment) {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = addCoHostFragment.mergeAdapter;
        if (recyclerViewMergeAdapter != null) {
            return recyclerViewMergeAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mergeAdapter");
        throw null;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(R.string.co_hosts);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.thread = (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
        this.loadingDialog = new ProgressDialog(context);
        Object service = getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"api\")");
        this.apiService = (ApiService) service;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        this.mergeAdapter = new RecyclerViewMergeAdapter(this);
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = this.mergeAdapter;
        if (recyclerViewMergeAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mergeAdapter");
            throw null;
        }
        recyclerViewMergeAdapter.addAdapter(new TopAdapter(this, this));
        CoHostAdapter coHostAdapter = new CoHostAdapter(this, this);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 10.0f);
        RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(this, iDpToPxInt, iDpToPxInt);
        recyclerViewColumnAdapter.setAdapter(coHostAdapter, 5);
        RecyclerViewMergeAdapter recyclerViewMergeAdapter2 = this.mergeAdapter;
        if (recyclerViewMergeAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mergeAdapter");
            throw null;
        }
        recyclerViewMergeAdapter2.addAdapter(recyclerViewColumnAdapter);
        RecyclerViewMergeAdapter recyclerViewMergeAdapter3 = this.mergeAdapter;
        if (recyclerViewMergeAdapter3 != null) {
            return recyclerViewMergeAdapter3;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mergeAdapter");
        throw null;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        finish();
        return true;
    }

    /* compiled from: AddCoHostFragment.kt */
    public final class TopAdapter extends NVRecyclerViewBaseAdapter {
        final /* synthetic */ AddCoHostFragment this$0;

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopAdapter(AddCoHostFragment addCoHostFragment, NVContext context) {
            super(context);
            Intrinsics.checkParameterIsNotNull(context, "context");
            this.this$0 = addCoHostFragment;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            NVContext context = this.context;
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            View viewInflate = LayoutInflater.from(context.getContext()).inflate(R.layout.co_host_top_view, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(cont…_top_view, parent, false)");
            return new TopViewHolder(this, viewInflate);
        }

        /* compiled from: AddCoHostFragment.kt */
        public final class TopViewHolder extends BaseViewHolder {
            final /* synthetic */ TopAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TopViewHolder(TopAdapter topAdapter, View itemView) {
                super(itemView);
                Intrinsics.checkParameterIsNotNull(itemView, "itemView");
                this.this$0 = topAdapter;
            }
        }
    }

    /* compiled from: AddCoHostFragment.kt */
    public final class CoHostAdapter extends PagingRecyclerViewAdapter<User, UserListResponse> {
        final /* synthetic */ AddCoHostFragment this$0;

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected int getItemType(int i) {
            return i != 0 ? 0 : 1;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CoHostAdapter(AddCoHostFragment addCoHostFragment, NVContext context) {
            super(context);
            Intrinsics.checkParameterIsNotNull(context, "context");
            this.this$0 = addCoHostFragment;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            if (i == 0) {
                NVContext context = this.context;
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                View viewInflate = LayoutInflater.from(context.getContext()).inflate(R.layout.item_thread_member, parent, false);
                Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(cont…ad_member, parent, false)");
                return new CoHostViewHolder(this, viewInflate);
            }
            NVContext context2 = this.context;
            Intrinsics.checkExpressionValueIsNotNull(context2, "context");
            View viewInflate2 = LayoutInflater.from(context2.getContext()).inflate(R.layout.item_thread_member_invite, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate2, "LayoutInflater.from(cont…er_invite, parent, false)");
            return new AddCoHostViewHolder(this, viewInflate2);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
            TextView textView;
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            User item = getItem(i);
            if (holder instanceof CoHostViewHolder) {
                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) holder.itemView.findViewById(R.id.user_avatar_layout);
                if (userAvatarLayout != null) {
                    userAvatarLayout.setUser(item);
                }
                View view = holder.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
                ((NicknameView) view.findViewById(com.narvii.amino.R.id.nickname)).setUser(item);
                return;
            }
            if (!(holder instanceof AddCoHostViewHolder) || (textView = (TextView) holder.itemView.findViewById(R.id.text)) == null) {
                return;
            }
            textView.setText(this.this$0.getResources().getString(R.string.add));
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<User, UserListResponse> createPageDataSource(NVContext context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            this.this$0.coHostDataSource = new CoHostDataSource(this, context);
            return AddCoHostFragment.access$getCoHostDataSource$p(this.this$0);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public int getSize() {
            return super.getSize() + 1;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public User getItem(int i) {
            if (getItemType(i) != 1) {
                return (User) super.getItem(i - 1);
            }
            return null;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
            if (i != 0) {
                this.this$0.showActionSheet(getItem(i));
                return true;
            }
            if (this.this$0.coHostList != null) {
                this.this$0.openSelectPage();
                return true;
            }
            AddCoHostFragment.access$getLoadingDialog$p(this.this$0).show();
            return true;
        }

        /* compiled from: AddCoHostFragment.kt */
        public final class CoHostDataSource extends PageDataSource<User, UserListResponse> {
            final /* synthetic */ CoHostAdapter this$0;

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.narvii.paging.source.PageDataSource
            public List<User> filterResponseList(List<? extends User> list) {
                return list;
            }

            @Override // com.narvii.paging.source.PageDataSource, com.narvii.paging.source.ContinuousSource
            public boolean loadNextPage(PageRequestCallback pageRequestCallback) {
                return false;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CoHostDataSource(CoHostAdapter coHostAdapter, NVContext context) {
                super(context, null, new PagingConfiguration(0, 10));
                Intrinsics.checkParameterIsNotNull(context, "context");
                this.this$0 = coHostAdapter;
            }

            @Override // com.narvii.paging.source.PageDataSource
            protected ApiRequest createRequest() {
                ApiRequest.Builder builder = ApiRequest.builder();
                StringBuilder sb = new StringBuilder();
                sb.append("/chat/thread/");
                ChatThread chatThread = this.this$0.this$0.thread;
                sb.append(chatThread != null ? chatThread.threadId : null);
                sb.append("/co-host");
                return builder.path(sb.toString()).build();
            }

            @Override // com.narvii.paging.source.PageDataSource
            protected Class<UserListResponse> responseType() {
                return UserListResponse.class;
            }

            @Override // com.narvii.paging.source.PageDataSource
            public void onPageResponse(ApiRequest req, UserListResponse resp, int i) {
                Intrinsics.checkParameterIsNotNull(req, "req");
                Intrinsics.checkParameterIsNotNull(resp, "resp");
                super.onPageResponse(req, (ApiRequest) resp, i);
                this.this$0.this$0.coHostList = resp.userList;
                if (AddCoHostFragment.access$getLoadingDialog$p(this.this$0.this$0).isShowing()) {
                    AddCoHostFragment.access$getLoadingDialog$p(this.this$0.this$0).dismiss();
                    this.this$0.this$0.openSelectPage();
                }
            }

            @Override // com.narvii.paging.source.PageDataSource
            public void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
                super.onFailResponse(apiRequest, str, apiResponse, i);
                if (AddCoHostFragment.access$getLoadingDialog$p(this.this$0.this$0).isShowing()) {
                    AddCoHostFragment.access$getLoadingDialog$p(this.this$0.this$0).dismiss();
                }
            }
        }

        /* compiled from: AddCoHostFragment.kt */
        public final class CoHostViewHolder extends BaseViewHolder {
            final /* synthetic */ CoHostAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CoHostViewHolder(CoHostAdapter coHostAdapter, View itemView) {
                super(itemView);
                Intrinsics.checkParameterIsNotNull(itemView, "itemView");
                this.this$0 = coHostAdapter;
                TextView textView = (TextView) itemView.findViewById(com.narvii.amino.R.id.chat_member_invited);
                Intrinsics.checkExpressionValueIsNotNull(textView, "itemView.chat_member_invited");
                textView.setVisibility(8);
                itemView.setOnClickListener(coHostAdapter.subviewClickListener);
                itemView.setOnLongClickListener(coHostAdapter.subviewLongClickListener);
            }
        }

        /* compiled from: AddCoHostFragment.kt */
        public final class AddCoHostViewHolder extends BaseViewHolder {
            final /* synthetic */ CoHostAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AddCoHostViewHolder(CoHostAdapter coHostAdapter, View itemView) {
                super(itemView);
                Intrinsics.checkParameterIsNotNull(itemView, "itemView");
                this.this$0 = coHostAdapter;
                itemView.setOnClickListener(coHostAdapter.subviewClickListener);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == i && i2 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra("users");
            if (stringExtra == null || stringExtra.length() == 0) {
                return;
            }
            ArrayList list = JacksonUtils.readListAs(stringExtra, User.class);
            CoHostAdapter.CoHostDataSource coHostDataSource = this.coHostDataSource;
            if (coHostDataSource == null) {
                Intrinsics.throwUninitializedPropertyAccessException("coHostDataSource");
                throw null;
            }
            AbstractList pageStorage = coHostDataSource.getPageStorage();
            if (pageStorage != null) {
                pageStorage.clear();
            }
            CoHostAdapter.CoHostDataSource coHostDataSource2 = this.coHostDataSource;
            if (coHostDataSource2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("coHostDataSource");
                throw null;
            }
            Intrinsics.checkExpressionValueIsNotNull(list, "list");
            coHostDataSource2.appendData(list, null);
            RecyclerViewMergeAdapter recyclerViewMergeAdapter = this.mergeAdapter;
            if (recyclerViewMergeAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mergeAdapter");
                throw null;
            }
            recyclerViewMergeAdapter.notifyDataSetChanged();
            this.newCoHostList = list;
            sendCoHostNotification();
        }
        super.onActivityResult(i, i2, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showActionSheet(final User user) {
        if (user != null) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.setTitle(R.string.remove_this_co_host);
            actionSheetDialog.addItem(R.string.delete, 1);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.setting.AddCoHostFragment$showActionSheet$$inlined$let$lambda$1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.deleteCoHost(user);
                }
            });
            actionSheetDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openSelectPage() {
        if (this.coHostList != null) {
            Intent intent = FragmentWrapperActivity.intent(SelectCoHostFragment.class);
            intent.putExtra("thread", JacksonUtils.writeAsString(this.thread));
            CoHostAdapter.CoHostDataSource coHostDataSource = this.coHostDataSource;
            if (coHostDataSource == null) {
                Intrinsics.throwUninitializedPropertyAccessException("coHostDataSource");
                throw null;
            }
            PageStorage<T> pageStorage = coHostDataSource.getPageStorage();
            intent.putExtra("users", JacksonUtils.writeAsString(pageStorage != 0 ? pageStorage.getDataList() : null));
            startActivityForResult(intent, 10001);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteCoHost(final User user) {
        ProgressDialog progressDialog = this.loadingDialog;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadingDialog");
            throw null;
        }
        progressDialog.show();
        ApiRequest.Builder builderDelete = new ApiRequest.Builder().delete();
        StringBuilder sb = new StringBuilder();
        sb.append("/chat/thread/");
        ChatThread chatThread = this.thread;
        sb.append(chatThread != null ? chatThread.threadId : null);
        sb.append("/co-host/");
        sb.append(user.uid);
        ApiRequest.Builder builderPath = builderDelete.path(sb.toString());
        ApiService apiService = this.apiService;
        if (apiService != null) {
            apiService.exec(builderPath.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.setting.AddCoHostFragment.deleteCoHost.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                    AddCoHostFragment.access$getCoHostDataSource$p(AddCoHostFragment.this).removeData(user);
                    AddCoHostFragment.access$getMergeAdapter$p(AddCoHostFragment.this).notifyDataSetChanged();
                    AddCoHostFragment.this.sendCoHostNotification();
                    AddCoHostFragment.access$getLoadingDialog$p(AddCoHostFragment.this).dismiss();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    AddCoHostFragment.access$getLoadingDialog$p(AddCoHostFragment.this).dismiss();
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("apiService");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendCoHostNotification() {
        List dataList;
        ChatThread chatThread = this.thread;
        if (chatThread != null) {
            ArrayList arrayList = new ArrayList();
            CoHostAdapter.CoHostDataSource coHostDataSource = this.coHostDataSource;
            if (coHostDataSource == null) {
                Intrinsics.throwUninitializedPropertyAccessException("coHostDataSource");
                throw null;
            }
            PageStorage<T> pageStorage = coHostDataSource.getPageStorage();
            if (pageStorage != 0 && (dataList = pageStorage.getDataList()) != null) {
                Iterator it = dataList.iterator();
                while (it.hasNext()) {
                    arrayList.add(((User) it.next()).uid);
                }
            }
            NotificationCenter notificationCenter = (NotificationCenter) getService("notification");
            ChatCoHostNotificationWrapper chatCoHostNotificationWrapper = new ChatCoHostNotificationWrapper();
            chatCoHostNotificationWrapper.action = 0;
            chatThread.setCoHostUidList(arrayList);
            chatCoHostNotificationWrapper.chatThread = chatThread;
            notificationCenter.sendNotification(new Notification("update", chatCoHostNotificationWrapper));
        }
    }

    /* compiled from: AddCoHostFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
