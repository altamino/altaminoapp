.class Lcom/narvii/drawer/DrawerHost$23;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1968
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1972
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "Left Side Panel"

    const-string v2, "id"

    const-string v3, "Source"

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 2000
    :sswitch_0
    const-class p1, Lcom/narvii/achievements/AchievementsFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2001
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2003
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "needFetchData"

    .line 2004
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2005
    iget-object v2, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mediaList"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2006
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2007
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2008
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2016
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    iput-boolean v5, p1, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    .line 2017
    new-instance p1, Lcom/narvii/drawer/DrawerHost$23$1;

    invoke-direct {p1, p0}, Lcom/narvii/drawer/DrawerHost$23$1;-><init>(Lcom/narvii/drawer/DrawerHost$23;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_2

    .line 2037
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v0, 0x7f090afb

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2038
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2039
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1500(Lcom/narvii/drawer/DrawerHost;)V

    goto/16 :goto_2

    .line 2041
    :cond_0
    const-class p1, Lcom/narvii/achievements/AchievementsFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2042
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2043
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1977
    :sswitch_3
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1978
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getCommunityUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1981
    const-class v0, Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1982
    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v6, v6, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v6}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "__interactionScope"

    .line 1983
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1985
    :cond_1
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-static {v2, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v0

    .line 1987
    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1988
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090720

    if-ne p1, v1, :cond_2

    const/4 v4, 0x1

    :cond_2
    const-string p1, "selectMood"

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1989
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1991
    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "signup"

    .line 1992
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "Side Panel"

    .line 1993
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1994
    sget-object v0, Lcom/narvii/account/LoginActivity$PromptType;->Button:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "promptType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1995
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2031
    :sswitch_4
    const-class p1, Lcom/narvii/notice/NoticeListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2032
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_5

    .line 2048
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v0, 0xfa0001

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->sendEvent(ILjava/lang/Object;)Z

    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090027 -> :sswitch_4
        0x7f0900e4 -> :sswitch_3
        0x7f090220 -> :sswitch_2
        0x7f090383 -> :sswitch_1
        0x7f090395 -> :sswitch_3
        0x7f0903af -> :sswitch_0
        0x7f090720 -> :sswitch_3
        0x7f090764 -> :sswitch_3
    .end sparse-switch
.end method
