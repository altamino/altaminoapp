package com.narvii.chat.setting;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.TintButton;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LivePermissionFragment.kt */
/* loaded from: classes2.dex */
public final class LivePermissionFragment extends NVFragment implements View.OnClickListener {
    private HashMap _$_findViewCache;
    private ProgressDialog loadingDialog;
    private String threadId;
    private int vvChatJoinType = -1;
    private int initvvChatJoinType = -1;
    private int ndcId = -1;

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

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ ProgressDialog access$getLoadingDialog$p(LivePermissionFragment livePermissionFragment) {
        ProgressDialog progressDialog = livePermissionFragment.loadingDialog;
        if (progressDialog != null) {
            return progressDialog;
        }
        Intrinsics.throwUninitializedPropertyAccessException("loadingDialog");
        throw null;
    }

    public static final /* synthetic */ String access$getThreadId$p(LivePermissionFragment livePermissionFragment) {
        String str = livePermissionFragment.threadId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("threadId");
        throw null;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(R.string.live_mode_permission);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        String stringParam = getStringParam("id");
        Intrinsics.checkExpressionValueIsNotNull(stringParam, "getStringParam(\"id\")");
        this.threadId = stringParam;
        this.vvChatJoinType = getIntParam("vvChatJoinType");
        this.ndcId = getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
        this.initvvChatJoinType = this.vvChatJoinType;
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        NVApplication nVApplicationInstance = NVApplication.instance();
        Intrinsics.checkExpressionValueIsNotNull(nVApplicationInstance, "NVApplication.instance()");
        return new ColorDrawable(nVApplicationInstance.getResources().getColor(R.color.color_default_primary));
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_live_permission, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        ((RelativeLayout) _$_findCachedViewById(com.narvii.amino.R.id.free_talk_layout)).setOnClickListener(this);
        ((RelativeLayout) _$_findCachedViewById(com.narvii.amino.R.id.require_approval_layout)).setOnClickListener(this);
        ((RelativeLayout) _$_findCachedViewById(com.narvii.amino.R.id.invite_only_layout)).setOnClickListener(this);
        updateViews();
        this.loadingDialog = new ProgressDialog(getContext());
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        MenuItem menuItemAdd;
        MenuItem icon;
        super.onCreateOptionsMenu(menu, menuInflater);
        if (menu == null || (menuItemAdd = menu.add(0, android.R.string.ok, 0, android.R.string.ok)) == null || (icon = menuItemAdd.setIcon(new ActionBarIcon(getContext(), R.string.fa_check))) == null) {
            return;
        }
        icon.setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == 17039370) {
            updateLivePermission();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (Intrinsics.areEqual(view, (RelativeLayout) _$_findCachedViewById(com.narvii.amino.R.id.free_talk_layout))) {
            this.vvChatJoinType = 1;
        } else if (Intrinsics.areEqual(view, (RelativeLayout) _$_findCachedViewById(com.narvii.amino.R.id.require_approval_layout))) {
            this.vvChatJoinType = 2;
        } else if (Intrinsics.areEqual(view, (RelativeLayout) _$_findCachedViewById(com.narvii.amino.R.id.invite_only_layout))) {
            this.vvChatJoinType = 3;
        }
        updateViews();
    }

