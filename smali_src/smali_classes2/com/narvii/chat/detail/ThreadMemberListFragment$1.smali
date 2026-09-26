.class Lcom/narvii/chat/detail/ThreadMemberListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadMemberListFragment;->onActivityResult(IILandroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

.field final synthetic val$users:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadMemberListFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->val$users:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 2
    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->v(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->v(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->val$users:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->addUsers(Ljava/util/List;)V

    .line 4
    :cond_0
    new-instance p1, Lcom/narvii/notification/Notification;

    invoke-direct {p1}, Lcom/narvii/notification/Notification;-><init>()V

    .line 5
    new-instance v0, Lcom/narvii/chat/util/ThreadNotification;

    invoke-direct {v0}, Lcom/narvii/chat/util/ThreadNotification;-><init>()V

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 6
    invoke-static {v1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->u(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/chat/util/ThreadNotification;->threadId:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/narvii/chat/util/ThreadNotification;->action:I

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->val$users:Ljava/util/List;

    iput-object v1, v0, Lcom/narvii/chat/util/ThreadNotification;->targetObj:Ljava/lang/Object;

    const-string v1, "update"

    iput-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    iput-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
