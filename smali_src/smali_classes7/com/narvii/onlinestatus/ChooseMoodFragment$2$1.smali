.class Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/ChooseMoodFragment$2;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    .line 2
    iget-object v0, v0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 3
    iget-object v1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/narvii/account/AccountService;->updateOnlineStatus(ILjava/lang/String;Z)V

    .line 4
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 5
    iput v2, v1, Lcom/narvii/model/User;->onlineStatus:I

    iget-object v3, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    .line 6
    iget-object v3, v3, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    iget-object v3, v3, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    iput-object v3, v1, Lcom/narvii/model/User;->moodSticker:Lcom/narvii/model/Sticker;

    .line 7
    iget-object p1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    .line 8
    iget-object p1, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    iget-object p1, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    invoke-static {p1}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    .line 9
    iget-object p1, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    iget-object p1, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedStickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p1, :cond_3

    .line 10
    iget v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionType:I

    if-ne v0, v2, :cond_0

    const-string p1, "Sticker Sets"

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const-string p1, "Custom Sticker"

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const-string p1, "Shared Sticker"

    goto :goto_0

    :cond_2
    const-string v0, "mood"

    .line 11
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Emoji Sticker"

    goto :goto_0

    :cond_3
    const-string p1, "Sticker"

    :goto_0
    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    .line 12
    iget-object v0, v0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    const-string v3, "statistics"

    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    const-string v3, "Add a mood"

    .line 13
    invoke-interface {v0, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v0

    const-string v3, "Add a mood Total"

    invoke-virtual {v0, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v0

    const-string v3, "Type"

    .line 14
    invoke-virtual {v0, v3, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Online Mood"

    .line 15
    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_4
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    .line 16
    iget-object p1, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    const-string v0, "liveLayer"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerService;->refreshOnlineMembers()V

    .line 18
    :cond_5
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "update"

    invoke-direct {p1, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    .line 19
    iget-object v0, v0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    .line 21
    iget-object p1, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
