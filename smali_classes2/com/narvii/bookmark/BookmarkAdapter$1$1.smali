.class Lcom/narvii/bookmark/BookmarkAdapter$1$1;
.super Ljava/lang/Object;
.source "BookmarkAdapter.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/bookmark/BookmarkAdapter$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/narvii/bookmark/BookmarkAdapter$1;


# direct methods
.method constructor <init>(Lcom/narvii/bookmark/BookmarkAdapter$1;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/bookmark/BookmarkAdapter$1$1;->this$1:Lcom/narvii/bookmark/BookmarkAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 90
    iget-object p1, p0, Lcom/narvii/bookmark/BookmarkAdapter$1$1;->this$1:Lcom/narvii/bookmark/BookmarkAdapter$1;

    iget-object p1, p1, Lcom/narvii/bookmark/BookmarkAdapter$1;->this$0:Lcom/narvii/bookmark/BookmarkAdapter;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 91
    iget-object v0, p0, Lcom/narvii/bookmark/BookmarkAdapter$1$1;->this$1:Lcom/narvii/bookmark/BookmarkAdapter$1;

    iget-object v0, v0, Lcom/narvii/bookmark/BookmarkAdapter$1;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    const/16 v1, 0x130

    .line 92
    iput v1, v0, Lcom/narvii/model/Feed;->status:I

    .line 93
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string/jumbo v2, "update"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    invoke-virtual {p1, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 94
    iget-object p1, p0, Lcom/narvii/bookmark/BookmarkAdapter$1$1;->this$1:Lcom/narvii/bookmark/BookmarkAdapter$1;

    iget-object p1, p1, Lcom/narvii/bookmark/BookmarkAdapter$1;->this$0:Lcom/narvii/bookmark/BookmarkAdapter;

    invoke-static {p1}, Lcom/narvii/bookmark/BookmarkAdapter;->access$000(Lcom/narvii/bookmark/BookmarkAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f03aa

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/bookmark/BookmarkAdapter$1$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
