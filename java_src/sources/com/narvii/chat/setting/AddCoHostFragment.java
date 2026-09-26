package com.narvii.chat.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.databinding.CoHostTopViewBinding;
import com.narvii.amino.databinding.ItemThreadMemberBinding;
import com.narvii.amino.databinding.ItemThreadMemberInviteBinding;
import com.narvii.amino.master.R;
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
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.safedk.android.utils.Logger;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class AddCoHostFragment extends NVRecyclerViewFragment implements FragmentOnBackListener {
    private static final int ADD_CO_HOST_TYPE = 1;
    private static final int CHAT_MEMBER_LIST_REQUEST_CODE = 10001;
    private static final int CO_HOST_TYPE = 0;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private ApiService apiService;
    private CoHostAdapter.CoHostDataSource coHostDataSource;

    @Nullable
    private List<? extends User> coHostList;
    private ProgressDialog loadingDialog;
    private RecyclerViewMergeAdapter mergeAdapter;

    @NotNull
    private List<User> newCoHostList = new ArrayList();

    @Nullable
    private ChatThread thread;

    public final class CoHostAdapter extends PagingRecyclerViewAdapter<User, UserListResponse> {
        final /* synthetic */ AddCoHostFragment this$0;

        public final class AddCoHostViewHolder extends BaseViewHolder {

            @NotNull
            private final ItemThreadMemberInviteBinding binding;
            final /* synthetic */ CoHostAdapter this$0;

            /* JADX WARN: Illegal instructions before constructor call */
            public AddCoHostViewHolder(@NotNull CoHostAdapter coHostAdapter, ItemThreadMemberInviteBinding binding) {
                t.j(binding, "binding");
                this.this$0 = coHostAdapter;
                FlexLayout root = binding.getRoot();
                t.i(root, "getRoot(...)");
                super(root);
                this.binding = binding;
                binding.getRoot().setOnClickListener(coHostAdapter.subviewClickListener);
            }

            public final void bind(@NotNull User user) {
                t.j(user, "user");
                this.binding.text.setText(this.this$0.this$0.getResources().getString(R.string.add));
            }
        }

        public final class CoHostDataSource extends PageDataSource<User, UserListResponse> {
            final /* synthetic */ CoHostAdapter this$0;

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.narvii.paging.source.PageDataSource
            @Nullable
            public List<User> filterResponseList(@Nullable List<? extends User> list) {
                return list;
            }

            @Override // com.narvii.paging.source.PageDataSource, com.narvii.paging.source.ContinuousSource
            public boolean loadNextPage(@Nullable PageRequestCallback pageRequestCallback) {
                return false;
            }

            @Override // com.narvii.paging.source.PageDataSource
            @NotNull
            protected Class<UserListResponse> responseType() {
                return UserListResponse.class;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CoHostDataSource(@NotNull CoHostAdapter coHostAdapter, NVContext context) {
                super(context, null, new PagingConfiguration(0, 10));
                t.j(context, "context");
                this.this$0 = coHostAdapter;
            }

            @Override // com.narvii.paging.source.PageDataSource
            public void onPageResponse(@NotNull ApiRequest req, @NotNull UserListResponse resp, int i10) {
                t.j(req, "req");
                t.j(resp, "resp");
                super.onPageResponse(req, resp, i10);
                this.this$0.this$0.coHostList = resp.userList;
                ProgressDialog progressDialog = this.this$0.this$0.loadingDialog;
                ProgressDialog progressDialog2 = null;
                if (progressDialog == null) {
                    t.B("loadingDialog");
                    progressDialog = null;
                }
                if (progressDialog.isShowing()) {
                    ProgressDialog progressDialog3 = this.this$0.this$0.loadingDialog;
                    if (progressDialog3 == null) {
                        t.B("loadingDialog");
                    } else {
                        progressDialog2 = progressDialog3;
                    }
                    progressDialog2.dismiss();
                    this.this$0.this$0.openSelectPage();
                }
            }

            @Override // com.narvii.paging.source.PageDataSource
            @Nullable
            protected ApiRequest createRequest() {
                String str;
                ApiRequest.Builder builder = ApiRequest.builder();
                ChatThread chatThread = this.this$0.this$0.thread;
                if (chatThread != null) {
                    str = chatThread.threadId;
                } else {
                    str = null;
                }
                return builder.path("/chat/thread/" + str + "/co-host").build();
            }

            @Override // com.narvii.paging.source.PageDataSource
            public void onFailResponse(@Nullable ApiRequest apiRequest, @Nullable String str, @Nullable ApiResponse apiResponse, int i10) {
                super.onFailResponse(apiRequest, str, apiResponse, i10);
                ProgressDialog progressDialog = this.this$0.this$0.loadingDialog;
                ProgressDialog progressDialog2 = null;
                if (progressDialog == null) {
                    t.B("loadingDialog");
                    progressDialog = null;
                }
                if (progressDialog.isShowing()) {
                    ProgressDialog progressDialog3 = this.this$0.this$0.loadingDialog;
                    if (progressDialog3 == null) {
                        t.B("loadingDialog");
                    } else {
                        progressDialog2 = progressDialog3;
                    }
                    progressDialog2.dismiss();
                }
            }
        }

        public final class CoHostViewHolder extends BaseViewHolder {

            @NotNull
            private final ItemThreadMemberBinding binding;
            final /* synthetic */ CoHostAdapter this$0;

            /* JADX WARN: Illegal instructions before constructor call */
            public CoHostViewHolder(@NotNull CoHostAdapter coHostAdapter, ItemThreadMemberBinding binding) {
                t.j(binding, "binding");
                this.this$0 = coHostAdapter;
                FlexLayout root = binding.getRoot();
                t.i(root, "getRoot(...)");
                super(root);
                this.binding = binding;
                binding.chatMemberInvited.setVisibility(8);
                binding.getRoot().setOnClickListener(coHostAdapter.subviewClickListener);
                binding.getRoot().setOnLongClickListener(coHostAdapter.subviewLongClickListener);
            }

            public final void bind(@NotNull User user) {
                t.j(user, "user");
                this.binding.userAvatarLayout.userAvatarLayout.setUser(user);
                this.binding.nickname.setUser(user);
            }
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected int getItemType(int i10) {
            return i10 == 0 ? 1 : 0;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CoHostAdapter(@NotNull AddCoHostFragment addCoHostFragment, NVContext context) {
            super(context);
            t.j(context, "context");
            this.this$0 = addCoHostFragment;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        public PageDataSource<User, UserListResponse> createPageDataSource(@NotNull NVContext context) {
            t.j(context, "context");
            this.this$0.coHostDataSource = new CoHostDataSource(this, context);
            CoHostDataSource coHostDataSource = this.this$0.coHostDataSource;
            if (coHostDataSource != null) {
                return coHostDataSource;
            }
            t.B("coHostDataSource");
            return null;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            t.j(holder, "holder");
            User item = getItem(i10);
            if (holder instanceof CoHostViewHolder) {
                if (item != null) {
                    ((CoHostViewHolder) holder).bind(item);
                }
            } else {
                if (!(holder instanceof AddCoHostViewHolder) || item == null) {
                    return;
                }
                ((AddCoHostViewHolder) holder).bind(item);
            }
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        protected RecyclerView.ViewHolder onCreateItemViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            t.i(CoHostTopViewBinding.inflate(LayoutInflater.from(this.context.getContext()), parent, false), "inflate(...)");
            if (i10 == 0) {
                ItemThreadMemberBinding itemThreadMemberBindingInflate = ItemThreadMemberBinding.inflate(LayoutInflater.from(this.context.getContext()), parent, false);
                t.i(itemThreadMemberBindingInflate, "inflate(...)");
                return new CoHostViewHolder(this, itemThreadMemberBindingInflate);
            }
            ItemThreadMemberInviteBinding itemThreadMemberInviteBindingInflate = ItemThreadMemberInviteBinding.inflate(LayoutInflater.from(this.context.getContext()), parent, false);
            t.i(itemThreadMemberInviteBindingInflate, "inflate(...)");
            return new AddCoHostViewHolder(this, itemThreadMemberInviteBindingInflate);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (i10 != 0) {
                this.this$0.showActionSheet(getItem(i10));
                return true;
            }
            if (this.this$0.coHostList != null) {
                this.this$0.openSelectPage();
                return true;
            }
            ProgressDialog progressDialog = this.this$0.loadingDialog;
            if (progressDialog == null) {
                t.B("loadingDialog");
                progressDialog = null;
            }
            progressDialog.show();
            return true;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        @Nullable
        public User getItem(int i10) {
            if (getItemType(i10) == 1) {
                return null;
            }
            return (User) super.getItem(i10 - 1);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public int getSize() {
            return super.getSize() + 1;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class TopAdapter extends NVRecyclerViewBaseAdapter {
        final /* synthetic */ AddCoHostFragment this$0;

        public final class TopViewHolder extends BaseViewHolder {
            final /* synthetic */ TopAdapter this$0;

            /* JADX WARN: Illegal instructions before constructor call */
            public TopViewHolder(@NotNull TopAdapter topAdapter, CoHostTopViewBinding itemBinding) {
                t.j(itemBinding, "itemBinding");
                this.this$0 = topAdapter;
                LinearLayout root = itemBinding.getRoot();
                t.i(root, "getRoot(...)");
                super(root);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            t.j(holder, "holder");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopAdapter(@NotNull AddCoHostFragment addCoHostFragment, NVContext context) {
            super(context);
            t.j(context, "context");
            this.this$0 = addCoHostFragment;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            CoHostTopViewBinding coHostTopViewBindingInflate = CoHostTopViewBinding.inflate(LayoutInflater.from(this.context.getContext()), parent, false);
            t.i(coHostTopViewBindingInflate, "inflate(...)");
            return new TopViewHolder(this, coHostTopViewBindingInflate);
        }
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        if (i11 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra("users");
            if (stringExtra == null || stringExtra.length() == 0) {
                return;
            }
            ArrayList listAs = JacksonUtils.readListAs(stringExtra, User.class);
            CoHostAdapter.CoHostDataSource coHostDataSource = this.coHostDataSource;
            RecyclerViewMergeAdapter recyclerViewMergeAdapter = null;
            if (coHostDataSource == null) {
                t.B("coHostDataSource");
                coHostDataSource = null;
            }
            AbstractCollection pageStorage = coHostDataSource.getPageStorage();
            if (pageStorage != null) {
                pageStorage.clear();
            }
            CoHostAdapter.CoHostDataSource coHostDataSource2 = this.coHostDataSource;
            if (coHostDataSource2 == null) {
                t.B("coHostDataSource");
                coHostDataSource2 = null;
            }
            t.g(listAs);
            coHostDataSource2.appendData(listAs, null);
            RecyclerViewMergeAdapter recyclerViewMergeAdapter2 = this.mergeAdapter;
            if (recyclerViewMergeAdapter2 == null) {
                t.B("mergeAdapter");
            } else {
                recyclerViewMergeAdapter = recyclerViewMergeAdapter2;
            }
            recyclerViewMergeAdapter.notifyDataSetChanged();
            this.newCoHostList = listAs;
            sendCoHostNotification();
        }
        super.onActivityResult(i10, i11, intent);
    }

    private final void deleteCoHost(final User user) {
        ProgressDialog progressDialog = this.loadingDialog;
        ApiService apiService = null;
        if (progressDialog == null) {
            t.B("loadingDialog");
            progressDialog = null;
        }
        progressDialog.show();
        ApiRequest.Builder builderDelete = new ApiRequest.Builder().delete();
        ChatThread chatThread = this.thread;
        String str = chatThread != null ? chatThread.threadId : null;
        ApiRequest.Builder builderPath = builderDelete.path("/chat/thread/" + str + "/co-host/" + user.uid);
        ApiService apiService2 = this.apiService;
        if (apiService2 == null) {
            t.B("apiService");
        } else {
            apiService = apiService2;
        }
        apiService.exec(builderPath.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.setting.AddCoHostFragment.deleteCoHost.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str2, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str2, apiResponse, th);
                ProgressDialog progressDialog2 = AddCoHostFragment.this.loadingDialog;
                if (progressDialog2 == null) {
                    t.B("loadingDialog");
                    progressDialog2 = null;
                }
                progressDialog2.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                CoHostAdapter.CoHostDataSource coHostDataSource = AddCoHostFragment.this.coHostDataSource;
                ProgressDialog progressDialog2 = null;
                if (coHostDataSource == null) {
                    t.B("coHostDataSource");
                    coHostDataSource = null;
                }
                coHostDataSource.removeData(user);
                RecyclerViewMergeAdapter recyclerViewMergeAdapter = AddCoHostFragment.this.mergeAdapter;
                if (recyclerViewMergeAdapter == null) {
                    t.B("mergeAdapter");
                    recyclerViewMergeAdapter = null;
                }
                recyclerViewMergeAdapter.notifyDataSetChanged();
                AddCoHostFragment.this.sendCoHostNotification();
                ProgressDialog progressDialog3 = AddCoHostFragment.this.loadingDialog;
                if (progressDialog3 == null) {
                    t.B("loadingDialog");
                } else {
                    progressDialog2 = progressDialog3;
                }
                progressDialog2.dismiss();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openSelectPage() {
        if (this.coHostList != null) {
            Intent intent = FragmentWrapperActivity.intent(SelectCoHostFragment.class);
            intent.putExtra("thread", JacksonUtils.writeAsString(this.thread));
            CoHostAdapter.CoHostDataSource coHostDataSource = this.coHostDataSource;
            if (coHostDataSource == null) {
                t.B("coHostDataSource");
                coHostDataSource = null;
            }
            PageStorage<T> pageStorage = coHostDataSource.getPageStorage();
            intent.putExtra("users", JacksonUtils.writeAsString(pageStorage != 0 ? pageStorage.getDataList() : null));
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 10001);
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
                t.B("coHostDataSource");
                coHostDataSource = null;
            }
            PageStorage<T> pageStorage = coHostDataSource.getPageStorage();
            if (pageStorage != 0 && (dataList = pageStorage.getDataList()) != null) {
                t.g(dataList);
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void showActionSheet(final User user) {
        if (user != null) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.setTitle(R.string.remove_this_co_host);
            actionSheetDialog.addItem(R.string.delete, 1);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.setting.a
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    AddCoHostFragment.showActionSheet$lambda$2$lambda$1(this.f2046a, user, dialogInterface, i10);
                }
            });
            actionSheetDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showActionSheet$lambda$2$lambda$1(AddCoHostFragment this$0, User it, DialogInterface dialogInterface, int i10) {
        t.j(this$0, "this$0");
        t.j(it, "$it");
        this$0.deleteCoHost(it);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this);
        this.mergeAdapter = recyclerViewMergeAdapter;
        recyclerViewMergeAdapter.addAdapter(new TopAdapter(this, this));
        CoHostAdapter coHostAdapter = new CoHostAdapter(this, this);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 10.0f);
        RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(this, iDpToPxInt, iDpToPxInt);
        recyclerViewColumnAdapter.setAdapter(coHostAdapter, 5);
        RecyclerViewMergeAdapter recyclerViewMergeAdapter2 = this.mergeAdapter;
        if (recyclerViewMergeAdapter2 == null) {
            t.B("mergeAdapter");
            recyclerViewMergeAdapter2 = null;
        }
        recyclerViewMergeAdapter2.addAdapter(recyclerViewColumnAdapter);
        RecyclerViewMergeAdapter recyclerViewMergeAdapter3 = this.mergeAdapter;
        if (recyclerViewMergeAdapter3 != null) {
            return recyclerViewMergeAdapter3;
        }
        t.B("mergeAdapter");
        return null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        t.j(context, "context");
        super.onAttach(context);
        this.thread = (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
        this.loadingDialog = new ProgressDialog(context);
        Object service = getService("api");
        t.i(service, "getService(...)");
        this.apiService = (ApiService) service;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        finish();
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(R.string.co_hosts);
    }
}
