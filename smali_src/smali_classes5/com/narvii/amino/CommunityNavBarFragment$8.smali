.class Lcom/narvii/amino/CommunityNavBarFragment$8;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$8;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "com.narvii.action.COMMUNITY_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$8;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$8;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 23
    .line 24
    const-string v0, "config"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 31
    .line 32
    const-string v0, "id"

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 37
    move-result p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 41
    move-result p1

    .line 42
    .line 43
    if-ne p2, p1, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$8;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/narvii/amino/CommunityNavBarFragment;->v(Lcom/narvii/amino/CommunityNavBarFragment;Landroid/app/Activity;)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$8;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->w(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$8;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 63
    :cond_0
    return-void
.end method
