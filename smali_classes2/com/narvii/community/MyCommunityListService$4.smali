.class Lcom/narvii/community/MyCommunityListService$4;
.super Ljava/lang/Object;
.source "MyCommunityListService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/MyCommunityListService;->dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/MyCommunityListService;

.field final synthetic val$refreshFlags:Ljava/lang/Integer;

.field final synthetic val$resp:Lcom/narvii/community/MyCommunityListResponse;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$4;->this$0:Lcom/narvii/community/MyCommunityListService;

    iput-object p2, p0, Lcom/narvii/community/MyCommunityListService$4;->val$resp:Lcom/narvii/community/MyCommunityListResponse;

    iput-object p3, p0, Lcom/narvii/community/MyCommunityListService$4;->val$refreshFlags:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$4;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService$4;->val$resp:Lcom/narvii/community/MyCommunityListResponse;

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$4;->val$refreshFlags:Ljava/lang/Integer;

    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;->onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 174
    check-cast p1, Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

    invoke-virtual {p0, p1}, Lcom/narvii/community/MyCommunityListService$4;->call(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    return-void
.end method
