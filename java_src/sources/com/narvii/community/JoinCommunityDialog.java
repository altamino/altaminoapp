package com.narvii.community;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.annotation.NonNull;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes7.dex */
public class JoinCommunityDialog extends ACMAlertDialog {
    public Callback<Boolean> callback;

    public static JoinCommunityDialog join(Context context, Community community, Callback<Boolean> callback) {
        JoinCommunityDialog joinCommunityDialog = new JoinCommunityDialog(context);
        joinCommunityDialog.setCallback(callback);
        joinCommunityDialog.show();
        return joinCommunityDialog;
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static Dialog showInnerJoinDialog(NVContext nVContext) {
        return showInnerJoinDialog(nVContext, ((ConfigService) nVContext.getService("config")).getCommunityId());
    }

    @Override // com.narvii.widget.ACMAlertDialog, com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "join_community_dialog";
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tryJoinPrivateCommunity(Context context, int i10, Community community) {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", i10);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        intent.putExtra("joinOnly", true);
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(context, intent);
    }

    protected JoinCommunityDialog(@NonNull Context context) {
        super(context);
        setMessage(R.string.headline_join_amino_first);
        addButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.community.JoinCommunityDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogEvent.clickWildcardBuilder(JoinCommunityDialog.this, "Cancel").send();
                Callback<Boolean> callback = JoinCommunityDialog.this.callback;
                if (callback != null) {
                    callback.call(Boolean.FALSE);
                }
            }
        });
        addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.community.JoinCommunityDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogEvent.clickWildcardBuilder(JoinCommunityDialog.this, "Join").send();
                Callback<Boolean> callback = JoinCommunityDialog.this.callback;
                if (callback != null) {
                    callback.call(Boolean.TRUE);
                }
            }
        });
    }

    public static Dialog showInnerJoinDialog(final NVContext nVContext, final int i10) {
        final Community community = ((CommunityService) nVContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(i10);
        final Context context = nVContext.getContext();
        return join(context, community, new Callback<Boolean>() { // from class: com.narvii.community.JoinCommunityDialog.4
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool.booleanValue()) {
                    Community community2 = community;
                    if (community2 == null || community2.joinType == 0) {
                        new com.narvii.master.CommunityHelper(nVContext).autoOpenCommunityDetail().joinCommunity(i10, null, null);
                    } else {
                        JoinCommunityDialog.tryJoinPrivateCommunity(context, i10, community2);
                    }
                }
            }
        });
    }

    public static Dialog join(final NVContext nVContext, final Community community) {
        final Context context = nVContext.getContext();
        return join(context, community, new Callback<Boolean>() { // from class: com.narvii.community.JoinCommunityDialog.3
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool.booleanValue()) {
                    Community community2 = community;
                    if (community2 == null || community2.joinType != 0) {
                        if (community2 != null) {
                            JoinCommunityDialog.tryJoinPrivateCommunity(context, community2.id, community2);
                        }
                    } else {
                        CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(nVContext, null) { // from class: com.narvii.community.JoinCommunityDialog.3.1
                            @Override // com.narvii.community.CommunityLaunchHelper
                            protected void onFail(int i10, String str) {
                                super.onFail(i10, str);
                                if (i10 == 3) {
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
                    }
                }
            }
        });
    }
}
