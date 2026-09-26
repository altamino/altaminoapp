.class Lcom/narvii/chat/ChatThreadUserOperationHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatThreadUserOperationHelper;->sendLeaveThreadRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatThreadUserOperationHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$chatThread:Lcom/narvii/model/ChatThread;

.field final synthetic val$chatType:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/Callback;Lcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->this$0:Lcom/narvii/chat/ChatThreadUserOperationHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->val$chatThread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->val$chatType:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->val$uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    iget-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->val$chatThread:Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->this$0:Lcom/narvii/chat/ChatThreadUserOperationHelper;

    .line 3
    iget-object p1, p1, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->leaveChat:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "chatType"

    iget-object v1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->val$chatType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    iget-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->val$chatThread:Lcom/narvii/model/ChatThread;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    const/4 v0, 0x0

    .line 5
    iput v0, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 6
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    iget-object v2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->val$uid:Ljava/lang/String;

    .line 10
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "delete"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->this$0:Lcom/narvii/chat/ChatThreadUserOperationHelper;

    .line 13
    iget-object p1, p1, Lcom/narvii/chat/ChatThreadUserOperationHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatThreadUserOperationHelper$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
