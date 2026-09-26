.class final Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MoreViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "itemView"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/topic/adapter/l;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/narvii/topic/adapter/l;-><init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    return-void
.end method

.method private static final _init_$lambda$0(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;ZZ)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->access$getContext$p$s-1726681790(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;)Lcom/narvii/app/NVContext;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "access$getContext$p$s-1726681790(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->access$jumpToMyCommunityPage(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V

    .line 26
    return-void
.end method

.method public static synthetic a(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;->_init_$lambda$0(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Landroid/view/View;)V

    return-void
.end method
