package com.narvii.tipping;

import android.content.Intent;
import com.narvii.account.AccountService;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.CommunityObjectInGlobal;
import com.narvii.model.Feed;
import com.narvii.model.Tippable;
import com.narvii.model.User;
import com.narvii.monetization.store.TippingConfirmDialog;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.statistics.StatisticsService;
import com.safedk.android.utils.Logger;
import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
public class TippingHelper {
    private AccountService accountService;
    NVContext nvContext;
    String source;

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public boolean isTipAuthor(Tippable tippable) {
        User tipAuthor;
        return (tippable == null || (tipAuthor = tippable.getTipAuthor()) == null || !Utils.isEqualsNotNull(this.accountService.getUserId(), tipAuthor.id())) ? false : true;
    }

    public void openTippingList(Tippable tippable, Community community) {
        if (tippable instanceof CommunityObjectInGlobal) {
            openTippingList(tippable, ((CommunityObjectInGlobal) tippable).getNdcId() == 0, community);
        } else {
            openTippingList(tippable, Utils.isGlobalInteractionScope(this.nvContext), community);
        }
    }

    public TippingHelper source(String str) {
        this.source = str;
        return this;
    }

    public TippingConfirmDialog openTipDialog(Tippable tippable, TippingConfirmDialog.TipSuccessListener tipSuccessListener) {
        if (tippable == null) {
            return null;
        }
        TippingConfirmDialog tippingConfirmDialog = new TippingConfirmDialog(this.nvContext, tippable);
        tippingConfirmDialog.source = this.source;
        tippingConfirmDialog.setTipSuccessListener(tipSuccessListener);
        tippingConfirmDialog.show();
        ((StatisticsService) this.nvContext.getService("statistics")).event("Taps on Give Props").param(ExternalPostPreviewFragment.SOURCE, this.source).userPropInc("Taps on Give Props Total");
        return tippingConfirmDialog;
    }

    public TippingHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.accountService = (AccountService) nVContext.getService("account");
    }

    public void openTippingList(Tippable tippable, boolean z6, Community community) {
        Serializable serializable;
        if (tippable == null) {
            return;
        }
        if (tippable instanceof Feed) {
            serializable = Feed.class;
        } else {
            serializable = tippable instanceof ChatThread ? ChatThread.class : null;
        }
        if (serializable == null) {
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(isTipAuthor(tippable) ? TippingAuthorListFragment.class : TippingViewerListFragment.class);
        intent.putExtra("object", JacksonUtils.writeAsString(tippable));
        intent.putExtra("objectClass", serializable);
        intent.putExtra(SearchPrefsHelper.PREFS_KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        if (tippable instanceof CommunityObjectInGlobal) {
            intent.putExtra("__communityId", ((CommunityObjectInGlobal) tippable).getNdcId());
        }
        intent.putExtra(NVActivity.INTERACTION_SCOPE, z6);
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.nvContext, intent);
    }
}
