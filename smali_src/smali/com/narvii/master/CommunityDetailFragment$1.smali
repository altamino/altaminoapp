.class Lcom/narvii/master/CommunityDetailFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$1;->this$0:Lcom/narvii/master/CommunityDetailFragment;

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
    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$1;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 18
    const/4 p2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, p2}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$1;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->Q(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    const-string p1, "com.narvii.action.COMMUNITY_USER_INFO_CHANGED"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$1;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 42
    .line 43
    const-string v1, "blockPrivateCommunity"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const-string p1, "isCurrentUserJoined"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 55
    move-result p1

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$1;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 67
    :cond_1
    :goto_0
    return-void
.end method
