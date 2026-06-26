.class Lcom/narvii/community/CommunityLaunchHelper$8;
.super Landroid/content/BroadcastReceiver;
.source "CommunityLaunchHelper.java"


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

    .line 658
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 661
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {v0}, Lcom/narvii/community/CommunityLaunchHelper;->access$600(Lcom/narvii/community/CommunityLaunchHelper;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v1, "cid"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {v1}, Lcom/narvii/community/CommunityLaunchHelper;->access$600(Lcom/narvii/community/CommunityLaunchHelper;)I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 662
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p2}, Lcom/narvii/community/CommunityLaunchHelper;->access$900(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/theme/ThemePackService;

    move-result-object p2

    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {v1}, Lcom/narvii/community/CommunityLaunchHelper;->access$600(Lcom/narvii/community/CommunityLaunchHelper;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/narvii/theme/ThemePackService;->getStatus(I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 664
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-virtual {p1}, Lcom/narvii/community/CommunityLaunchHelper;->progress()V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 666
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    iget-boolean v1, p2, Lcom/narvii/community/CommunityLaunchHelper;->failAtThemeDownload:Z

    const v2, 0x7f0f0677

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 667
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$300(Lcom/narvii/community/CommunityLaunchHelper;ILjava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_1
    invoke-static {p1, v2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 670
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$200(Lcom/narvii/community/CommunityLaunchHelper;)V

    goto :goto_0

    .line 673
    :cond_2
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$8;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$200(Lcom/narvii/community/CommunityLaunchHelper;)V

    :cond_3
    :goto_0
    return-void
.end method
