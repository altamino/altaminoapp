package com.narvii.prefs;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.adapter.RadioGroupAdapter;
import com.narvii.adapter.RadioItem;
import com.narvii.amino.mastes.R;
import com.narvii.config.ConfigService;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsMargin;
import com.narvii.model.Blog;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.model.api.FeedResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVListView;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: PostCommentPrivilegeFragment.kt */
/* loaded from: classes3.dex */
public final class PostCommentPrivilegeFragment extends NVListFragment {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PostCommentPrivilegeFragment.class), "api", "getApi()Lcom/narvii/util/http/ApiService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PostCommentPrivilegeFragment.class), "config", "getConfig()Lcom/narvii/config/ConfigService;"))};
    private HashMap _$_findViewCache;
    private String blogId;
    private String error;
    private MergeAdapter mergeAdapter;
    private int privilege;
    private RadioGroupAdapter radioGroupAdapter;
    private boolean requestFinished;
    private final int PRIVILEGE_EVERYONE = 1;
    private final int PRIVILEGE_MY_FOLLOWING = 2;
    private final int PRIVILEGE_NONE = 3;
    private final Lazy api$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ApiService>() { // from class: com.narvii.prefs.PostCommentPrivilegeFragment$api$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ApiService invoke() {
            return (ApiService) this.this$0.getService("api");
        }
    });
    private final Lazy config$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ConfigService>() { // from class: com.narvii.prefs.PostCommentPrivilegeFragment$config$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ConfigService invoke() {
            return (ConfigService) this.this$0.getService("config");
        }
    });

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

    public final ApiService getApi() {
        Lazy lazy = this.api$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ApiService) lazy.getValue();
    }

    public final ConfigService getConfig() {
        Lazy lazy = this.config$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (ConfigService) lazy.getValue();
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final int getPRIVILEGE_EVERYONE() {
        return this.PRIVILEGE_EVERYONE;
    }

    public final int getPRIVILEGE_MY_FOLLOWING() {
        return this.PRIVILEGE_MY_FOLLOWING;
    }

    public final int getPRIVILEGE_NONE() {
        return this.PRIVILEGE_NONE;
    }

    public final RadioGroupAdapter getRadioGroupAdapter() {
        return this.radioGroupAdapter;
    }

    public final void setRadioGroupAdapter(RadioGroupAdapter radioGroupAdapter) {
        this.radioGroupAdapter = radioGroupAdapter;
    }

    public final MergeAdapter getMergeAdapter() {
        return this.mergeAdapter;
    }

    public final void setMergeAdapter(MergeAdapter mergeAdapter) {
        this.mergeAdapter = mergeAdapter;
    }

    public final void setPrivilege(int i) {
        this.privilege = i;
    }

    public final int getPrivilege() {
        int i = this.privilege;
        return i == 0 ? this.PRIVILEGE_EVERYONE : i;
    }

    public final String getBlogId() {
        return this.blogId;
    }

    public final void setBlogId(String str) {
        this.blogId = str;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.privilege = getIntParam("privilege");
        this.blogId = getStringParam("blogId");
        setTitle(R.string.allow_commenting_on_this_post);
        setNVThemeValue(getConfig().getCommunityId() == 0 ? 2 : 1);
        sendBlogRequest();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView != null) {
            listView.setDividerHeight(0);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.prefs.PostCommentPrivilegeFragment.createAdapter.1
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public String errorMessage() {
                return PostCommentPrivilegeFragment.this.error;
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                return PostCommentPrivilegeFragment.this.requestFinished && TextUtils.isEmpty(PostCommentPrivilegeFragment.this.error);
            }
        };
        PrefsAdapter prefsAdapter = new PrefsAdapter(this) { // from class: com.narvii.prefs.PostCommentPrivilegeFragment$createAdapter$marginAdapter$1
            @Override // com.narvii.list.prefs.PrefsAdapter
            protected void buildCells(List<Object> list) {
                if (list != null) {
                    list.add(new PrefsMargin(Utils.dpToPxInt(getContext(), 15.0f)));
                }
            }
        };
        DividerAdapter dividerAdapter = new DividerAdapter(this) { // from class: com.narvii.prefs.PostCommentPrivilegeFragment$createAdapter$dividerAdapter$1
            @Override // com.narvii.list.DividerAdapter
            protected int getDividerLayoutId() {
                return R.layout.prefs_divider;
            }
        };
        this.radioGroupAdapter = new RadioGroupAdapter(this) { // from class: com.narvii.prefs.PostCommentPrivilegeFragment.createAdapter.2
            @Override // com.narvii.adapter.RadioGroupAdapter
            protected void buildCells(List<RadioItem> list) {
                if (list != null) {
                    int privilege_everyone = PostCommentPrivilegeFragment.this.getPRIVILEGE_EVERYONE();
                    PostCommentPrivilegeFragment postCommentPrivilegeFragment = PostCommentPrivilegeFragment.this;
                    Context context = getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context, "getContext()");
                    list.add(new RadioItem(privilege_everyone, postCommentPrivilegeFragment.getPrivilegeText(context, PostCommentPrivilegeFragment.this.getPRIVILEGE_EVERYONE())));
                }
                if (list != null) {
                    int privilege_my_following = PostCommentPrivilegeFragment.this.getPRIVILEGE_MY_FOLLOWING();
                    PostCommentPrivilegeFragment postCommentPrivilegeFragment2 = PostCommentPrivilegeFragment.this;
                    Context context2 = getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context2, "getContext()");
                    list.add(new RadioItem(privilege_my_following, postCommentPrivilegeFragment2.getPrivilegeText(context2, PostCommentPrivilegeFragment.this.getPRIVILEGE_MY_FOLLOWING())));
                }
                if (list != null) {
                    int privilege_none = PostCommentPrivilegeFragment.this.getPRIVILEGE_NONE();
                    PostCommentPrivilegeFragment postCommentPrivilegeFragment3 = PostCommentPrivilegeFragment.this;
                    Context context3 = getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context3, "getContext()");
                    list.add(new RadioItem(privilege_none, postCommentPrivilegeFragment3.getPrivilegeText(context3, PostCommentPrivilegeFragment.this.getPRIVILEGE_NONE())));
                }
            }

            @Override // com.narvii.adapter.RadioGroupAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                super.onItemClick(listAdapter, i, obj, view, view2);
                PostCommentPrivilegeFragment.this.sendRequest(getSelectedItemId());
                return true;
            }
        };
        RadioGroupAdapter radioGroupAdapter = this.radioGroupAdapter;
        if (radioGroupAdapter != null) {
            radioGroupAdapter.setSelectedItemId(getPrivilege());
        }
        dividerAdapter.setAdapter(this.radioGroupAdapter);
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.addAdapter(prefsAdapter);
        }
        MergeAdapter mergeAdapter2 = this.mergeAdapter;
        if (mergeAdapter2 != null) {
            mergeAdapter2.addAdapter(dividerAdapter);
        }
        MergeAdapter mergeAdapter3 = this.mergeAdapter;
        if (mergeAdapter3 != null) {
            return mergeAdapter3;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.narvii.list.MergeAdapter");
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        sendBlogRequest();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onErrorRetry() {
        super.onErrorRetry();
        this.error = null;
        sendBlogRequest();
    }

    private final void sendBlogRequest() {
        getApi().exec(ApiRequest.builder().path("blog/" + this.blogId).build(), new ApiResponseListener<FeedResponse<Blog>>(BlogResponse.class) { // from class: com.narvii.prefs.PostCommentPrivilegeFragment.sendBlogRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, FeedResponse<Blog> feedResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) feedResponse);
                PostCommentPrivilegeFragment.this.requestFinished = true;
                MergeAdapter mergeAdapter = PostCommentPrivilegeFragment.this.getMergeAdapter();
                if (mergeAdapter != null) {
                    mergeAdapter.notifyDataSetChanged();
                }
                Blog blog = feedResponse != null ? (Blog) feedResponse.object() : null;
                if (blog != null) {
                    PostCommentPrivilegeFragment.this.setPrivilege(blog.getPrivilegeOfCommentOnPost());
                    RadioGroupAdapter radioGroupAdapter = PostCommentPrivilegeFragment.this.getRadioGroupAdapter();
                    if (radioGroupAdapter != null) {
                        radioGroupAdapter.setSelectedItemId(PostCommentPrivilegeFragment.this.getPrivilege());
                    }
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                PostCommentPrivilegeFragment.this.error = str;
                PostCommentPrivilegeFragment.this.requestFinished = true;
                MergeAdapter mergeAdapter = PostCommentPrivilegeFragment.this.getMergeAdapter();
                if (mergeAdapter != null) {
                    mergeAdapter.notifyDataSetChanged();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRequest(int i) {
        this.privilege = i;
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ApiRequest.Builder builderPath = ApiRequest.builder().post().path("blog/" + this.blogId);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("privilegeOfCommentOnPost", getPrivilege());
        getApi().exec(builderPath.param("extensions", objectNodeCreateObjectNode).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.prefs.PostCommentPrivilegeFragment.sendRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                if (PostCommentPrivilegeFragment.this.getActivity() == null) {
                    return;
                }
                progressDialog.dismiss();
                FragmentActivity activity = PostCommentPrivilegeFragment.this.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list, str, apiResponse, th);
                Utils.showShortToast(PostCommentPrivilegeFragment.this.getContext(), str);
                if (PostCommentPrivilegeFragment.this.getActivity() != null) {
                    return;
                }
                progressDialog.dismiss();
            }
        });
    }

    public final String getPrivilegeText(Context context, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        if (i == this.PRIVILEGE_EVERYONE) {
            return context.getString(R.string.everyone);
        }
        if (i == this.PRIVILEGE_MY_FOLLOWING) {
            return context.getString(R.string.members_i_am_following);
        }
        if (i == this.PRIVILEGE_NONE) {
            return context.getString(R.string.disabled);
        }
        return null;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i) throws Resources.NotFoundException {
        super.onThemeChange(i);
        if (i == 2) {
            int color = getResources().getColor(R.color.color_default_primary);
            ListView listView = getListView();
            if (listView == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView).setOverscrollStretchHeader(color);
            ListView listView2 = getListView();
            if (listView2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView2).setOverscrollStretchFooter(color);
            ListView listView3 = getListView();
            if (listView3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView3).setListContentBackgroundColor(0);
            return;
        }
        if (i == 1) {
            int color2 = getResources().getColor(R.color.prefs_background);
            ListView listView4 = getListView();
            if (listView4 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView4).setOverscrollStretchHeader(color2);
            ListView listView5 = getListView();
            if (listView5 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView5).setOverscrollStretchFooter(color2);
            ListView listView6 = getListView();
            if (listView6 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView6).setListContentBackgroundColor(-1);
        }
    }
}
