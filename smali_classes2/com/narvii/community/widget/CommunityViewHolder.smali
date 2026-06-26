.class public final Lcom/narvii/community/widget/CommunityViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "CommunityViewHolder.kt"


# instance fields
.field private communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

.field private final context:Lcom/narvii/app/NVContext;

.field private final isDarkTheme:Z

.field private final useSpecialTypeFace:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/narvii/app/NVContext;ZZLcom/narvii/community/CommunityLayoutHelper;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/narvii/community/widget/CommunityViewHolder;->context:Lcom/narvii/app/NVContext;

    iput-boolean p3, p0, Lcom/narvii/community/widget/CommunityViewHolder;->isDarkTheme:Z

    iput-boolean p4, p0, Lcom/narvii/community/widget/CommunityViewHolder;->useSpecialTypeFace:Z

    iput-object p5, p0, Lcom/narvii/community/widget/CommunityViewHolder;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lcom/narvii/app/NVContext;ZZLcom/narvii/community/CommunityLayoutHelper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/narvii/community/widget/CommunityViewHolder;-><init>(Landroid/view/View;Lcom/narvii/app/NVContext;ZZLcom/narvii/community/CommunityLayoutHelper;)V

    return-void
.end method


# virtual methods
.method public final bindCommunity(Lcom/narvii/model/Community;)V
    .locals 10

    .line 17
    iget-object v0, p0, Lcom/narvii/community/widget/CommunityViewHolder;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/narvii/community/CommunityLayoutHelper;

    iget-object v1, p0, Lcom/narvii/community/widget/CommunityViewHolder;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/community/CommunityLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    :goto_0
    move-object v2, v0

    .line 18
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/narvii/community/widget/CommunityViewHolder;->isDarkTheme:Z

    iget-boolean v6, p0, Lcom/narvii/community/widget/CommunityViewHolder;->useSpecialTypeFace:Z

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v9}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard$default(Lcom/narvii/community/CommunityLayoutHelper;Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final getCommunityLayoutHelper()Lcom/narvii/community/CommunityLayoutHelper;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/community/widget/CommunityViewHolder;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    return-object v0
.end method

.method public final getContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/narvii/community/widget/CommunityViewHolder;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getUseSpecialTypeFace()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/narvii/community/widget/CommunityViewHolder;->useSpecialTypeFace:Z

    return v0
.end method

.method public final isDarkTheme()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/narvii/community/widget/CommunityViewHolder;->isDarkTheme:Z

    return v0
.end method

.method public final setCommunityLayoutHelper(Lcom/narvii/community/CommunityLayoutHelper;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/narvii/community/widget/CommunityViewHolder;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    return-void
.end method
