.class Lcom/narvii/drawer/DrawerHost$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

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
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerHost;->smoothScrollToTop(Z)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 35
    .line 36
    .line 37
    const p2, 0x7f0a0491

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Landroid/widget/ScrollView;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 47
    .line 48
    :goto_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->s(Lcom/narvii/drawer/DrawerHost;)V

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->onRefresh()V

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    const-string p1, "com.narvii.action.COMMUNITY_CHANGED"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    const-string p1, "id"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 75
    move-result p1

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 78
    .line 79
    iget-object p2, p2, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 83
    move-result p2

    .line 84
    .line 85
    if-ne p1, p2, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->onCommunityUpdated()V

    .line 91
    :cond_2
    :goto_1
    return-void
.end method
