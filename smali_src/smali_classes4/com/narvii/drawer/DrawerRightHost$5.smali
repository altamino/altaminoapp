.class Lcom/narvii/drawer/DrawerRightHost$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$5;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/model/Community;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$5;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 13
    .line 14
    instance-of v0, v0, Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/model/Community;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$5;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 25
    .line 26
    new-instance v2, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 27
    .line 28
    iget-object v3, v1, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 29
    .line 30
    check-cast v3, Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v1, v3}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;-><init>(Lcom/narvii/drawer/DrawerRightHost;Lcom/narvii/app/NVContext;)V

    .line 34
    .line 35
    iput-object v2, v1, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$5;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 40
    const/4 v2, 0x1

    .line 41
    .line 42
    iput-boolean v2, v1, Lcom/narvii/community/CommunityLaunchHelper;->visitorModeCompatible:Z

    .line 43
    .line 44
    iput-boolean v2, v1, Lcom/narvii/community/CommunityLaunchHelper;->themePackDownloadAsync:Z

    .line 45
    .line 46
    .line 47
    const v2, 0x7f0a06d5

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0, p1}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchRecent(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;)V

    .line 57
    :cond_0
    return-void
.end method
