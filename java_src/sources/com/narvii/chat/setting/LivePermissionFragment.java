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
import com.narvii.amino.databinding.FragmentLivePermissionBinding;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class LivePermissionFragment extends NVFragment implements View.OnClickListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(LivePermissionFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;", 0))};
    private ProgressDialog loadingDialog;
    private String threadId;
    private int vvChatJoinType = -1;
    private int initvvChatJoinType = -1;
    private int ndcId = -1;

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, LivePermissionFragment$binding$2.INSTANCE);

    /* JADX INFO: renamed from: com.narvii.chat.setting.LivePermissionFragment$updateLivePermission$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ApiResponseListener<ApiResponse> {
        final /* synthetic */ RtcService $rtcService;

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFinish$lambda$0(SignallingChannel signallingChannel) {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RtcService rtcService, Class<ApiResponse> cls) {
            super(cls);
            this.$rtcService = rtcService;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            ProgressDialog progressDialog = LivePermissionFragment.this.loadingDialog;
            if (progressDialog == null) {
                t.B("loadingDialog");
                progressDialog = null;
            }
            progressDialog.dismiss();
            NVToast.makeText(LivePermissionFragment.this.getContext(), str, 0).show();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
            super.onFinish(apiRequest, apiResponse);
            ProgressDialog progressDialog = LivePermissionFragment.this.loadingDialog;
            String str = null;
            if (progressDialog == null) {
                t.B("loadingDialog");
                progressDialog = null;
            }
            progressDialog.dismiss();
            if (LivePermissionFragment.this.vvChatJoinType != 2) {
                RtcService rtcService = this.$rtcService;
                int i10 = LivePermissionFragment.this.ndcId;
                String str2 = LivePermissionFragment.this.threadId;
                if (str2 == null) {
                    t.B("threadId");
                } else {
                    str = str2;
                }
                rtcService.waitListClean(i10, str, new Callback() { // from class: com.narvii.chat.setting.b
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        LivePermissionFragment.AnonymousClass1.onFinish$lambda$0((SignallingChannel) obj);
                    }
                });
            }
            LivePermissionFragment.this.finish();
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    private final FragmentLivePermissionBinding getBinding() {
        return (FragmentLivePermissionBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final void updateLivePermission() {
        if (this.vvChatJoinType == this.initvvChatJoinType) {
            finish();
            return;
        }
        ProgressDialog progressDialog = this.loadingDialog;
        String str = null;
        if (progressDialog == null) {
            t.B("loadingDialog");
            progressDialog = null;
        }
        progressDialog.show();
        ApiRequest.Builder builderPost = new ApiRequest.Builder().post();
        String str2 = this.threadId;
        if (str2 == null) {
            t.B("threadId");
        } else {
            str = str2;
        }
        ((ApiService) getService("api")).exec(builderPost.path("/chat/thread/" + str + "/vvchat-permission").param("vvChatJoinType", Integer.valueOf(this.vvChatJoinType)).build(), new AnonymousClass1((RtcService) getService("rtc"), ApiResponse.class));
    }

    @Override // com.narvii.app.NVFragment
    @NotNull
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(NVApplication.instance().getResources().getColor(R.color.color_default_primary));
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        t.j(context, "context");
        super.onAttach(context);
        String stringParam = getStringParam("id");
        t.i(stringParam, "getStringParam(...)");
        this.threadId = stringParam;
        this.vvChatJoinType = getIntParam("vvChatJoinType");
        this.ndcId = getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
        this.initvvChatJoinType = this.vvChatJoinType;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.free_talk_layout) {
            this.vvChatJoinType = 1;
        } else if (numValueOf != null && numValueOf.intValue() == R.id.require_approval_layout) {
            this.vvChatJoinType = 2;
        } else if (numValueOf != null && numValueOf.intValue() == R.id.invite_only_layout) {
            this.vvChatJoinType = 3;
        }
        updateViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@NotNull Menu menu, @NotNull MenuInflater inflater) {
        MenuItem icon;
        t.j(menu, "menu");
        t.j(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        MenuItem menuItemAdd = menu.add(0, android.R.string.ok, 0, android.R.string.ok);
        if (menuItemAdd == null || (icon = menuItemAdd.setIcon(new ActionBarIcon(getContext(), R.string.fa_check))) == null) {
            return;
        }
        icon.setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        t.j(item, "item");
        if (item.getItemId() != 17039370) {
            return super.onOptionsItemSelected(item);
        }
        updateLivePermission();
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        getBinding().freeTalkLayout.setOnClickListener(this);
        getBinding().requireApprovalLayout.setOnClickListener(this);
        getBinding().inviteOnlyLayout.setOnClickListener(this);
        updateViews();
        this.loadingDialog = new ProgressDialog(getContext());
    }

    private final void updateViews() {
        FragmentLivePermissionBinding binding = getBinding();
        int i10 = this.vvChatJoinType;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    binding.freeTalkBtn.setVisibility(8);
                    binding.requireApprovalBtn.setVisibility(8);
                    binding.inviteOnlyBtn.setVisibility(0);
                    return;
                }
                return;
            }
            binding.freeTalkBtn.setVisibility(8);
            binding.requireApprovalBtn.setVisibility(0);
            binding.inviteOnlyBtn.setVisibility(8);
            return;
        }
        binding.freeTalkBtn.setVisibility(0);
        binding.requireApprovalBtn.setVisibility(8);
        binding.inviteOnlyBtn.setVisibility(8);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(R.string.live_mode_permission);
    }
}
