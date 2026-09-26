.class Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->withdraw(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;Z)V
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
.field final synthetic this$0:Lcom/narvii/poll/organizer/PollOptionActionListAdapter;

.field final synthetic val$blog:Ljava/lang/String;

.field final synthetic val$blogId:Ljava/lang/String;

.field final synthetic val$po:Lcom/narvii/model/PollOption;


# direct methods
.method constructor <init>(Lcom/narvii/poll/organizer/PollOptionActionListAdapter;Lcom/narvii/model/PollOption;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;->this$0:Lcom/narvii/poll/organizer/PollOptionActionListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;->val$po:Lcom/narvii/model/PollOption;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;->val$blogId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;->val$blog:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 2
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "delete"

    iget-object v1, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;->val$po:Lcom/narvii/model/PollOption;

    invoke-direct {p1, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;->val$blogId:Ljava/lang/String;

    iput-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;->this$0:Lcom/narvii/poll/organizer/PollOptionActionListAdapter;

    .line 3
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object p1, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;->val$blog:Ljava/lang/String;

    const-class v0, Lcom/narvii/model/Blog;

    .line 4
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iget-object v0, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;->val$po:Lcom/narvii/model/PollOption;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/narvii/model/Blog;->updatePollOptions(Lcom/narvii/model/PollOption;Z)V

    .line 6
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "edit"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object p1, p0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;->this$0:Lcom/narvii/poll/organizer/PollOptionActionListAdapter;

    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
