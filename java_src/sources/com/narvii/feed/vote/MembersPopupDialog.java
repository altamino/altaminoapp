package com.narvii.feed.vote;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.story.detail.VoteHelper;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.PopupBubbleDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.VoteIcon;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class MembersPopupDialog extends PopupBubbleDialog {
    private final View.OnClickListener clickListener;
    NVObject feed;
    private final ApiResponseListener<VoterListResponse> listener;
    ApiRequest request;
    VoterListResponse users;
    View[] views;

    public void setFeed(NVObject nVObject) {
        this.feed = nVObject;
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext != null) {
            this.request = createUserListRequest(nVObject);
            ((ApiService) nVContext.getService("api")).exec(this.request, this.listener);
        }
        updateViews();
    }

    protected void updateViews() {
        if (this.views == null) {
            View[] viewArr = new View[5];
            this.views = viewArr;
            viewArr[0] = findViewById(R.id.feed_member1);
            this.views[1] = findViewById(R.id.feed_member2);
            this.views[2] = findViewById(R.id.feed_member3);
            this.views[3] = findViewById(R.id.feed_member4);
            this.views[4] = findViewById(R.id.feed_member5);
        }
        findViewById(R.id.progress).setVisibility(this.request == null ? 8 : 0);
        View viewFindViewById = findViewById(R.id.more);
        VoterListResponse voterListResponse = this.users;
        viewFindViewById.setVisibility((voterListResponse == null || voterListResponse.list().size() <= this.views.length) ? 8 : 0);
        int i10 = 0;
        while (true) {
            View[] viewArr2 = this.views;
            if (i10 >= viewArr2.length) {
                return;
            }
            View view = viewArr2[i10];
            NVObject nVObject = this.feed;
            if (!(nVObject instanceof Feed) || !((Feed) nVObject).isGlobalFeed()) {
                view.setOnClickListener(this.clickListener);
            }
            VoterListResponse voterListResponse2 = this.users;
            User user = voterListResponse2 == null ? null : voterListResponse2.getUser(i10);
            ((ThumbImageView) view.findViewWithTag(getContext().getString(R.string.avatar_tag))).setImageUrl(user != null ? user.icon() : null);
            VoteIcon voteIcon = (VoteIcon) view.findViewWithTag(getContext().getString(R.string.icon_tag));
            if (user == null || this.users.votedValueMap == null) {
                voteIcon.setVisibility(8);
            } else {
                voteIcon.setVisibility(0);
                voteIcon.setVotedValue(this.users.getVotedValue(user));
            }
            i10++;
        }
    }

    public MembersPopupDialog(Context context) {
        super(context);
        this.listener = new ApiResponseListener<VoterListResponse>(VoterListResponse.class) { // from class: com.narvii.feed.vote.MembersPopupDialog.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                MembersPopupDialog membersPopupDialog = MembersPopupDialog.this;
                if (apiRequest == membersPopupDialog.request) {
                    membersPopupDialog.request = null;
                }
                membersPopupDialog.updateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, VoterListResponse voterListResponse) throws Exception {
                MembersPopupDialog membersPopupDialog = MembersPopupDialog.this;
                if (apiRequest == membersPopupDialog.request) {
                    membersPopupDialog.request = null;
                }
                membersPopupDialog.users = voterListResponse;
                membersPopupDialog.updateViews();
            }
        };
        this.clickListener = new View.OnClickListener() { // from class: com.narvii.feed.vote.MembersPopupDialog.2
            public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            /* JADX WARN: Code duplicated, block: B:19:0x005f  */
            /* JADX WARN: Code duplicated, block: B:21:0x006d  */
            /* JADX WARN: Code duplicated, block: B:23:0x008b A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:24:0x008c  */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent;
                if (MembersPopupDialog.this.users == null) {
                    return;
                }
                int i10 = 0;
                switch (view.getId()) {
                    case R.id.feed_member2 /* 2131363201 */:
                        i10 = 1;
                        break;
                    case R.id.feed_member3 /* 2131363202 */:
                        i10 = 2;
                        break;
                    case R.id.feed_member4 /* 2131363203 */:
                        i10 = 3;
                        break;
                    case R.id.feed_member5 /* 2131363204 */:
                        i10 = 4;
                        break;
                }
                MembersPopupDialog membersPopupDialog = MembersPopupDialog.this;
                if (i10 == membersPopupDialog.views.length - 1) {
                    int size = membersPopupDialog.users.list().size();
                    MembersPopupDialog membersPopupDialog2 = MembersPopupDialog.this;
                    if (size > membersPopupDialog2.views.length && membersPopupDialog2.feed != null) {
                        Intent intent2 = FragmentWrapperActivity.intent(VoterListFragment.class);
                        intent2.putExtra("nvObject", JacksonUtils.writeAsString(MembersPopupDialog.this.feed));
                        intent2.putExtra(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, MembersPopupDialog.this.feed.objectType());
                        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(MembersPopupDialog.this.getContext(), intent2);
                    } else if (i10 < MembersPopupDialog.this.users.list().size()) {
                        intent = UserProfileFragment.intent(Utils.getNVContext(MembersPopupDialog.this.getContext()), MembersPopupDialog.this.users.list().get(i10));
                        if (intent == null) {
                            return;
                        } else {
                            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(MembersPopupDialog.this.getContext(), intent);
                        }
                    }
                } else if (i10 < MembersPopupDialog.this.users.list().size()) {
                    intent = UserProfileFragment.intent(Utils.getNVContext(MembersPopupDialog.this.getContext()), MembersPopupDialog.this.users.list().get(i10));
                    if (intent == null) {
                        return;
                    } else {
                        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(MembersPopupDialog.this.getContext(), intent);
                    }
                }
                MembersPopupDialog.this.dismiss();
            }
        };
    }

    protected ApiRequest createUserListRequest(NVObject nVObject) {
        ApiRequest.Builder builderPath = ApiRequest.builder().path(VoteHelper.getVotePath(nVObject, Utils.isGlobalInteractionScope(Utils.getNVContext(getContext()))) + "?start=0&size=6&cv=1.2");
        if (nVObject instanceof Feed) {
            builderPath.communityId(((Feed) nVObject).ndcId);
        }
        return builderPath.build();
    }
}
