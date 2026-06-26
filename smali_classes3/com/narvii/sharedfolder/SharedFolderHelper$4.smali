.class Lcom/narvii/sharedfolder/SharedFolderHelper$4;
.super Ljava/lang/Object;
.source "SharedFolderHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderHelper;->addPhotosToAlbum(Ljava/lang/String;Ljava/util/Collection;Lcom/narvii/util/Callback;)V
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

.field final synthetic val$albumId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$4;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$4;->val$albumId:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$4;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 236
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$4;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f008e

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 237
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$4;->val$albumId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$4;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 239
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0}, Lcom/narvii/notification/Notification;-><init>()V

    .line 240
    new-instance v1, Lcom/narvii/sharedfolder/PhotoAdd;

    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$4;->val$albumId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/narvii/sharedfolder/PhotoAdd;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    const-string v1, "new"

    .line 241
    iput-object v1, v0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 242
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$4;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 246
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 233
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper$4;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
