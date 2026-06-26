.class Lcom/narvii/chat/detail/ThreadMemberListFragment$1;
.super Ljava/lang/Object;
.source "ThreadMemberListFragment.java"

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

    .line 331
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->val$users:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 334
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$300(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$300(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->val$users:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->addUsers(Ljava/util/List;)V

    .line 337
    :cond_0
    new-instance p1, Lcom/narvii/notification/Notification;

    invoke-direct {p1}, Lcom/narvii/notification/Notification;-><init>()V

    .line 338
    new-instance v0, Lcom/narvii/chat/util/ThreadNotification;

    invoke-direct {v0}, Lcom/narvii/chat/util/ThreadNotification;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$000(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/chat/util/ThreadNotification;->threadId:Ljava/lang/String;

    const/4 v1, 0x2

    .line 340
    iput v1, v0, Lcom/narvii/chat/util/ThreadNotification;->action:I

    .line 341
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->val$users:Ljava/util/List;

    iput-object v1, v0, Lcom/narvii/chat/util/ThreadNotification;->targetObj:Ljava/lang/Object;

    const-string/jumbo v1, "update"

    .line 342
    iput-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 343
    iput-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 331
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
