package com.narvii.feed.vote;

import android.content.Context;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.story.detail.VoteHelper;
import com.narvii.util.Utils;
import com.narvii.util.dialog.PopupBubbleDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.VoteIcon;
import java.util.List;

/* loaded from: classes2.dex */
public class MembersPopupDialog extends PopupBubbleDialog {
    private final View.OnClickListener clickListener;
    NVObject feed;
    private final ApiResponseListener<VoterListResponse> listener;
    ApiRequest request;
    VoterListResponse users;
    View[] views;

    public MembersPopupDialog(Context context) {
        super(context);
        this.listener = new ApiResponseListener<VoterListResponse>(VoterListResponse.class) { // from class: com.narvii.feed.vote.MembersPopupDialog.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, VoterListResponse voterListResponse) throws Exception {
                MembersPopupDialog membersPopupDialog = MembersPopupDialog.this;
                if (apiRequest == membersPopupDialog.request) {
                    membersPopupDialog.request = null;
                }
                MembersPopupDialog membersPopupDialog2 = MembersPopupDialog.this;
                membersPopupDialog2.users = voterListResponse;
                membersPopupDialog2.updateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                MembersPopupDialog membersPopupDialog = MembersPopupDialog.this;
                if (apiRequest == membersPopupDialog.request) {
                    membersPopupDialog.request = null;
                }
                MembersPopupDialog.this.updateViews();
            }
        };
        this.clickListener = new View.OnClickListener() { // from class: com.narvii.feed.vote.MembersPopupDialog.2
            /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onClick(android.view.View r4) {
                /*
                    r3 = this;
                    com.narvii.feed.vote.MembersPopupDialog r0 = com.narvii.feed.vote.MembersPopupDialog.this
                    com.narvii.feed.vote.VoterListResponse r0 = r0.users
                    if (r0 != 0) goto L7
                    return
                L7:
                    int r4 = r4.getId()
                    r0 = 1
                    r1 = 0
                    switch(r4) {
                        case 2131297353: goto L10;
                        case 2131297354: goto L18;
                        case 2131297355: goto L16;
                        case 2131297356: goto L14;
                        case 2131297357: goto L12;
                        default: goto L10;
                    }
                L10:
                    r4 = 0
                    goto L19
                L12:
                    r4 = 4
                    goto L19
                L14:
                    r4 = 3
                    goto L19
                L16:
                    r4 = 2
                    goto L19
                L18:
                    r4 = 1
                L19:
                    com.narvii.feed.vote.MembersPopupDialog r1 = com.narvii.feed.vote.MembersPopupDialog.this
                    android.view.View[] r2 = r1.views
                    int r2 = r2.length
                    int r2 = r2 - r0
                    if (r4 != r2) goto L60
                    com.narvii.feed.vote.VoterListResponse r0 = r1.users
                    java.util.List r0 = r0.list()
                    int r0 = r0.size()
                    com.narvii.feed.vote.MembersPopupDialog r1 = com.narvii.feed.vote.MembersPopupDialog.this
                    android.view.View[] r2 = r1.views
                    int r2 = r2.length
                    if (r0 <= r2) goto L60
                    com.narvii.model.NVObject r0 = r1.feed
                    if (r0 == 0) goto L60
                    java.lang.Class<com.narvii.feed.vote.VoterListFragment> r4 = com.narvii.feed.vote.VoterListFragment.class
                    android.content.Intent r4 = com.narvii.app.FragmentWrapperActivity.intent(r4)
                    com.narvii.feed.vote.MembersPopupDialog r0 = com.narvii.feed.vote.MembersPopupDialog.this
                    com.narvii.model.NVObject r0 = r0.feed
                    java.lang.String r0 = com.narvii.util.JacksonUtils.writeAsString(r0)
                    java.lang.String r1 = "nvObject"
                    r4.putExtra(r1, r0)
                    com.narvii.feed.vote.MembersPopupDialog r0 = com.narvii.feed.vote.MembersPopupDialog.this
                    com.narvii.model.NVObject r0 = r0.feed
                    int r0 = r0.objectType()
                    java.lang.String r1 = "objectType"
                    r4.putExtra(r1, r0)
                    com.narvii.feed.vote.MembersPopupDialog r0 = com.narvii.feed.vote.MembersPopupDialog.this
                    android.content.Context r0 = r0.getContext()
                    r0.startActivity(r4)
                    goto L96
                L60:
                    com.narvii.feed.vote.MembersPopupDialog r0 = com.narvii.feed.vote.MembersPopupDialog.this
                    com.narvii.feed.vote.VoterListResponse r0 = r0.users
                    java.util.List r0 = r0.list()
                    int r0 = r0.size()
                    if (r4 >= r0) goto L96
                    com.narvii.feed.vote.MembersPopupDialog r0 = com.narvii.feed.vote.MembersPopupDialog.this
                    com.narvii.feed.vote.VoterListResponse r0 = r0.users
                    java.util.List r0 = r0.list()
                    java.lang.Object r4 = r0.get(r4)
                    com.narvii.model.User r4 = (com.narvii.model.User) r4
                    com.narvii.feed.vote.MembersPopupDialog r0 = com.narvii.feed.vote.MembersPopupDialog.this
                    android.content.Context r0 = r0.getContext()
                    com.narvii.app.NVContext r0 = com.narvii.util.Utils.getNVContext(r0)
                    android.content.Intent r4 = com.narvii.user.profile.UserProfileFragment.intent(r0, r4)
                    if (r4 != 0) goto L8d
                    return
                L8d:
                    com.narvii.feed.vote.MembersPopupDialog r0 = com.narvii.feed.vote.MembersPopupDialog.this
                    android.content.Context r0 = r0.getContext()
                    r0.startActivity(r4)
                L96:
                    com.narvii.feed.vote.MembersPopupDialog r4 = com.narvii.feed.vote.MembersPopupDialog.this
                    r4.dismiss()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.narvii.feed.vote.MembersPopupDialog.AnonymousClass2.onClick(android.view.View):void");
            }
        };
    }

    public void setFeed(NVObject nVObject) {
        this.feed = nVObject;
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext != null) {
            this.request = createUserListRequest(nVObject);
            ((ApiService) nVContext.getService("api")).exec(this.request, this.listener);
        }
        updateViews();
    }

    protected ApiRequest createUserListRequest(NVObject nVObject) {
        ApiRequest.Builder builderPath = ApiRequest.builder().path(VoteHelper.getVotePath(nVObject, Utils.isGlobalInteractionScope(Utils.getNVContext(getContext()))) + "?start=0&size=6&cv=1.2");
        if (nVObject instanceof Feed) {
            builderPath.communityId(((Feed) nVObject).ndcId);
        }
        return builderPath.build();
    }

    protected void updateViews() {
        if (this.views == null) {
            this.views = new View[5];
            this.views[0] = findViewById(R.id.feed_member1);
            this.views[1] = findViewById(R.id.feed_member2);
            this.views[2] = findViewById(R.id.feed_member3);
            this.views[3] = findViewById(R.id.feed_member4);
            this.views[4] = findViewById(R.id.feed_member5);
        }
        findViewById(R.id.progress).setVisibility(this.request == null ? 8 : 0);
        View viewFindViewById = findViewById(R.id.more);
        VoterListResponse voterListResponse = this.users;
        viewFindViewById.setVisibility((voterListResponse == null || voterListResponse.list().size() <= this.views.length) ? 8 : 0);
        int i = 0;
        while (true) {
            View[] viewArr = this.views;
            if (i >= viewArr.length) {
                return;
            }
            View view = viewArr[i];
            NVObject nVObject = this.feed;
            if (!((nVObject instanceof Feed) && ((Feed) nVObject).isGlobalFeed())) {
                view.setOnClickListener(this.clickListener);
            }
            VoterListResponse voterListResponse2 = this.users;
            User user = voterListResponse2 == null ? null : voterListResponse2.getUser(i);
            ((ThumbImageView) view.findViewById(R.id.avatar)).setImageUrl(user != null ? user.icon() : null);
            VoteIcon voteIcon = (VoteIcon) view.findViewById(R.id.icon);
            if (user == null || this.users.votedValueMap == null) {
                voteIcon.setVisibility(8);
            } else {
                voteIcon.setVisibility(0);
                voteIcon.setVotedValue(this.users.getVotedValue(user));
            }
            i++;
        }
    }
}
