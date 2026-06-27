package com.narvii.community;

import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.ActiveInfo;
import com.narvii.model.Community;
import com.narvii.widget.NVImageView;
import com.narvii.widget.OnlineMemberBar;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MasterCommunityLayoutHelper.kt */
/* loaded from: classes2.dex */
public final class MasterCommunityLayoutHelper extends CommunityLayoutHelper {
    private NVContext context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MasterCommunityLayoutHelper(NVContext context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
    }

    public final NVContext getContext() {
        return this.context;
    }

    public final void setContext(NVContext nVContext) {
        Intrinsics.checkParameterIsNotNull(nVContext, "<set-?>");
        this.context = nVContext;
    }

    @Override // com.narvii.community.CommunityLayoutHelper
    public void configCommunityCard(View cell, Community community, boolean z, boolean z2, NVImageView.OnImageChangedListener onImageChangedListener) {
        ActiveInfo activeInfo;
        ActiveInfo activeInfo2;
        Intrinsics.checkParameterIsNotNull(cell, "cell");
        super.configCommunityCard(cell, community, z, z2, onImageChangedListener);
        OnlineMemberBar onlineMemberBar = (OnlineMemberBar) cell.findViewById(R.id.online_bar);
        if (onlineMemberBar != null) {
            onlineMemberBar.setUserList((community == null || (activeInfo2 = community.activeInfo) == null) ? null : activeInfo2.latestActiveUserList, (community == null || (activeInfo = community.activeInfo) == null) ? 0 : activeInfo.memberCount);
        }
        if (onlineMemberBar != null) {
            onlineMemberBar.setVisibility(8);
        }
    }
}
