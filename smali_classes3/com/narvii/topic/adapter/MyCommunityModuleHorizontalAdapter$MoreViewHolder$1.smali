.class final Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder$1;
.super Ljava/lang/Object;
.source "MyCommunityModuleHorizontalAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;-><init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 169
    iget-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;

    iget-object p1, p1, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;ZZ)V

    .line 170
    iget-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;

    iget-object p1, p1, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    invoke-static {p1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->access$getContext$p(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->access$jumpToMyCommunityPage(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V

    return-void
.end method
