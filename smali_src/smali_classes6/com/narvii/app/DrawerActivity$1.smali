.class Lcom/narvii/app/DrawerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/DrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/DrawerActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/DrawerActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

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
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    .line 15
    .line 16
    const-string v0, "config"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 23
    .line 24
    const-string v0, "id"

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    move-result p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 33
    move-result p1

    .line 34
    .line 35
    if-ne p2, p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/app/DrawerActivity;->v(Lcom/narvii/app/DrawerActivity;)V

    .line 41
    :cond_0
    return-void
.end method
