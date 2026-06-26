.class Lcom/narvii/master/VisitorLaunchCommunityHelper$1;
.super Ljava/lang/Object;
.source "VisitorLaunchCommunityHelper.java"

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

    .line 75
    iput-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

    iput-object p2, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    iput-object p3, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$strategyInfo:Ljava/lang/String;

    iput p4, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$cid:I

    iput-object p5, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$c:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    sput-object p1, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 80
    iget-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$strategyInfo:Ljava/lang/String;

    sput-object p1, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 82
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

    iget-object v0, v0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/amino/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    iget v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$cid:I

    const-string v1, "__communityId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "__interactionScope"

    .line 84
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "__visitorMode"

    .line 85
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0x7f010026

    const-string v1, "customFinishAnimIn"

    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v0, 0x7f010027

    const-string v1, "customFinishAnimOut"

    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$c:Lcom/narvii/model/Community;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__community"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

    iget-object v0, v0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    .line 92
    iget-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

    iget-object p1, p1, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "recentCommunities"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/RecentCommunityHelper;

    .line 93
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->val$c:Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/community/RecentCommunityHelper;->addRecent(Lcom/narvii/model/Community;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