    private final void updateViews() {
        int i = this.vvChatJoinType;
        if (i == 1) {
            TintButton free_talk_btn = (TintButton) _$_findCachedViewById(com.narvii.amino.R.id.free_talk_btn);
            Intrinsics.checkExpressionValueIsNotNull(free_talk_btn, "free_talk_btn");
            free_talk_btn.setVisibility(0);
            TintButton require_approval_btn = (TintButton) _$_findCachedViewById(com.narvii.amino.R.id.require_approval_btn);
            Intrinsics.checkExpressionValueIsNotNull(require_approval_btn, "require_approval_btn");
            require_approval_btn.setVisibility(8);
            TintButton invite_only_btn = (TintButton) _$_findCachedViewById(com.narvii.amino.R.id.invite_only_btn);
            Intrinsics.checkExpressionValueIsNotNull(invite_only_btn, "invite_only_btn");
            invite_only_btn.setVisibility(8);
            return;
        }
        if (i == 2) {
            TintButton free_talk_btn2 = (TintButton) _$_findCachedViewById(com.narvii.amino.R.id.free_talk_btn);
            Intrinsics.checkExpressionValueIsNotNull(free_talk_btn2, "free_talk_btn");
            free_talk_btn2.setVisibility(8);
            TintButton require_approval_btn2 = (TintButton) _$_findCachedViewById(com.narvii.amino.R.id.require_approval_btn);
            Intrinsics.checkExpressionValueIsNotNull(require_approval_btn2, "require_approval_btn");
            require_approval_btn2.setVisibility(0);
            TintButton invite_only_btn2 = (TintButton) _$_findCachedViewById(com.narvii.amino.R.id.invite_only_btn);
            Intrinsics.checkExpressionValueIsNotNull(invite_only_btn2, "invite_only_btn");
            invite_only_btn2.setVisibility(8);
            return;
        }
        if (i != 3) {
            return;
        }
        TintButton free_talk_btn3 = (TintButton) _$_findCachedViewById(com.narvii.amino.R.id.free_talk_btn);
        Intrinsics.checkExpressionValueIsNotNull(free_talk_btn3, "free_talk_btn");
        free_talk_btn3.setVisibility(8);
        TintButton require_approval_btn3 = (TintButton) _$_findCachedViewById(com.narvii.amino.R.id.require_approval_btn);
        Intrinsics.checkExpressionValueIsNotNull(require_approval_btn3, "require_approval_btn");
        require_approval_btn3.setVisibility(8);
        TintButton invite_only_btn3 = (TintButton) _$_findCachedViewById(com.narvii.amino.R.id.invite_only_btn);
        Intrinsics.checkExpressionValueIsNotNull(invite_only_btn3, "invite_only_btn");
        invite_only_btn3.setVisibility(0);
    }

    private final void updateLivePermission() {
        if (this.vvChatJoinType == this.initvvChatJoinType) {
            finish();
            return;
        }
        ProgressDialog progressDialog = this.loadingDialog;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadingDialog");
            throw null;
        }
        progressDialog.show();
        ApiRequest.Builder builderPost = new ApiRequest.Builder().post();
        StringBuilder sb = new StringBuilder();
        sb.append("/chat/thread/");
        String str = this.threadId;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("threadId");
            throw null;
        }
        sb.append(str);
        sb.append("/vvchat-permission");
        ApiRequest apiRequestBuild = builderPost.path(sb.toString()).param("vvChatJoinType", Integer.valueOf(this.vvChatJoinType)).build();
        ApiService apiService = (ApiService) getService("api");
        final RtcService rtcService = (RtcService) getService("rtc");
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.setting.LivePermissionFragment.updateLivePermission.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                LivePermissionFragment.access$getLoadingDialog$p(LivePermissionFragment.this).dismiss();
                if (LivePermissionFragment.this.vvChatJoinType != 2) {
                    rtcService.waitListClean(LivePermissionFragment.this.ndcId, LivePermissionFragment.access$getThreadId$p(LivePermissionFragment.this), new Callback<SignallingChannel>() { // from class: com.narvii.chat.setting.LivePermissionFragment$updateLivePermission$1$onFinish$1
                        @Override // com.narvii.util.Callback
                        public final void call(SignallingChannel signallingChannel) {
                        }
                    });
                }
                LivePermissionFragment.this.finish();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
                LivePermissionFragment.access$getLoadingDialog$p(LivePermissionFragment.this).dismiss();
                NVToast.makeText(LivePermissionFragment.this.getContext(), str2, 0).show();
            }
        });
    }
}
