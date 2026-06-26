.class Lcom/narvii/user/favorite/AddFavoriteUserFragment$1;
.super Ljava/lang/Object;
.source "AddFavoriteUserFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/favorite/AddFavoriteUserFragment;->onPickUser(Lcom/narvii/model/User;)V
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
.field final synthetic this$0:Lcom/narvii/user/favorite/AddFavoriteUserFragment;

.field final synthetic val$u:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/user/favorite/AddFavoriteUserFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/user/favorite/AddFavoriteUserFragment$1;->this$0:Lcom/narvii/user/favorite/AddFavoriteUserFragment;

    iput-object p2, p0, Lcom/narvii/user/favorite/AddFavoriteUserFragment$1;->val$u:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 34
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/user/favorite/AddFavoriteUserFragment$1;->val$u:Lcom/narvii/model/User;

    const-string v1, "addFavoriteUser"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 36
    iget-object v0, p0, Lcom/narvii/user/favorite/AddFavoriteUserFragment$1;->this$0:Lcom/narvii/user/favorite/AddFavoriteUserFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 37
    iget-object p1, p0, Lcom/narvii/user/favorite/AddFavoriteUserFragment$1;->this$0:Lcom/narvii/user/favorite/AddFavoriteUserFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/favorite/AddFavoriteUserFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
