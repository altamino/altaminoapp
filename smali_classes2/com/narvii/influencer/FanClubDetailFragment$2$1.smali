.class Lcom/narvii/influencer/FanClubDetailFragment$2$1;
.super Ljava/lang/Object;
.source "FanClubDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubDetailFragment$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/narvii/influencer/FanClubDetailFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FanClubDetailFragment$2;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$2$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 252
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$2$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$2;

    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    const-string v0, "account"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 253
    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment$2$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$2;

    iget-object v0, v0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object v0, v0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget v1, v0, Lcom/narvii/influencer/FanClub;->ndcId:I

    invoke-virtual {p1, v1, v0}, Lcom/narvii/account/AccountService;->deleteFanClub(ILcom/narvii/influencer/FanClub;)V

    .line 254
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$2$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$2;

    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 255
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment$2$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$2;

    iget-object v0, v0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object v0, v0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 256
    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment$2$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$2;

    iget-object v0, v0, Lcom/narvii/influencer/FanClubDetailFragment$2;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 257
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 249
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/influencer/FanClubDetailFragment$2$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
