.class Lcom/narvii/amino/HomeFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 152
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    const-string v0, "config"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 153
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-static {v0}, Lcom/narvii/amino/HomeFragment;->access$000(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "id"

    .line 154
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-ne v2, p1, :cond_a

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x506d0690

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v1, -0x42d087cc

    if-eq v2, v1, :cond_1

    const v1, 0xdf65657

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.narvii.action.FEATURE_USER_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    :cond_3
    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, v5, :cond_5

    if-eq p2, v4, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_a

    .line 183
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateAccountInfo()V

    goto :goto_2

    .line 179
    :cond_5
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-static {p1}, Lcom/narvii/amino/HomeFragment;->access$200(Lcom/narvii/amino/HomeFragment;)V

    goto :goto_2

    .line 157
    :cond_6
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object p1, p1, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->getHomePageList()Ljava/util/List;

    move-result-object p1

    .line 158
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object p2, p2, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 159
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-static {p2}, Lcom/narvii/amino/HomeFragment;->access$100(Lcom/narvii/amino/HomeFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-static {p1}, Lcom/narvii/amino/HomeFragment;->access$100(Lcom/narvii/amino/HomeFragment;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 163
    :cond_7
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object p1, p1, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedMemberEnabled()Z

    move-result p1

    .line 164
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment$1;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-boolean v1, p2, Lcom/narvii/amino/HomeFragment;->featureMemberEnabled:Z

    if-eq p1, v1, :cond_9

    .line 165
    iput-boolean p1, p2, Lcom/narvii/amino/HomeFragment;->featureMemberEnabled:Z

    if-eqz p1, :cond_8

    .line 167
    invoke-static {p2}, Lcom/narvii/amino/HomeFragment;->access$200(Lcom/narvii/amino/HomeFragment;)V

    goto :goto_1

    .line 169
    :cond_8
    invoke-static {p2}, Lcom/narvii/amino/HomeFragment;->access$300(Lcom/narvii/amino/HomeFragment;)V

    :cond_9
    :goto_1
    if-eqz v0, :cond_a

    .line 173
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->reConfigNormalItemViews()V

    .line 174
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateCommunityInfo()V

    :cond_a
    :goto_2
    return-void
.end method
