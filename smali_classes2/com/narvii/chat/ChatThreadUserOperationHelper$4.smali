.class Lcom/narvii/chat/ChatThreadUserOperationHelper$4;
.super Ljava/lang/Object;
.source "ChatThreadUserOperationHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatThreadUserOperationHelper;->showRemoveFromChatThreadConfirmDialog(Ljava/lang/String;ZLcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatThreadUserOperationHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$isPublicChat:Z

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Ljava/lang/String;ZLcom/narvii/util/Callback;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;->this$0:Lcom/narvii/chat/ChatThreadUserOperationHelper;

    iput-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;->val$uid:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;->val$isPublicChat:Z

    iput-object p4, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 4

    .line 154
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 155
    iget-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;->this$0:Lcom/narvii/chat/ChatThreadUserOperationHelper;

    iget-object v1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;->val$uid:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;->val$isPublicChat:Z

    iget-object v3, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;->val$callback:Lcom/narvii/util/Callback;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->sendDeleteUserRequest(Ljava/lang/String;ZZLcom/narvii/util/Callback;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatThreadUserOperationHelper$4;->call(Ljava/lang/Boolean;)V

    return-void
.end method
