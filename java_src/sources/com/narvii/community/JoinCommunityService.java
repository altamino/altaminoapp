package com.narvii.community;

import android.app.Dialog;
import com.narvii.app.NVActivity;

/* JADX INFO: loaded from: classes10.dex */
public class JoinCommunityService implements IJoinCommunityService {
    @Override // com.narvii.community.IJoinCommunityService
    public Dialog showJoinCommunityDialog(NVActivity nVActivity, int i10) {
        return JoinCommunityDialog.showInnerJoinDialog(nVActivity, i10);
    }
}
