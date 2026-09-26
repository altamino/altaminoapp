.class Lcom/narvii/drawer/DrawerHost$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost$20;->val$i:Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "__communityId"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->sendingEvent:Lcom/narvii/util/statistics/TmpValue;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    const v2, 0xfa0001

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    const-wide/16 v0, 0x12c

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$20;->val$i:Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$20;->val$i:Landroid/content/Intent;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 48
    .line 49
    iget v2, v2, Lcom/narvii/drawer/DrawerHost;->cid:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$20;->val$i:Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/narvii/drawer/DrawerHost$20;->safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 64
    .line 65
    iget-object v1, v0, Lcom/narvii/drawer/DrawerHost;->overrideEnterAnim:Ljava/lang/Integer;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    iget-object v2, v0, Lcom/narvii/drawer/DrawerHost;->overrideExitAnim:Ljava/lang/Integer;

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 77
    move-result v1

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 80
    .line 81
    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost;->overrideExitAnim:Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 85
    move-result v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 89
    .line 90
    :cond_2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 91
    const/4 v1, 0x0

    .line 92
    .line 93
    iput-object v1, v0, Lcom/narvii/drawer/DrawerHost;->overrideEnterAnim:Ljava/lang/Integer;

    .line 94
    .line 95
    iput-object v1, v0, Lcom/narvii/drawer/DrawerHost;->overrideExitAnim:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :catch_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    const v1, 0x7f120815

    .line 106
    const/4 v2, 0x1

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 114
    :cond_3
    :goto_0
    return-void
.end method
