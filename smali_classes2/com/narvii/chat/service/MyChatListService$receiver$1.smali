.class public final Lcom/narvii/chat/service/MyChatListService$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "MyChatListService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/service/MyChatListService;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/service/MyChatListService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/service/MyChatListService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService$receiver$1;->this$0:Lcom/narvii/chat/service/MyChatListService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/narvii/chat/service/MyChatListService$receiver$1;->this$0:Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p1}, Lcom/narvii/chat/service/MyChatListService;->getAdapter()Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    :cond_0
    return-void
.end method
