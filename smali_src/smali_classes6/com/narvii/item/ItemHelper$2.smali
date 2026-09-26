.class Lcom/narvii/item/ItemHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/ItemHelper;->addToCategory(Ljava/util/List;Ljava/lang/String;Lcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/item/ItemHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/item/ItemHelper;Lcom/narvii/util/Callback;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/ItemHelper$2;->this$0:Lcom/narvii/item/ItemHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/item/ItemHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/item/ItemHelper$2;->val$itemId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/item/ItemHelper$2;->val$list:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 5

    iget-object p1, p0, Lcom/narvii/item/ItemHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/item/ItemHelper$2;->val$itemId:Ljava/lang/String;

    .line 2
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/item/ItemHelper$2;->this$0:Lcom/narvii/item/ItemHelper;

    .line 3
    iget-object p1, p1, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120098

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    iget-object p1, p0, Lcom/narvii/item/ItemHelper$2;->val$list:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/item/ItemHelper$2;->val$list:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ItemCategory;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/narvii/model/ItemCategory;

    invoke-direct {p1}, Lcom/narvii/model/ItemCategory;-><init>()V

    .line 7
    :goto_0
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v2, "update"

    invoke-direct {v0, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 8
    new-instance p1, Lcom/narvii/notification/Notification;

    new-instance v3, Lcom/narvii/item/ItemPinObject;

    iget-object v4, p0, Lcom/narvii/item/ItemHelper$2;->val$itemId:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/narvii/item/ItemPinObject;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v2, v3}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v1, p0, Lcom/narvii/item/ItemHelper$2;->this$0:Lcom/narvii/item/ItemHelper;

    .line 9
    iget-object v1, v1, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 10
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/item/ItemHelper$2;->this$0:Lcom/narvii/item/ItemHelper;

    .line 11
    iget-object v1, v1, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object v0, p0, Lcom/narvii/item/ItemHelper$2;->this$0:Lcom/narvii/item/ItemHelper;

    .line 12
    iget-object v0, v0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object p1, p0, Lcom/narvii/item/ItemHelper$2;->this$0:Lcom/narvii/item/ItemHelper;

    .line 13
    iget-object p1, p1, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const-string v0, "statistics"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string v0, "User pins a favorite to their profile"

    .line 14
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Pinned Official Favorites Total"

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/item/ItemHelper$2;->this$0:Lcom/narvii/item/ItemHelper;

    iget-object v0, v0, Lcom/narvii/item/ItemHelper;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/item/ItemHelper$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
