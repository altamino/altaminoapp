.class Lcom/narvii/amino/CommunityNavBarFragment$12;
.super Ljava/lang/Object;
.source "CommunityNavBarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/CommunityNavBarFragment;
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

    .line 519
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 524
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->shouldShowLoginPage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 529
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090abf

    const-string v3, "Navbar"

    const-string v4, "Source"

    if-ne v1, v2, :cond_2

    .line 531
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->access$900(Lcom/narvii/amino/CommunityNavBarFragment;)Lcom/narvii/amino/HomeFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 533
    sget-object v1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v1, "StoreIcon"

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 535
    :cond_1
    const-class p1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 536
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 538
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090096

    if-ne p1, v1, :cond_4

    .line 540
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->access$900(Lcom/narvii/amino/CommunityNavBarFragment;)Lcom/narvii/amino/HomeFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 542
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "AlertIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 545
    :cond_3
    const-class p1, Lcom/narvii/notice/NoticeListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 546
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 549
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 550
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f01000e

    const v1, 0x7f01000f

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_5
    return-void
.end method
