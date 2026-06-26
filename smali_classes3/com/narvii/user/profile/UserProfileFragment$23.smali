.class Lcom/narvii/user/profile/UserProfileFragment$23;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->tagFavorites(Ljava/util/List;)V
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

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/String;)V
    .locals 0

    .line 3157
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$23;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iput-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$23;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 3160
    new-instance p1, Lcom/narvii/model/ItemCategory;

    invoke-direct {p1}, Lcom/narvii/model/ItemCategory;-><init>()V

    .line 3161
    iget-object v0, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    .line 3162
    new-instance v0, Lcom/narvii/model/User;

    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    iput-object v0, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    .line 3164
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$23;->val$uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 3165
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 3166
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$23;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 3157
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$23;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
