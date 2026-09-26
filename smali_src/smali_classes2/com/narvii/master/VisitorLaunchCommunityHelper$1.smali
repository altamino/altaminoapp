.class Lcom/narvii/master/VisitorLaunchCommunityHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/VisitorLaunchCommunityHelper;->launchCommunity(Lcom/narvii/model/Community;Landroid/view/View;Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

.field final synthetic val$c:Lcom/narvii/model/Community;

.field final synthetic val$cid:I

.field final synthetic val$pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

.field final synthetic val$strategyInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/master/VisitorLaunchCommunityHelper;Lcom/narvii/logging/PageRefererInfo;Ljava/lang/String;ILcom/narvii/model/Community;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$strategyInfo:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$cid:I

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$c:Lcom/narvii/model/Community;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 3
    sput-object p1, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    iget-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$strategyInfo:Ljava/lang/String;

    .line 4
    sput-object p1, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 5
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

    iget-object v0, v0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/amino/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "__communityId"

    iget v1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$cid:I

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "__interactionScope"

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "__visitorMode"

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "customFinishAnimIn"

    const v1, 0x7f010034

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "customFinishAnimOut"

    const v1, 0x7f010035

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$c:Lcom/narvii/model/Community;

    .line 11
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__community"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

    .line 12
    iget-object v0, v0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-static {v0, p1}, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

    .line 13
    iget-object p1, p1, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "recentCommunities"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/RecentCommunityHelper;

    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$c:Lcom/narvii/model/Community;

    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/community/RecentCommunityHelper;->addRecent(Lcom/narvii/model/Community;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
