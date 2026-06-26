.class Lcom/narvii/drawer/DrawerHost$27;
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

    .line 2364
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 2367
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "Left Side Panel"

    const-string v1, "Source"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2397
    :sswitch_0
    const-class p1, Lcom/narvii/invite/InviteMembersFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2398
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2399
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2369
    :sswitch_1
    const-class p1, Lcom/narvii/prefs/CommunitySettingFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2370
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2374
    :sswitch_2
    const-class p1, Lcom/narvii/guideline/GuidelineFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2375
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2412
    :sswitch_3
    const-class p1, Lcom/narvii/master/MasterTemplatePickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2413
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v1, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2403
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 2404
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "showJoin"

    .line 2405
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2406
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "about this community"

    .line 2407
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2408
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2385
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2386
    const-class p1, Lcom/narvii/bookmark/BookMarkListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2387
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2388
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2390
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2391
    sget-object v0, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "promptType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2392
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2379
    :sswitch_6
    const-class p1, Lcom/narvii/members/PeopleListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2380
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2381
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    .line 2418
    :goto_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$27;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v0, 0xfa0001

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->sendEvent(ILjava/lang/Object;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09037a -> :sswitch_6
        0x7f09037c -> :sswitch_5
        0x7f090387 -> :sswitch_4
        0x7f09038a -> :sswitch_3
        0x7f09038f -> :sswitch_2
        0x7f0903a8 -> :sswitch_1
        0x7f0903a9 -> :sswitch_0
    .end sparse-switch
.end method
