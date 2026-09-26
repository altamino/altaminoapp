package com.narvii.community;

import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.ActiveInfo;
import com.narvii.model.Community;
import com.narvii.widget.NVImageView;
import com.narvii.widget.OnlineMemberBar;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class MasterCommunityLayoutHelper extends CommunityLayoutHelper {

    @NotNull
    private NVContext context;

    @NotNull
    public final NVContext getContext() {
        return this.context;
    }

    public final void setContext(@NotNull NVContext nVContext) {
        kotlin.jvm.internal.t.j(nVContext, "<set-?>");
        this.context = nVContext;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MasterCommunityLayoutHelper(@NotNull NVContext context) {
        super(context);
        kotlin.jvm.internal.t.j(context, "context");
        this.context = context;
    }

    @Override // com.narvii.community.CommunityLayoutHelper
    public void configCommunityCard(@NotNull View cell, @Nullable Community community, boolean z6, boolean z10, @Nullable NVImageView.OnImageChangedListener onImageChangedListener) {
        ActiveInfo activeInfo;
        ActiveInfo activeInfo2;
        kotlin.jvm.internal.t.j(cell, "cell");
        super.configCommunityCard(cell, community, z6, z10, onImageChangedListener);
        OnlineMemberBar onlineMemberBar = (OnlineMemberBar) cell.findViewById(R.id.online_bar);
        if (onlineMemberBar != null) {
            onlineMemberBar.setUserList((community == null || (activeInfo2 = community.activeInfo) == null) ? null : activeInfo2.latestActiveUserList, (community == null || (activeInfo = community.activeInfo) == null) ? 0 : activeInfo.memberCount);
        }
        if (onlineMemberBar == null) {
            return;
        }
        onlineMemberBar.setVisibility(8);
    }
}
