.class Lcom/narvii/sharedfolder/SharedFolderHelper$6;
.super Ljava/lang/Object;
.source "SharedFolderHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderHelper;->deletePhotos(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$6;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$6;->val$nvContext:Lcom/narvii/app/NVContext;

    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$6;->val$list:Ljava/util/List;

    iput-object p4, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$6;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 286
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$6;->val$nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 287
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0}, Lcom/narvii/notification/Notification;-><init>()V

    const-string v1, "delete"

    .line 288
    iput-object v1, v0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 289
    new-instance v1, Lcom/narvii/sharedfolder/PhotoDelete;

    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$6;->val$list:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/narvii/sharedfolder/PhotoDelete;-><init>(Ljava/util/List;)V

    iput-object v1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 290
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 291
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$6;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 292
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 283
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper$6;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
