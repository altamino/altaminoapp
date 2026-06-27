package com.narvii.flag.resolve;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.RequestChatUserHelper;
import com.narvii.chat.template.SendStrikeActivity;
import com.narvii.comment.CommentHelper;
import com.narvii.config.ConfigService;
import com.narvii.feed.FeedListItem;
import com.narvii.flag.FlagLogListActivity;
import com.narvii.flag.FlagTag;
import com.narvii.flag.model.Flag;
import com.narvii.flag.model.FlagListResponse;
import com.narvii.flag.widgets.FlagTagsLayout;
import com.narvii.model.Blog;
import com.narvii.model.ExternalSource;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.poweruser.AdvanceUserUtils;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class FlagResolveBar extends LinearLayout {
    private View.OnClickListener flagListener;
    private boolean isEnd;
    private NVContext mContext;
    public Flag mFlag;
    LinearLayout mFlagActionLayout;
    private List<Flag> mFlagList;
    private int mFlagSize;
    FlagTagsLayout mFlagTagLayout;
    RelativeLayout mHideActionLayout;
    RelativeLayout mKeepActionLayout;
    private String mReqFilter;
    private String mReqType;
    RelativeLayout mResolvedLayout;
    private int pageSize;
    private boolean shouldSenReq;
    private String stopTime;
    TextView tvHideView;
    private static final int[] disableObjectTypes = {1, 2, 12, 0, 23, 109};
    private static final int[] deleteObjectTypes = {7, 3};

    interface FlagAttachObject {
        NVObject attachObject();
    }

    public FlagResolveBar(NVContext nVContext, Flag flag, List<Flag> list, int i) {
        this(nVContext, flag, list, i, ExternalSource.EXTERNAL_SOURCE_ALL_ID, null);
    }

    public FlagResolveBar(NVContext nVContext, Flag flag, List<Flag> list, int i, String str, String str2) {
        this(nVContext, null, flag);
        this.mFlagList = list;
        this.mFlagSize = i;
        this.pageSize = ((ConfigService) nVContext.getService("config")).getPageSize();
        this.stopTime = str2;
        String str3 = ExternalSource.EXTERNAL_SOURCE_ALL_ID;
        if (str != null && str.equals("resolved")) {
            this.mReqType = "resolved";
            this.mReqFilter = ExternalSource.EXTERNAL_SOURCE_ALL_ID;
        } else {
            this.mReqType = "pending";
            this.mReqFilter = str != null ? str : str3;
        }
    }

    public FlagResolveBar(NVContext nVContext, Flag flag) {
        this(nVContext, null, flag);
    }

    public FlagResolveBar(NVContext nVContext, AttributeSet attributeSet, Flag flag) {
        super(nVContext.getContext(), attributeSet);
        this.mReqFilter = ExternalSource.EXTERNAL_SOURCE_ALL_ID;
        this.mReqType = "pending";
        this.shouldSenReq = false;
        this.flagListener = new View.OnClickListener() { // from class: com.narvii.flag.resolve.FlagResolveBar.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                switch (view.getId()) {
                    case R.id.flag_already_resolved_layout /* 2131297402 */:
                        if (FlagResolveBar.this.shouldSenReq && !FlagResolveBar.this.mReqType.equals("resolved")) {
                            FlagResolveBar.this.keep();
                            break;
                        } else {
                            FlagResolveBar.this.loadNextFlag();
                            break;
                        }
                        break;
                    case R.id.flag_resolve_action_hide /* 2131297415 */:
                        FlagResolveBar flagResolveBar = FlagResolveBar.this;
                        if (flagResolveBar.mFlag != null) {
                            flagResolveBar.sendHideRequest(0, null);
                            break;
                        }
                        break;
                    case R.id.flag_resolve_action_keep /* 2131297416 */:
                        FlagResolveBar.this.keep();
                        break;
                }
            }
        };
        this.mFlag = flag;
        this.mContext = nVContext;
        init();
    }

    public void setLeftText(String str) {
        TextView textView = this.tvHideView;
        if (textView != null) {
            textView.setText(str);
        }
    }

    private void init() {
        LinearLayout.inflate(getContext(), R.layout.flag_resolve_bar, this);
        this.mFlagActionLayout = (LinearLayout) findViewById(R.id.flag_action_layout);
        this.mFlagTagLayout = (FlagTagsLayout) findViewById(R.id.flag_tags_layout);
        this.mHideActionLayout = (RelativeLayout) findViewById(R.id.flag_resolve_action_hide);
        this.mKeepActionLayout = (RelativeLayout) findViewById(R.id.flag_resolve_action_keep);
        this.mResolvedLayout = (RelativeLayout) findViewById(R.id.flag_already_resolved_layout);
        this.tvHideView = (TextView) findViewById(R.id.hide_text);
        this.mHideActionLayout.setOnClickListener(this.flagListener);
        this.mKeepActionLayout.setOnClickListener(this.flagListener);
        this.mResolvedLayout.setOnClickListener(this.flagListener);
        if (this.mFlag != null) {
            FlagTag flagTag = new FlagTag(true, getContext().getString(R.string.read_flag_report));
            List<FlagTag> flagTagList = FlagTag.getFlagTagList(this.mFlag.flaggedTypes);
            if (flagTagList == null) {
                flagTagList = new ArrayList<>();
            }
            flagTagList.add(0, flagTag);
            this.mFlagTagLayout.addTag(flagTagList);
        }
        this.mFlagTagLayout.setTagsClickListener(new View.OnClickListener() { // from class: com.narvii.flag.resolve.FlagResolveBar.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(FlagResolveBar.this.getContext(), (Class<?>) FlagLogListActivity.class);
                intent.putExtra("flag_id", FlagResolveBar.this.mFlag.objectId);
                FlagResolveBar.this.getContext().startActivity(intent);
                if (FlagResolveBar.this.mContext instanceof NVActivity) {
                    ((NVActivity) FlagResolveBar.this.mContext).overridePendingTransition(R.anim.activity_push_left_in, R.anim.activity_push_left_out);
                } else if (FlagResolveBar.this.mContext instanceof NVFragment) {
                    ((NVFragment) FlagResolveBar.this.mContext).getActivity().overridePendingTransition(R.anim.activity_push_left_in, R.anim.activity_push_left_out);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void keep() {
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.flag.resolve.FlagResolveBar.3
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                FlagResolveBar.this.loadNextFlag();
            }
        };
        progressDialog.show();
        Flag flag = this.mFlag;
        if (flag.objectType == 23) {
            String str = flag.parentId;
        } else {
            String str2 = flag.objectId;
        }
        ((ApiService) this.mContext.getService("api")).exec(new ApiRequest.Builder().post().path("flag/target-object/" + this.mFlag.objectId + "/resolved").param("resolveType", 0).param("resolveMessage", null).build(), progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendHideRequest(int i, String str) {
        if (isDisableType(this.mFlag.objectType)) {
            sendDisablePlusRequest(i, str);
        } else if (isDeleteType(this.mFlag.objectType)) {
            sendDeletePlusRequest(i, str);
        }
    }

    private void sendDisablePlusRequest(int i, String str) {
        if (isQuizzesQuestion()) {
            showQuizzesConfirmDialog();
        } else {
            sendDisableRequest(i, str);
        }
    }

    private void showQuizzesConfirmDialog() {
        if (this.mFlag == null) {
            return;
        }
        ApiRequest apiRequestBuild = new ApiRequest.Builder().path("/blog/" + this.mFlag.parentId).build();
        ApiService apiService = (ApiService) this.mContext.getService("api");
        ProgressDialog progressDialog = new ProgressDialog(this.mContext.getContext(), BlogResponse.class);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.flag.resolve.FlagResolveBar.4
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Blog blog = ((BlogResponse) apiResponse).blog;
                AlertDialog alertDialog = new AlertDialog(FlagResolveBar.this.getContext());
                alertDialog.setContentView(R.layout.flag_quizzes_confirm_dialog);
                ((FeedListItem) alertDialog.findViewById(R.id.feed_layout)).setFeed(blog);
                alertDialog.addButton(FlagResolveBar.this.getResources().getString(R.string.cancel), 32, (View.OnClickListener) null);
                alertDialog.addButton(FlagResolveBar.this.getResources().getString(R.string.disable), 8, new View.OnClickListener() { // from class: com.narvii.flag.resolve.FlagResolveBar.4.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        FlagResolveBar.this.sendDisableRequest(0, null);
                    }
                });
                alertDialog.show();
            }
        };
        apiService.exec(apiRequestBuild, progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendDisableRequest(final int i, final String str) {
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.flag.resolve.FlagResolveBar.5
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                FlagResolveBar.this.sendResolveRequest(i, str);
            }
        };
        progressDialog.show();
        ApiService apiService = (ApiService) this.mContext.getService("api");
        Flag flag = this.mFlag;
        int i2 = flag.objectType;
        if (i2 == 23) {
            i2 = flag.parentType;
        }
        Flag flag2 = this.mFlag;
        String str2 = flag2.objectType == 23 ? flag2.parentId : flag2.objectId;
        ApiRequest.Builder builderPath = new ApiRequest.Builder().https().post().path(NVObject.apiTypeName(i2) + "/" + str2 + "/admin");
        if (this.mFlag.objectType == 0) {
            builderPath.param("adminOpName", 18);
        } else {
            builderPath.param("adminOpName", 110);
            builderPath.param("adminOpValue", 9);
        }
        apiService.exec(builderPath.build(), progressDialog.dismissListener);
    }

    private void sendDeletePlusRequest(int i, String str) {
        String baseCommentPath;
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.flag.resolve.FlagResolveBar.6
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                FlagResolveBar flagResolveBar = FlagResolveBar.this;
                flagResolveBar.showMessageUserDialog(flagResolveBar.getContext().getString(R.string.successfully_deleted));
            }
        };
        progressDialog.show();
        ApiService apiService = (ApiService) this.mContext.getService("api");
        int i2 = this.mFlag.objectType;
        if (i2 == 7) {
            baseCommentPath = "/chat/thread/" + this.mFlag.parentId + "/message/" + this.mFlag.objectId;
        } else if (i2 == 3) {
            boolean zIsGlobalInteractionScope = Utils.isGlobalInteractionScope(this.mContext);
            Flag flag = this.mFlag;
            baseCommentPath = CommentHelper.getBaseCommentPath(zIsGlobalInteractionScope, flag.parentType, flag.parentId, flag.objectId);
        } else {
            baseCommentPath = null;
        }
        apiService.exec(new ApiRequest.Builder().https().delete().path(baseCommentPath).build(), progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendResolveRequest(int i, String str) {
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.flag.resolve.FlagResolveBar.7
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Context context = FlagResolveBar.this.mContext.getContext();
                String string = context.getString(R.string.successfully_disable);
                if (FlagResolveBar.this.mFlag.objectType == 0) {
                    string = context.getString(R.string.successfully_hidden);
                }
                Flag flag = FlagResolveBar.this.mFlag;
                if (flag == null || flag.getBlogType() != 8) {
                    FlagResolveBar.this.showMessageUserDialog(string);
                } else {
                    NVToast.makeText(FlagResolveBar.this.getContext(), string, 1).show();
                }
            }
        };
        progressDialog.show();
        ((ApiService) this.mContext.getService("api")).exec(new ApiRequest.Builder().post().path("flag/target-object/" + this.mFlag.objectId + "/resolved").param("resolveType", null).param("resolveMessage", str).build(), progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMessageUserDialog(String str) {
        AccountService accountService = (AccountService) this.mContext.getService("account");
        boolean zIsChatEnabled = new CommunityConfigHelper(this.mContext).isChatEnabled();
        boolean zIsLeader = accountService.getUserProfile().isLeader();
        final AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setTitle(str);
        alertDialog.setContentView(R.layout.advanced_messsage_user);
        if (zIsLeader) {
            ((TextView) alertDialog.findViewById(R.id.content)).setText(getContext().getString(R.string.strike_info1));
        }
        alertDialog.findViewById(R.id.btn_strike_user).setVisibility(zIsLeader ? 0 : 8);
        alertDialog.findViewById(R.id.btn_message_user).setVisibility(zIsChatEnabled ? 0 : 8);
        ((Button) alertDialog.findViewById(R.id.btn_strike_user)).setText(getContext().getString(R.string.advanced_options_strike_member));
        ((Button) alertDialog.findViewById(R.id.btn_message_user)).setText(getContext().getString(R.string.send_a_message));
        ((Button) alertDialog.findViewById(R.id.btn_strike_user)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.flag.resolve.FlagResolveBar.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (alertDialog.isShowing()) {
                    alertDialog.dismiss();
                }
                FlagResolveBar.this.showAlreadyResolved();
                new AdvanceUserUtils(FlagResolveBar.this.mContext).showStrikeWarningDialog(new Callback<Integer>() { // from class: com.narvii.flag.resolve.FlagResolveBar.8.1
                    @Override // com.narvii.util.Callback
                    public void call(Integer num) {
                        if (num != null) {
                            int iIntValue = num.intValue();
                            if (iIntValue == 0) {
                                FlagResolveBar flagResolveBar = FlagResolveBar.this;
                                flagResolveBar.messageMember(flagResolveBar.mFlag.objectUser);
                            } else {
                                if (iIntValue != 1) {
                                    return;
                                }
                                FlagResolveBar.this.sendStrike();
                            }
                        }
                    }
                });
            }
        });
        ((Button) alertDialog.findViewById(R.id.btn_message_user)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.flag.resolve.FlagResolveBar.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (alertDialog.isShowing()) {
                    alertDialog.dismiss();
                }
                FlagResolveBar.this.showAlreadyResolved();
                NVObject nVObjectAttachObject = null;
                if (FlagResolveBar.this.getCurActivity() != null && (FlagResolveBar.this.getCurActivity().getRootFragment() instanceof FlagAttachObject)) {
                    nVObjectAttachObject = ((FlagAttachObject) FlagResolveBar.this.getCurActivity().getRootFragment()).attachObject();
                }
                FlagResolveBar flagResolveBar = FlagResolveBar.this;
                if (nVObjectAttachObject == null) {
                    nVObjectAttachObject = flagResolveBar.mFlag.objectUser;
                }
                flagResolveBar.messageMember(nVObjectAttachObject);
            }
        });
        ((Button) alertDialog.findViewById(R.id.btn_done)).setText(R.string.done);
        alertDialog.findViewById(R.id.btn_done).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.flag.resolve.FlagResolveBar.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (alertDialog.isShowing()) {
                    alertDialog.dismiss();
                }
                FlagResolveBar.this.loadNextFlag();
            }
        });
        alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStrike() {
        Intent intent = new Intent(this.mContext.getContext(), (Class<?>) SendStrikeActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("attachObject", JacksonUtils.writeAsString(this.mFlag.objectUser));
        bundle.putInt("attachType", 0);
        intent.putExtras(bundle);
        ((NVFragment) this.mContext).startActivityForResult(intent, 301);
        NVContext nVContext = this.mContext;
        if (nVContext instanceof NVActivity) {
            ((NVActivity) nVContext).overridePendingTransition(R.anim.activity_push_left_in, 0);
        } else if (nVContext instanceof NVFragment) {
            ((NVFragment) nVContext).getActivity().overridePendingTransition(R.anim.activity_push_left_in, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void messageMember(NVObject nVObject) {
        new RequestChatUserHelper(this.mContext).request(nVObject, this.mFlag.objectType, null, new Callback<Intent>() { // from class: com.narvii.flag.resolve.FlagResolveBar.11
            @Override // com.narvii.util.Callback
            public void call(Intent intent) {
                FlagResolveBar.this.mContext.startActivity(intent);
            }
        });
    }

    public void loadNextFlag() {
        List<Flag> list = this.mFlagList;
        if (list == null || list.size() == 0 || this.isEnd) {
            finishFlagMode();
            return;
        }
        removeFlag(this.mFlag);
        List<Flag> list2 = this.mFlagList;
        if (list2 != null && list2.size() != 0) {
            Flag flag = this.mFlagList.get(0);
            launchNextFragment(flag, this.mFlagList, getCurActivity());
            if (flag == null) {
                finishFlagMode();
                return;
            }
            return;
        }
        loadNextPageList();
    }

    private void removeFlag(Flag flag) {
        if (flag == null) {
            return;
        }
        ArrayList<Flag> arrayList = new ArrayList();
        Iterator<Flag> it = this.mFlagList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        for (Flag flag2 : arrayList) {
            if (flag.objectId.equals(flag2.objectId)) {
                this.mFlagList.remove(arrayList.indexOf(flag2));
                return;
            }
        }
    }

    private void finishFlagMode() {
        NVContext nVContext = this.mContext;
        if (nVContext instanceof NVFragment) {
            ((NVFragment) nVContext).getActivity().finish();
        } else if (nVContext instanceof NVActivity) {
            ((NVActivity) nVContext).finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NVActivity getCurActivity() {
        NVContext nVContext = this.mContext;
        if (nVContext instanceof NVFragment) {
            return (NVActivity) ((NVFragment) nVContext).getActivity();
        }
        if (nVContext instanceof NVActivity) {
            return (NVActivity) nVContext;
        }
        return null;
    }

    private void launchNextFragment(Flag flag, List<Flag> list, NVActivity nVActivity) {
        FlagModeHelper.launchFlagMode(this.mContext, flag, list, this.mFlagSize, this.mReqType.equals("resolved") ? "resolved" : this.mReqFilter, this.stopTime, nVActivity);
    }

    private void loadNextPageList() {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ApiRequest.Builder builderPath = new ApiRequest.Builder().path("/flag");
        builderPath.param(NotificationCompat.CATEGORY_STATUS, "pending");
        builderPath.param("type", this.mReqFilter);
        builderPath.param(TtmlNode.START, Integer.valueOf(this.mFlagSize));
        builderPath.param("size", Integer.valueOf(this.pageSize));
        if (!TextUtils.isEmpty(this.stopTime)) {
            builderPath.param("stoptime", this.stopTime);
        }
        ((ApiService) this.mContext.getService("api")).exec(builderPath.build(), new ApiResponseListener<FlagListResponse>(FlagListResponse.class) { // from class: com.narvii.flag.resolve.FlagResolveBar.12
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, FlagListResponse flagListResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) flagListResponse);
                List<Flag> list = flagListResponse.flagList;
                if (list == null || list.size() == 0) {
                    FlagResolveBar.this.isEnd = true;
                } else {
                    FlagResolveBar.this.mFlagList.addAll(flagListResponse.flagList);
                    FlagResolveBar.this.mFlagSize += flagListResponse.flagList.size();
                }
                FlagResolveBar.this.loadNextFlag();
                progressDialog.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(FlagResolveBar.this.getContext(), str, 0).show();
                progressDialog.dismiss();
            }
        });
    }

    public void showAlreadyResolved() {
        this.mResolvedLayout.setVisibility(0);
        this.mFlagActionLayout.setVisibility(8);
        this.mFlagTagLayout.setVisibility(8);
        this.shouldSenReq = true;
    }

    public void showResolvedWithoutReq() {
        this.mResolvedLayout.setVisibility(0);
        this.mFlagActionLayout.setVisibility(8);
        this.mFlagTagLayout.setVisibility(8);
        this.shouldSenReq = false;
    }

    private boolean isDisableType(int i) {
        int i2 = 0;
        while (true) {
            int[] iArr = disableObjectTypes;
            if (i2 >= iArr.length) {
                return false;
            }
            if (iArr[i2] == i) {
                return true;
            }
            i2++;
        }
    }

    private boolean isDeleteType(int i) {
        int i2 = 0;
        while (true) {
            int[] iArr = deleteObjectTypes;
            if (i2 >= iArr.length) {
                return false;
            }
            if (iArr[i2] == i) {
                return true;
            }
            i2++;
        }
    }

    private boolean isQuizzesQuestion() {
        Flag flag = this.mFlag;
        return flag != null && flag.objectType == 23 && flag.parentType == 1;
    }
}
