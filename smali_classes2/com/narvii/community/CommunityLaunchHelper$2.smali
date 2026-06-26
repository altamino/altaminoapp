.class Lcom/narvii/community/CommunityLaunchHelper$2;
.super Ljava/lang/Object;
.source "CommunityLaunchHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/CommunityLaunchHelper;->tryJoinCommunity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityLaunchHelper;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$2;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 529
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 530
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$2;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$000(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/model/Community;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 531
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper$2;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {v0}, Lcom/narvii/community/CommunityLaunchHelper;->access$000(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/model/Community;

    move-result-object v0

    const-string v1, "new"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 532
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper$2;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {v0}, Lcom/narvii/community/CommunityLaunchHelper;->access$100(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 533
    invoke-static {v0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 535
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$2;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$200(Lcom/narvii/community/CommunityLaunchHelper;)V

    goto :goto_0

    .line 537
    :cond_1
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$2;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/community/CommunityLaunchHelper;->access$300(Lcom/narvii/community/CommunityLaunchHelper;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 526
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityLaunchHelper$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
