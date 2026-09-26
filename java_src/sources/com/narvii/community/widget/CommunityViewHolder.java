package com.narvii.community.widget;

import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityLayoutHelper;
import com.narvii.model.Community;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class CommunityViewHolder extends BaseViewHolder {

    @Nullable
    private CommunityLayoutHelper communityLayoutHelper;

    @NotNull
    private final NVContext context;
    private final boolean isDarkTheme;
    private final boolean useSpecialTypeFace;

    public /* synthetic */ CommunityViewHolder(View view, NVContext nVContext, boolean z6, boolean z10, CommunityLayoutHelper communityLayoutHelper, int i10, k kVar) {
        this(view, nVContext, (i10 & 4) != 0 ? false : z6, (i10 & 8) != 0 ? false : z10, (i10 & 16) != 0 ? null : communityLayoutHelper);
    }

    @Nullable
    public final CommunityLayoutHelper getCommunityLayoutHelper() {
        return this.communityLayoutHelper;
    }

    @NotNull
    public final NVContext getContext() {
        return this.context;
    }

    public final boolean getUseSpecialTypeFace() {
        return this.useSpecialTypeFace;
    }

    public final boolean isDarkTheme() {
        return this.isDarkTheme;
    }

    public final void setCommunityLayoutHelper(@Nullable CommunityLayoutHelper communityLayoutHelper) {
        this.communityLayoutHelper = communityLayoutHelper;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunityViewHolder(@NotNull View itemView, @NotNull NVContext context, boolean z6, boolean z10, @Nullable CommunityLayoutHelper communityLayoutHelper) {
        super(itemView);
        t.j(itemView, "itemView");
        t.j(context, "context");
        this.context = context;
        this.isDarkTheme = z6;
        this.useSpecialTypeFace = z10;
        this.communityLayoutHelper = communityLayoutHelper;
    }

    public final void bindCommunity(@Nullable Community community) {
        CommunityLayoutHelper communityLayoutHelper = this.communityLayoutHelper;
        if (communityLayoutHelper == null) {
            communityLayoutHelper = new CommunityLayoutHelper(this.context);
        }
        View itemView = this.itemView;
        t.i(itemView, "itemView");
        CommunityLayoutHelper.configCommunityCard$default(communityLayoutHelper, itemView, community, this.isDarkTheme, this.useSpecialTypeFace, null, 16, null);
    }
}
