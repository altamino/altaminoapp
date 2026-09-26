.class Lcom/narvii/amino/CommunityNavBarFragment$6;
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
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$6;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

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
    const-string p1, "id"

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    move-result p1

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/amino/CommunityNavBarFragment$6;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 22
    .line 23
    iget-object p2, p2, Lcom/narvii/amino/CommunityNavBarFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 27
    move-result p2

    .line 28
    .line 29
    if-ne p1, p2, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$6;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->s(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 35
    :cond_0
    return-void
.end method
