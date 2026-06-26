.class Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3$1;
.super Ljava/lang/Object;
.source "SharedAlbumInfoPostActivity.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 247
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    const-string v0, "album"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/SharedAlbum;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/SharedAlbum;

    if-nez p1, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 252
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "delete"

    invoke-direct {v1, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 253
    invoke-virtual {v0, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 255
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 256
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 244
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
