.class Lcom/narvii/amino/CommunityNavBarFragment$6;
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

    .line 346
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$6;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 349
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "id"

    .line 350
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/narvii/amino/CommunityNavBarFragment$6;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    iget-object p2, p2, Lcom/narvii/amino/CommunityNavBarFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 351
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$6;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->access$400(Lcom/narvii/amino/CommunityNavBarFragment;)V

    :cond_0
    return-void
.end method
