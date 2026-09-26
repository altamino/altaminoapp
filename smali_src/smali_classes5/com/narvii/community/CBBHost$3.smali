.class Lcom/narvii/community/CBBHost$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CBBHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CBBHost;


# direct methods
.method constructor <init>(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CBBHost$3;->this$0:Lcom/narvii/community/CBBHost;

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
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/community/CBBHost$3;->this$0:Lcom/narvii/community/CBBHost;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/community/CBBHost;->a(Lcom/narvii/community/CBBHost;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    const-string v0, "com.narvii.action.COMMUNITY_CHANGED"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/community/CBBHost$3;->this$0:Lcom/narvii/community/CBBHost;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    const-string v0, "config"

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 39
    .line 40
    const-string v0, "id"

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 45
    move-result p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 49
    move-result p1

    .line 50
    .line 51
    if-ne p2, p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/community/CBBHost$3;->this$0:Lcom/narvii/community/CBBHost;

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/narvii/community/CBBHost;->d(Lcom/narvii/community/CBBHost;)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/community/CBBHost$3;->this$0:Lcom/narvii/community/CBBHost;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lcom/narvii/community/CBBHost;->f(Lcom/narvii/community/CBBHost;)V

    .line 62
    :cond_1
    :goto_0
    return-void
.end method
