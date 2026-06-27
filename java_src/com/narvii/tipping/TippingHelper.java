package com.narvii.tipping;

import android.content.Intent;
import com.narvii.account.AccountService;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.CommunityObjectInGlobal;
import com.narvii.model.Feed;
import com.narvii.model.Tippable;
import com.narvii.model.User;
import com.narvii.monetization.store.TippingConfirmDialog;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.io.Serializable;

/* loaded from: classes3.dex */
public class TippingHelper {
    private AccountService accountService;
    NVContext nvContext;
    String source;

    public TippingHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.accountService = (AccountService) nVContext.getService("account");
    }

    public TippingHelper source(String str) {
        this.source = str;
        return this;
    }

    public void openTippingList(Tippable tippable, Community community) {
        if (tippable instanceof CommunityObjectInGlobal) {
            openTippingList(tippable, ((CommunityObjectInGlobal) tippable).getNdcId() == 0, community);
        } else {
            openTippingList(tippable, Utils.isGlobalInteractionScope(this.nvContext), community);
        }
    }

    public void openTippingList(Tippable tippable, boolean z, Community community) {
        if (tippable == null) {
            return;
        }
        Serializable serializable = null;
        if (tippable instanceof Feed) {
            serializable = Feed.class;
        } else if (tippable instanceof ChatThread) {
            serializable = ChatThread.class;
        }
        if (serializable == null) {
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(isTipAuthor(tippable) ? TippingAuthorListFragment.class : TippingViewerListFragment.class);
        intent.putExtra("object", JacksonUtils.writeAsString(tippable));
        intent.putExtra("objectClass", serializable);
        intent.putExtra("community", JacksonUtils.writeAsString(community));
        intent.putExtra("Source", this.source);
        if (tippable instanceof CommunityObjectInGlobal) {
            intent.putExtra("__communityId", ((CommunityObjectInGlobal) tippable).getNdcId());
        }
        intent.putExtra(NVActivity.INTERACTION_SCOPE, z);
        this.nvContext.startActivity(intent);
    }

    public boolean isTipAuthor(Tippable tippable) {
        User tipAuthor;
        return (tippable == null || (tipAuthor = tippable.getTipAuthor()) == null || !Utils.isEqualsNotNull(this.accountService.getUserId(), tipAuthor.id())) ? false : true;
    }

    public TippingConfirmDialog openTipDialog(Tippable tippable, TippingConfirmDialog.TipSuccessListener tipSuccessListener) {
        if (tippable == null) {
            return null;
        }
        TippingConfirmDialog tippingConfirmDialog = new TippingConfirmDialog(this.nvContext, tippable);
        tippingConfirmDialog.source = this.source;
        tippingConfirmDialog.setTipSuccessListener(tipSuccessListener);
        tippingConfirmDialog.show();
        return tippingConfirmDialog;
    }
}
