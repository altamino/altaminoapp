.class final Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteChatMessageRequest$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "ChatRequestHelper.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteChatMessageRequest(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V
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
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $message$inlined:Lcom/narvii/model/ChatMessage;

.field final synthetic $threadId$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/chat/util/ChatRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/model/ChatMessage;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteChatMessageRequest$$inlined$let$lambda$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    iput-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteChatMessageRequest$$inlined$let$lambda$1;->$message$inlined:Lcom/narvii/model/ChatMessage;

    iput-object p3, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteChatMessageRequest$$inlined$let$lambda$1;->$threadId$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 114
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteChatMessageRequest$$inlined$let$lambda$1;->$message$inlined:Lcom/narvii/model/ChatMessage;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 115
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteChatMessageRequest$$inlined$let$lambda$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 116
    invoke-static {v0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteChatMessageRequest$$inlined$let$lambda$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
