.class Lcom/narvii/drawer/DrawerRightHost$5;
.super Ljava/lang/Object;
.source "DrawerRightHost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerRightHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$5;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$5;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 561
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$5;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    new-instance v2, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    iget-object v3, v1, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    check-cast v3, Lcom/narvii/app/NVContext;

    invoke-direct {v2, v1, v3}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;-><init>(Lcom/narvii/drawer/DrawerRightHost;Lcom/narvii/app/NVContext;)V

    iput-object v2, v1, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 562
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$5;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/narvii/community/CommunityLaunchHelper;->visitorModeCompatible:Z

    .line 563
    iput-boolean v2, v1, Lcom/narvii/community/CommunityLaunchHelper;->themePackDownloadAsync:Z

    const v2, 0x7f090562

    .line 564
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0, p1}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchRecent(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;)V

    :cond_0
    return-void
.end method
