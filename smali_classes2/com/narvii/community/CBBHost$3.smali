.class Lcom/narvii/community/CBBHost$3;
.super Landroid/content/BroadcastReceiver;
.source "CBBHost.java"


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

    .line 109
    iput-object p1, p0, Lcom/narvii/community/CBBHost$3;->this$0:Lcom/narvii/community/CBBHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/narvii/community/CBBHost$3;->this$0:Lcom/narvii/community/CBBHost;

    invoke-static {p1}, Lcom/narvii/community/CBBHost;->access$200(Lcom/narvii/community/CBBHost;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.narvii.action.COMMUNITY_CHANGED"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/narvii/community/CBBHost$3;->this$0:Lcom/narvii/community/CBBHost;

    iget-object p1, p1, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    const/4 v0, 0x0

    const-string v1, "id"

    .line 117
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/narvii/community/CBBHost$3;->this$0:Lcom/narvii/community/CBBHost;

    invoke-static {p1}, Lcom/narvii/community/CBBHost;->access$300(Lcom/narvii/community/CBBHost;)V

    .line 119
    iget-object p1, p0, Lcom/narvii/community/CBBHost$3;->this$0:Lcom/narvii/community/CBBHost;

    invoke-static {p1}, Lcom/narvii/community/CBBHost;->access$400(Lcom/narvii/community/CBBHost;)V

    :cond_1
    :goto_0
    return-void
.end method
