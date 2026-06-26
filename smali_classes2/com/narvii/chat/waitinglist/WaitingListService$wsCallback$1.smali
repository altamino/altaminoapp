.class final Lcom/narvii/chat/waitinglist/WaitingListService$wsCallback$1;
.super Ljava/lang/Object;
.source "WaitingListService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/waitinglist/WaitingListService;->wsCallback(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/narvii/util/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $resp:Lkotlin/jvm/functions/Function1;

.field final synthetic $result:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService$wsCallback$1;->$resp:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/narvii/chat/waitinglist/WaitingListService$wsCallback$1;->$result:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 151
    instance-of v0, p1, Lcom/narvii/util/ws/WsMessage;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService$wsCallback$1;->$resp:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 153
    check-cast p1, Lcom/narvii/util/ws/WsMessage;

    invoke-static {}, Lcom/narvii/chat/waitinglist/WaitingListService;->access$getDONE$cp()Lcom/narvii/util/Tag;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 154
    iget-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService$wsCallback$1;->$result:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService$wsCallback$1;->$result:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_1
    :goto_0
    return-void
.end method
