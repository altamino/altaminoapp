package com.narvii.prefs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.FragmentActivity;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.adapter.RadioGroupAdapter;
import com.narvii.adapter.RadioItem;
import com.narvii.amino.master.R;
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
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class PostCommentPrivilegeFragment extends NVListFragment {

    @Nullable
    private String blogId;

    @Nullable
    private String error;

    @Nullable
    private MergeAdapter mergeAdapter;
    private int privilege;

    @Nullable
    private RadioGroupAdapter radioGroupAdapter;
    private boolean requestFinished;
    private final int PRIVILEGE_EVERYONE = 1;
    private final int PRIVILEGE_MY_FOLLOWING = 2;
    private final int PRIVILEGE_NONE = 3;

    @NotNull
    private final w7.m api$delegate = w7.o.a(new PostCommentPrivilegeFragment$api$2(this));

    @NotNull
    private final w7.m config$delegate = w7.o.a(new PostCommentPrivilegeFragment$config$2(this));

    @Nullable
    public final String getBlogId() {
        return this.blogId;
    }

    @Nullable
    public final MergeAdapter getMergeAdapter() {
        return this.mergeAdapter;
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

    public final int getPrivilege() {
        int i10 = this.privilege;
        return i10 == 0 ? this.PRIVILEGE_EVERYONE : i10;
    }

    @Nullable
    public final RadioGroupAdapter getRadioGroupAdapter() {
        return this.radioGroupAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    public final void setBlogId(@Nullable String str) {
        this.blogId = str;
    }

    public final void setMergeAdapter(@Nullable MergeAdapter mergeAdapter) {
        this.mergeAdapter = mergeAdapter;
    }

    public final void setPrivilege(int i10) {
        this.privilege = i10;
    }

    public final void setRadioGroupAdapter(@Nullable RadioGroupAdapter radioGroupAdapter) {
        this.radioGroupAdapter = radioGroupAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRequest(int i10) {
        this.privilege = i10;
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ApiRequest.Builder builderPath = ApiRequest.builder().post().path("blog/" + this.blogId);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("privilegeOfCommentOnPost", getPrivilege());
        l0 l0Var = l0.INSTANCE;
        getApi().exec(builderPath.param("extensions", objectNodeCreateObjectNode).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.prefs.PostCommentPrivilegeFragment.sendRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i11, list, str, apiResponse, th);
                Utils.showShortToast(PostCommentPrivilegeFragment.this.getContext(), str);
                if (PostCommentPrivilegeFragment.this.getActivity() != null) {
                    return;
                }
                progressDialog.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
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
        });
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        this.mergeAdapter = new MergeAdapter() { // from class: com.narvii.prefs.PostCommentPrivilegeFragment.createAdapter.1
            {
                super(PostCommentPrivilegeFragment.this);
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            @Nullable
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
            protected void buildCells(@Nullable List<Object> list) {
                if (list != null) {
                    list.add(new PrefsMargin(Utils.dpToPxInt(getContext(), 15.0f)));
                }
            }

            {
                super(this);
            }
        };
        DividerAdapter dividerAdapter = new DividerAdapter(this) { // from class: com.narvii.prefs.PostCommentPrivilegeFragment$createAdapter$dividerAdapter$1
            @Override // com.narvii.list.DividerAdapter
            protected int getDividerLayoutId() {
                return R.layout.prefs_divider;
            }

            {
                super(this);
            }
        };
        RadioGroupAdapter radioGroupAdapter = new RadioGroupAdapter() { // from class: com.narvii.prefs.PostCommentPrivilegeFragment.createAdapter.2
            {
                super(PostCommentPrivilegeFragment.this);
            }

            @Override // com.narvii.adapter.RadioGroupAdapter
            protected void buildCells(@Nullable List<RadioItem> list) {
                if (list != null) {
                    int privilege_everyone = PostCommentPrivilegeFragment.this.getPRIVILEGE_EVERYONE();
                    PostCommentPrivilegeFragment postCommentPrivilegeFragment = PostCommentPrivilegeFragment.this;
                    Context context = getContext();
                    t.i(context, "getContext(...)");
                    list.add(new RadioItem(privilege_everyone, postCommentPrivilegeFragment.getPrivilegeText(context, PostCommentPrivilegeFragment.this.getPRIVILEGE_EVERYONE())));
                }
                if (list != null) {
                    int privilege_my_following = PostCommentPrivilegeFragment.this.getPRIVILEGE_MY_FOLLOWING();
                    PostCommentPrivilegeFragment postCommentPrivilegeFragment2 = PostCommentPrivilegeFragment.this;
                    Context context2 = getContext();
                    t.i(context2, "getContext(...)");
                    list.add(new RadioItem(privilege_my_following, postCommentPrivilegeFragment2.getPrivilegeText(context2, PostCommentPrivilegeFragment.this.getPRIVILEGE_MY_FOLLOWING())));
                }
                if (list != null) {
                    int privilege_none = PostCommentPrivilegeFragment.this.getPRIVILEGE_NONE();
                    PostCommentPrivilegeFragment postCommentPrivilegeFragment3 = PostCommentPrivilegeFragment.this;
                    Context context3 = getContext();
                    t.i(context3, "getContext(...)");
                    list.add(new RadioItem(privilege_none, postCommentPrivilegeFragment3.getPrivilegeText(context3, PostCommentPrivilegeFragment.this.getPRIVILEGE_NONE())));
                }
            }

            @Override // com.narvii.adapter.RadioGroupAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
                super.onItemClick(listAdapter, i10, obj, view, view2);
                PostCommentPrivilegeFragment.this.sendRequest(getSelectedItemId());
                return true;
            }
        };
        this.radioGroupAdapter = radioGroupAdapter;
        radioGroupAdapter.setSelectedItemId(getPrivilege());
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
        t.h(mergeAdapter3, "null cannot be cast to non-null type com.narvii.list.MergeAdapter");
        return mergeAdapter3;
    }

    @NotNull
    public final ApiService getApi() {
        Object value = this.api$delegate.getValue();
        t.i(value, "getValue(...)");
        return (ApiService) value;
    }

    @NotNull
    public final ConfigService getConfig() {
        Object value = this.config$delegate.getValue();
        t.i(value, "getValue(...)");
        return (ConfigService) value;
    }

    @Nullable
    public final String getPrivilegeText(@NotNull Context context, int i10) {
        t.j(context, "context");
        if (i10 == this.PRIVILEGE_EVERYONE) {
            return context.getString(R.string.everyone);
        }
        if (i10 == this.PRIVILEGE_MY_FOLLOWING) {
            return context.getString(R.string.members_i_am_following);
        }
        if (i10 == this.PRIVILEGE_NONE) {
            return context.getString(R.string.disabled);
        }
        return null;
    }

    private final void sendBlogRequest() {
        getApi().exec(ApiRequest.builder().path("blog/" + this.blogId).build(), new ApiResponseListener<FeedResponse<Blog>>(BlogResponse.class) { // from class: com.narvii.prefs.PostCommentPrivilegeFragment.sendBlogRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable FeedResponse<Blog> feedResponse) throws Exception {
                super.onFinish(apiRequest, feedResponse);
                PostCommentPrivilegeFragment.this.requestFinished = true;
                MergeAdapter mergeAdapter = PostCommentPrivilegeFragment.this.getMergeAdapter();
                if (mergeAdapter != null) {
                    mergeAdapter.notifyDataSetChanged();
                }
                Blog blog = feedResponse != null ? (Blog) feedResponse.object() : null;
                if (blog != null) {
                    PostCommentPrivilegeFragment.this.setPrivilege(blog.getPrivilegeOfCommentOnPost());
                    RadioGroupAdapter radioGroupAdapter = PostCommentPrivilegeFragment.this.getRadioGroupAdapter();
                    if (radioGroupAdapter == null) {
                        return;
                    }
                    radioGroupAdapter.setSelectedItemId(PostCommentPrivilegeFragment.this.getPrivilege());
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                PostCommentPrivilegeFragment.this.error = str;
                PostCommentPrivilegeFragment.this.requestFinished = true;
                MergeAdapter mergeAdapter = PostCommentPrivilegeFragment.this.getMergeAdapter();
                if (mergeAdapter != null) {
                    mergeAdapter.notifyDataSetChanged();
                }
            }
        });
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        int i10;
        super.onCreate(bundle);
        this.privilege = getIntParam("privilege");
        this.blogId = getStringParam("blogId");
        setTitle(R.string.allow_commenting_on_this_post);
        if (getConfig().getCommunityId() == 0) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        setNVThemeValue(i10);
        sendBlogRequest();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onErrorRetry() {
        super.onErrorRetry();
        this.error = null;
        sendBlogRequest();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@Nullable ListView listView, @Nullable Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView != null) {
            listView.setDividerHeight(0);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        sendBlogRequest();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i10) {
        super.onThemeChange(i10);
        if (i10 != 1) {
            if (i10 == 2) {
                int color = getResources().getColor(R.color.color_default_primary);
                ListView listView = getListView();
                t.h(listView, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView).setOverscrollStretchHeader(color);
                ListView listView2 = getListView();
                t.h(listView2, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView2).setOverscrollStretchFooter(color);
                ListView listView3 = getListView();
                t.h(listView3, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView3).setListContentBackgroundColor(0);
                return;
            }
            return;
        }
        int color2 = getResources().getColor(R.color.prefs_background);
        ListView listView4 = getListView();
        t.h(listView4, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView4).setOverscrollStretchHeader(color2);
        ListView listView5 = getListView();
        t.h(listView5, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView5).setOverscrollStretchFooter(color2);
        ListView listView6 = getListView();
        t.h(listView6, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView6).setListContentBackgroundColor(-1);
    }
}
