.class public final Lcom/narvii/community/widget/CommunityViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isDarkTheme:Z

.field private final useSpecialTypeFace:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/narvii/app/NVContext;ZZLcom/narvii/community/CommunityLayoutHelper;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/community/CommunityLayoutHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/narvii/community/widget/CommunityViewHolder;->context:Lcom/narvii/app/NVContext;

    iput-boolean p3, p0, Lcom/narvii/community/widget/CommunityViewHolder;->isDarkTheme:Z

    iput-boolean p4, p0, Lcom/narvii/community/widget/CommunityViewHolder;->useSpecialTypeFace:Z

    iput-object p5, p0, Lcom/narvii/community/widget/CommunityViewHolder;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lcom/narvii/app/NVContext;ZZLcom/narvii/community/CommunityLayoutHelper;ILkotlin/jvm/internal/k;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move v5, v0

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

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/narvii/community/widget/CommunityViewHolder;-><init>(Landroid/view/View;Lcom/narvii/app/NVContext;ZZLcom/narvii/community/CommunityLayoutHelper;)V

    return-void
.end method


# virtual methods
.method public final bindCommunity(Lcom/narvii/model/Community;)V
    .locals 10
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/widget/CommunityViewHolder;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/community/CommunityLayoutHelper;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/community/widget/CommunityViewHolder;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/community/CommunityLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 12
    :cond_0
    move-object v2, v0

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    .line 16
    const-string v0, "itemView"

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    iget-boolean v5, p0, Lcom/narvii/community/widget/CommunityViewHolder;->isDarkTheme:Z

    .line 22
    .line 23
    iget-boolean v6, p0, Lcom/narvii/community/widget/CommunityViewHolder;->useSpecialTypeFace:Z

    .line 24
    const/4 v7, 0x0

    .line 25
    .line 26
    const/16 v8, 0x10

    .line 27
    const/4 v9, 0x0

    .line 28
    move-object v4, p1

    .line 29
    .line 30
    .line 31
    invoke-static/range {v2 .. v9}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard$default(Lcom/narvii/community/CommunityLayoutHelper;Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;ILjava/lang/Object;)V

    .line 32
    return-void
.end method

.method public final getCommunityLayoutHelper()Lcom/narvii/community/CommunityLayoutHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/widget/CommunityViewHolder;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    return-object v0
.end method

.method public final getContext()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/widget/CommunityViewHolder;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getUseSpecialTypeFace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/community/widget/CommunityViewHolder;->useSpecialTypeFace:Z

    return v0
.end method

.method public final isDarkTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/community/widget/CommunityViewHolder;->isDarkTheme:Z

    return v0
.end method

.method public final setCommunityLayoutHelper(Lcom/narvii/community/CommunityLayoutHelper;)V
    .locals 0
    .param p1    # Lcom/narvii/community/CommunityLayoutHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/community/widget/CommunityViewHolder;->communityLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper;

    return-void
.end method
