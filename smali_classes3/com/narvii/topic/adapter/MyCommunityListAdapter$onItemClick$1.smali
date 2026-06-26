.class final Lcom/narvii/topic/adapter/MyCommunityListAdapter$onItemClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MyCommunityListAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/MyCommunityListAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Ljava/lang/Object;

.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onItemClick$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onItemClick$1;->$item:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onItemClick$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onItemClick$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onItemClick$1;->$item:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->onEnterCommunity(Lcom/narvii/model/Community;)V

    return-void
.end method
