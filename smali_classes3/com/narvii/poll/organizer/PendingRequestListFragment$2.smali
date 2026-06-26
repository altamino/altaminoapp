.class Lcom/narvii/poll/organizer/PendingRequestListFragment$2;
.super Ljava/lang/Object;
.source "PendingRequestListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poll/organizer/PendingRequestListFragment;->approve(Lcom/narvii/model/PollOption;Z)V
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
.field final synthetic this$0:Lcom/narvii/poll/organizer/PendingRequestListFragment;

.field final synthetic val$po:Lcom/narvii/model/PollOption;


# direct methods
.method constructor <init>(Lcom/narvii/poll/organizer/PendingRequestListFragment;Lcom/narvii/model/PollOption;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$2;->this$0:Lcom/narvii/poll/organizer/PendingRequestListFragment;

    iput-object p2, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$2;->val$po:Lcom/narvii/model/PollOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 102
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$2;->val$po:Lcom/narvii/model/PollOption;

    const-string v1, "new"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 103
    iget-object v0, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$2;->this$0:Lcom/narvii/poll/organizer/PendingRequestListFragment;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$2;->this$0:Lcom/narvii/poll/organizer/PendingRequestListFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/organizer/PendingRequestListFragment$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
