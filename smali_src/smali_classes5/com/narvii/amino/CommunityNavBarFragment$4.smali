.class Lcom/narvii/amino/CommunityNavBarFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/CommunityNavBarFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->q(Lcom/narvii/amino/CommunityNavBarFragment;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    const-string v0, "__communityId"

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->HEADLINE_ENTER:Lcom/narvii/util/statistics/TmpValue;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 28
    .line 29
    const-string v1, "config"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/narvii/amino/CommunityNavBarFragment;->o(Lcom/narvii/amino/CommunityNavBarFragment;)Lcom/narvii/community/CommunityService;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 45
    move-result p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    new-instance v2, Lcom/narvii/community/CommunityLaunchHelper;

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 54
    .line 55
    const-string v1, "Source"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, p1, v1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 68
    move-result v3

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x0

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {v2 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 78
    return-void
.end method
