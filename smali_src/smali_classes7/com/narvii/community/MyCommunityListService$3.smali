.class Lcom/narvii/community/MyCommunityListService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/MyCommunityListService;->dispatchSuggestListChanged(Lcom/narvii/master/CommunityListResponse;)V
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

.field final synthetic val$resp:Lcom/narvii/master/CommunityListResponse;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$3;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/community/MyCommunityListService$3;->val$resp:Lcom/narvii/master/CommunityListResponse;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$3;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService$3;->val$resp:Lcom/narvii/master/CommunityListResponse;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;->onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

    invoke-virtual {p0, p1}, Lcom/narvii/community/MyCommunityListService$3;->call(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    return-void
.end method
