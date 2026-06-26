.class Lcom/narvii/community/MyCommunityListService$5;
.super Ljava/lang/Object;
.source "MyCommunityListService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/MyCommunityListService;->dispatchReminderChanged()V
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


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$5;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$5;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-interface {p1, v0}, Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;->onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

    invoke-virtual {p0, p1}, Lcom/narvii/community/MyCommunityListService$5;->call(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    return-void
.end method
