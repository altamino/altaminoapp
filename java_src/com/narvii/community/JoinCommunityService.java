package com.narvii.community;

import android.app.Dialog;
import com.narvii.app.NVActivity;

/* loaded from: classes2.dex */
public class JoinCommunityService implements IJoinCommunityService {
    @Override // com.narvii.community.IJoinCommunityService
    public Dialog showJoinCommunityDialog(NVActivity nVActivity, int i) {
        return JoinCommunityDialog.showInnerJoinDialog(nVActivity, i);
    }
}
