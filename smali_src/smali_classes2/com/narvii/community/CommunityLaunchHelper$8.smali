.class Lcom/narvii/community/CommunityLaunchHelper$8;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CommunityLaunchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityLaunchHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/community/CommunityLaunchHelper;->b(Lcom/narvii/community/CommunityLaunchHelper;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    const-string v0, "cid"

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 15
    move-result p2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/community/CommunityLaunchHelper;->b(Lcom/narvii/community/CommunityLaunchHelper;)I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-ne p2, v0, :cond_3

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Lcom/narvii/community/CommunityLaunchHelper;->g(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/theme/ThemePackService;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/community/CommunityLaunchHelper;->b(Lcom/narvii/community/CommunityLaunchHelper;)I

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Lcom/narvii/theme/ThemePackService;->getStatus(I)I

    .line 39
    move-result p2

    .line 40
    const/4 v0, 0x1

    .line 41
    .line 42
    if-ne p2, v0, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/community/CommunityLaunchHelper;->progress()V

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, -0x1

    .line 50
    .line 51
    if-ne p2, v0, :cond_2

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 54
    .line 55
    iget-boolean v0, p2, Lcom/narvii/community/CommunityLaunchHelper;->failAtThemeDownload:Z

    .line 56
    .line 57
    .line 58
    const v2, 0x7f120724

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-static {p2, v0, p1}, Lcom/narvii/community/CommunityLaunchHelper;->h(Lcom/narvii/community/CommunityLaunchHelper;ILjava/lang/String;)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-static {p1, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->j(Lcom/narvii/community/CommunityLaunchHelper;)V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_2
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->j(Lcom/narvii/community/CommunityLaunchHelper;)V

    .line 88
    :cond_3
    :goto_0
    return-void
.end method
