.class Lcom/narvii/amino/CommunityNavBarFragment$7;
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
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$7;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$7;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

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
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$7;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->w(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 26
    :cond_0
    return-void
.end method
