.class Lcom/narvii/user/profile/UserProfileFragment$22;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->addToFavoriteMembers()V
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
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;

.field final synthetic val$u:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 3040
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$22;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iput-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$22;->val$u:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 3043
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$22;->val$u:Lcom/narvii/model/User;

    const-string v1, "addFavoriteUser"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 3044
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$22;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 3040
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$22;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
