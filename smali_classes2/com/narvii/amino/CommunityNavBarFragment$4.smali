.class Lcom/narvii/amino/CommunityNavBarFragment$4;
.super Ljava/lang/Object;
.source "CommunityNavBarFragment.java"

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

    .line 190
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 193
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->access$100(Lcom/narvii/amino/CommunityNavBarFragment;)Z

    move-result p1

    const-string v0, "__communityId"

    if-eqz p1, :cond_0

    .line 194
    sget-object p1, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->HEADLINE_ENTER:Lcom/narvii/util/statistics/TmpValue;

    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    const-string v1, "config"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 197
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-static {v1}, Lcom/narvii/amino/CommunityNavBarFragment;->access$200(Lcom/narvii/amino/CommunityNavBarFragment;)Lcom/narvii/community/CommunityService;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v4

    .line 198
    new-instance v2, Lcom/narvii/community/CommunityLaunchHelper;

    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    const-string v1, "Source"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$4;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    return-void
.end method
