.class Lcom/narvii/amino/CommunityNavBarFragment$8;
.super Landroid/content/BroadcastReceiver;
.source "CommunityNavBarFragment.java"


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

    .line 371
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$8;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 374
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$8;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 375
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$8;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    const-string v0, "config"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    const/4 v0, 0x0

    const-string v1, "id"

    .line 376
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$8;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/amino/CommunityNavBarFragment;->access$600(Lcom/narvii/amino/CommunityNavBarFragment;Landroid/app/Activity;)V

    .line 378
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$8;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->access$500(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 379
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$8;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
