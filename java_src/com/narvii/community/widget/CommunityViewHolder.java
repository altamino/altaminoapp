package com.narvii.community.widget;

import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityLayoutHelper;
import com.narvii.model.Community;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CommunityViewHolder.kt */
/* loaded from: classes2.dex */
public final class CommunityViewHolder extends BaseViewHolder {
    private CommunityLayoutHelper communityLayoutHelper;
    private final NVContext context;
    private final boolean isDarkTheme;
    private final boolean useSpecialTypeFace;

    public final NVContext getContext() {
        return this.context;
    }

    public final boolean isDarkTheme() {
        return this.isDarkTheme;
    }

    public final boolean getUseSpecialTypeFace() {
        return this.useSpecialTypeFace;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunityViewHolder(View itemView, NVContext context, boolean z, boolean z2, CommunityLayoutHelper communityLayoutHelper) {
        super(itemView);
        Intrinsics.checkParameterIsNotNull(itemView, "itemView");
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        this.isDarkTheme = z;
        this.useSpecialTypeFace = z2;
        this.communityLayoutHelper = communityLayoutHelper;
    }

    public /* synthetic */ CommunityViewHolder(View view, NVContext nVContext, boolean z, boolean z2, CommunityLayoutHelper communityLayoutHelper, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, nVContext, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? null : communityLayoutHelper);
    }

    public final CommunityLayoutHelper getCommunityLayoutHelper() {
        return this.communityLayoutHelper;
    }

    public final void setCommunityLayoutHelper(CommunityLayoutHelper communityLayoutHelper) {
        this.communityLayoutHelper = communityLayoutHelper;
    }

    public final void bindCommunity(Community community) {
        CommunityLayoutHelper communityLayoutHelper = this.communityLayoutHelper;
        if (communityLayoutHelper == null) {
            communityLayoutHelper = new CommunityLayoutHelper(this.context);
        }
        View itemView = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(itemView, "itemView");
        CommunityLayoutHelper.configCommunityCard$default(communityLayoutHelper, itemView, community, this.isDarkTheme, this.useSpecialTypeFace, null, 16, null);
    }
}
