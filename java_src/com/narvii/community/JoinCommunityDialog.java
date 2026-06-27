package com.narvii.community;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Community;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.ACMAlertDialog;

/* loaded from: classes2.dex */
public class JoinCommunityDialog extends ACMAlertDialog {
    public Callback<Boolean> callback;

    @Override // com.narvii.widget.ACMAlertDialog, com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "JoinCommunityDialog";
    }

    protected JoinCommunityDialog(Context context) {
        super(context);
        setMessage(R.string.headline_join_amino_first);
        addButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.community.JoinCommunityDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogEvent.clickWildcardBuilder(JoinCommunityDialog.this, "Cancel").send();
                Callback<Boolean> callback = JoinCommunityDialog.this.callback;
                if (callback != null) {
                    callback.call(false);
                }
            }
        });
        addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.community.JoinCommunityDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogEvent.clickWildcardBuilder(JoinCommunityDialog.this, "Join").send();
                Callback<Boolean> callback = JoinCommunityDialog.this.callback;
                if (callback != null) {
                    callback.call(true);
                }
            }
        });
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
    }

    public static JoinCommunityDialog join(Context context, Community community, Callback<Boolean> callback) {
        JoinCommunityDialog joinCommunityDialog = new JoinCommunityDialog(context);
        joinCommunityDialog.setCallback(callback);
        joinCommunityDialog.show();
        return joinCommunityDialog;
    }

    public static Dialog join(final NVContext nVContext, final Community community) {
        final Context context = nVContext.getContext();
        return join(context, community, new Callback<Boolean>() { // from class: com.narvii.community.JoinCommunityDialog.3
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool.booleanValue()) {
                    Community community2 = community;
                    if (community2 != null && community2.joinType == 0) {
                        CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(nVContext, null) { // from class: com.narvii.community.JoinCommunityDialog.3.1
                            @Override // com.narvii.community.CommunityLaunchHelper
                            protected void onFail(int i, String str) {
                                super.onFail(i, str);
                                if (i == 3) {
                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                    Context context2 = context;
                                    Community community3 = community;
                                    JoinCommunityDialog.tryJoinPrivateCommunity(context2, community3.id, community3);
                                }
                            }

                            @Override // com.narvii.community.CommunityLaunchHelper
                            protected void onFinish() {
                                super.onFinish();
                            }
                        };
                        communityLaunchHelper.setAllowJoinCommuntiy(true);
                        Community community3 = community;
                        communityLaunchHelper.launch(community3.id, community3, null, null, null, null, null, false);
                        return;
                    }
                    Community community4 = community;
                    if (community4 != null) {
                        JoinCommunityDialog.tryJoinPrivateCommunity(context, community4.id, community4);
                    }
                }
            }
        });
    }

    public static Dialog showInnerJoinDialog(NVContext nVContext) {
        return showInnerJoinDialog(nVContext, ((ConfigService) nVContext.getService("config")).getCommunityId());
    }

    public static Dialog showInnerJoinDialog(final NVContext nVContext, final int i) {
        final Community community = ((CommunityService) nVContext.getService("community")).getCommunity(i);
        final Context context = nVContext.getContext();
        return join(context, community, new Callback<Boolean>() { // from class: com.narvii.community.JoinCommunityDialog.4
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool.booleanValue()) {
                    Community community2 = community;
                    if (community2 != null && community2.joinType != 0) {
                        JoinCommunityDialog.tryJoinPrivateCommunity(context, i, community2);
                    } else {
                        new com.narvii.master.CommunityHelper(nVContext).autoOpenCommunityDetail().joinCommunity(i, null, null);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tryJoinPrivateCommunity(Context context, int i, Community community) {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", i);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        intent.putExtra("joinOnly", true);
        context.startActivity(intent);
    }
}
