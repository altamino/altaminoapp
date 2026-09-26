.class public Lcom/narvii/app/DrawerActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/drawer/DrawerLayout$DrawerListener;


# static fields
.field public static final CMD_CLOSE_DRAWER:I = 0xfa0001

.field public static final CMD_ON_CLOSED:I = 0xfb0003

.field public static final CMD_ON_OPENED:I = 0xfb0002

.field public static final CMD_ON_SLIDE:I = 0xfb0001

.field public static final CMD_POST:I = 0xfa0005

.field private static final TAG:Ljava/lang/String; = "EnterCommunityHelper"

.field private static final buf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private abInited:Z

.field private activityContent:Landroid/view/ViewGroup;

.field private adObstructions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

.field private cbbHost:Lcom/narvii/community/CBBHost;

.field private cbbView:Lcom/narvii/widget/ProxyView;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private detachAll:Ljava/lang/Runnable;

.field disableCBB:Z

.field disableDrawer:Z

.field private drawerHost:Lcom/narvii/widget/ProxyViewHost;

.field private drawerIndicator:Landroid/view/View;

.field private drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

.field private drawerLayoutViewCount:I

.field private drawerOffset:F

.field private drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

.field private drawerRightView:Lcom/narvii/drawer/DrawerView;

.field drawerState:I

.field private drawerView:Lcom/narvii/drawer/DrawerView;

.field private isPostEnabled:Z

.field private liveLayerHost:Lcom/narvii/widget/ProxyViewHost;

.field private liveLayerView:Lcom/narvii/widget/ProxyView;

.field private postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

.field receiver:Landroid/content/BroadcastReceiver;

.field private skipDetachNextPause:Z

.field private skipNextDrawerOpenedEvent:Z

.field private final themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

.field private themeUINeedUpdate:Z

.field private visitorBarHost:Lcom/narvii/community/VisitorBarHost;

.field private visitorBarView:Lcom/narvii/widget/ProxyView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/app/DrawerActivity;->buf:Ljava/util/ArrayList;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->themeUINeedUpdate:Z

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->adObstructions:Ljava/util/HashSet;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/app/DrawerActivity$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/app/DrawerActivity$1;-><init>(Lcom/narvii/app/DrawerActivity;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/app/DrawerActivity$2;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/app/DrawerActivity$2;-><init>(Lcom/narvii/app/DrawerActivity;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    return-void
.end method

.method private addView(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->activityContent:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 8
    .line 9
    :goto_0
    iget v1, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    .line 10
    .line 11
    add-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    iput v2, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 17
    return-void
.end method

.method private changeDrawerUsability()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->disableDrawer:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    .line 17
    :goto_0
    iget-object v3, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 31
    .line 32
    iget-object v3, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2, v0}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(ILandroid/view/View;)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(ILandroid/view/View;)V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1, v0}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(ILandroid/view/View;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(ILandroid/view/View;)V

    .line 62
    :cond_2
    :goto_1
    return-void
.end method

.method private ensureCBB()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbHost:Lcom/narvii/community/CBBHost;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "cbbHost"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/widget/ProxyViewHost;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/community/CBBHost;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbHost:Lcom/narvii/community/CBBHost;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/narvii/widget/ProxyView;->setHost(Lcom/narvii/widget/ProxyViewHost;)V

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbHost:Lcom/narvii/community/CBBHost;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/community/CBBHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    .line 37
    :cond_1
    return-void
.end method

.method private ensureDrawer()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "drawerHost"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/widget/ProxyViewHost;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/widget/ProxyViewHost;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/narvii/widget/ProxyView;->setHost(Lcom/narvii/widget/ProxyViewHost;)V

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyViewHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    .line 33
    :cond_1
    return-void
.end method

.method private ensureLiveLayer()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "liveLayerHost"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/widget/ProxyViewHost;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/widget/ProxyViewHost;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/narvii/widget/ProxyView;->setHost(Lcom/narvii/widget/ProxyViewHost;)V

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyViewHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    .line 37
    :cond_1
    return-void
.end method

.method private ensureRightDrawer()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "drawerRightHost"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/widget/ProxyViewHost;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/widget/ProxyViewHost;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/narvii/widget/ProxyView;->setHost(Lcom/narvii/widget/ProxyViewHost;)V

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyViewHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    .line 33
    :cond_1
    return-void
.end method

.method private ensureVisitorBar()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarHost:Lcom/narvii/community/VisitorBarHost;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "visitorBarHost"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/widget/ProxyViewHost;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/community/VisitorBarHost;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarHost:Lcom/narvii/community/VisitorBarHost;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/narvii/widget/ProxyView;->setHost(Lcom/narvii/widget/ProxyViewHost;)V

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarHost:Lcom/narvii/community/VisitorBarHost;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyViewHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    .line 37
    :cond_1
    return-void
.end method

.method private initCBB()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a0265

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    const v3, 0x7f0d009d

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v4, p0, Lcom/narvii/app/DrawerActivity;->activityContent:Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/widget/ProxyView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->activityContent:Landroid/view/ViewGroup;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v4, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/widget/ProxyView;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/narvii/app/DrawerActivity;->addView(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->updateCBBVisibility()V

    .line 70
    :cond_1
    return-void
.end method

.method private initDrawer()V
    .locals 7

    .line 1
    .line 2
    const-string v0, "mContentRoot"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 5
    .line 6
    if-nez v1, :cond_7

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasDrawer()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_7

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    sget-object v2, Lcom/narvii/app/DrawerActivity;->buf:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    move v4, v3

    .line 34
    .line 35
    :goto_0
    if-ge v4, v2, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    move-result-object v5

    .line 40
    .line 41
    sget-object v6, Lcom/narvii/app/DrawerActivity;->buf:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    const v4, 0x7f0d01f9

    .line 58
    const/4 v5, 0x1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    const v4, 0x7f0a0482

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    check-cast v4, Lcom/narvii/drawer/MyDrawerLayout;

    .line 71
    .line 72
    iput-object v4, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 73
    .line 74
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 75
    .line 76
    const/16 v6, 0x18

    .line 77
    .line 78
    if-lt v4, v6, :cond_1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 90
    .line 91
    iget-object v5, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p0}, Lcom/narvii/drawer/DrawerLayout;->setDrawerListener(Lcom/narvii/drawer/DrawerLayout$DrawerListener;)V

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 107
    .line 108
    .line 109
    const v1, 0x7f0a0483

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    check-cast v0, Lcom/narvii/drawer/DrawerView;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 120
    .line 121
    .line 122
    const v1, 0x7f0a0490

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    check-cast v0, Lcom/narvii/drawer/DrawerView;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    move-result-object v1

    .line 145
    .line 146
    .line 147
    const v4, 0x7f070176

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 151
    move-result v1

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 155
    move-result-object v4

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    move-result-object v4

    .line 160
    .line 161
    .line 162
    const v5, 0x7f070175

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 166
    move-result v4

    .line 167
    .line 168
    sget v5, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 169
    .line 170
    const/16 v6, 0x64

    .line 171
    .line 172
    if-ne v5, v6, :cond_2

    .line 173
    add-int/2addr v1, v4

    .line 174
    .line 175
    :cond_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 176
    .line 177
    iput v3, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    .line 178
    .line 179
    sget-object v0, Lcom/narvii/app/DrawerActivity;->buf:Ljava/util/ArrayList;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    .line 186
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    move-result v1

    .line 188
    .line 189
    if-eqz v1, :cond_3

    .line 190
    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    check-cast v1, Landroid/view/View;

    .line 196
    .line 197
    iget-object v4, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 198
    .line 199
    iget v5, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    .line 200
    .line 201
    add-int/lit8 v6, v5, 0x1

    .line 202
    .line 203
    iput v6, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 207
    goto :goto_2

    .line 208
    .line 209
    :cond_3
    sget-object v0, Lcom/narvii/app/DrawerActivity;->buf:Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 213
    .line 214
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->activityContent:Landroid/view/ViewGroup;

    .line 215
    .line 216
    if-eqz v0, :cond_4

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 220
    move-result v0

    .line 221
    .line 222
    iput v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    .line 223
    .line 224
    .line 225
    :cond_4
    const v0, 0x7f0d01f8

    .line 226
    .line 227
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 234
    .line 235
    .line 236
    const v1, 0x7f0a071a

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 240
    move-result-object v0

    .line 241
    .line 242
    new-instance v1, Lcom/narvii/app/a;

    .line 243
    .line 244
    .line 245
    invoke-direct {v1, p0}, Lcom/narvii/app/a;-><init>(Lcom/narvii/app/DrawerActivity;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    const-string v0, "config"

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    move-result-object v0

    .line 255
    .line 256
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 260
    move-result-object v0

    .line 261
    .line 262
    .line 263
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 264
    move-result v0

    .line 265
    .line 266
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 267
    .line 268
    .line 269
    const v4, 0x7f0a0719

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 273
    move-result-object v1

    .line 274
    .line 275
    check-cast v1, Lcom/narvii/widget/TintButton;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 279
    .line 280
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 281
    .line 282
    .line 283
    invoke-direct {p0, v0}, Lcom/narvii/app/DrawerActivity;->addView(Landroid/view/View;)V

    .line 284
    .line 285
    .line 286
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initLiveLayer()V

    .line 287
    .line 288
    .line 289
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initCBB()V

    .line 290
    .line 291
    .line 292
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initVisitorBar()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasPostEntry()Z

    .line 296
    move-result v0

    .line 297
    .line 298
    if-eqz v0, :cond_6

    .line 299
    .line 300
    .line 301
    const v0, 0x7f0d062e

    .line 302
    .line 303
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 307
    move-result-object v0

    .line 308
    .line 309
    check-cast v0, Lcom/narvii/post/entry/PostEntryView;

    .line 310
    .line 311
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeActivity;->getShouldInflateAd()Z

    .line 315
    move-result v0

    .line 316
    .line 317
    if-nez v0, :cond_5

    .line 318
    .line 319
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getPostEntryLift()I

    .line 323
    move-result v1

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1, v3}, Lcom/narvii/post/entry/PostEntryView;->setLift1(IZ)V

    .line 327
    .line 328
    :cond_5
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    .line 329
    .line 330
    .line 331
    invoke-direct {p0, v0}, Lcom/narvii/app/DrawerActivity;->addView(Landroid/view/View;)V

    .line 332
    .line 333
    .line 334
    :cond_6
    const v0, 0x7f0d04a8

    .line 335
    .line 336
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 340
    move-result-object v0

    .line 341
    .line 342
    .line 343
    invoke-direct {p0, v0}, Lcom/narvii/app/DrawerActivity;->addView(Landroid/view/View;)V

    .line 344
    .line 345
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->inVisitorMode:Z

    .line 346
    .line 347
    if-eqz v0, :cond_7

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->updateVisitorModeUI()V

    .line 351
    :cond_7
    return-void
.end method

.method private initLiveLayer()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    sget-boolean v0, Lcom/narvii/livelayer/LiveLayerService;->OPEN:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasOnlineBar()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0a080e

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    const v3, 0x7f0d0510

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v4, p0, Lcom/narvii/app/DrawerActivity;->activityContent:Landroid/view/ViewGroup;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/widget/ProxyView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->activityContent:Landroid/view/ViewGroup;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iget-object v4, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    check-cast v0, Lcom/narvii/widget/ProxyView;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v0}, Lcom/narvii/app/DrawerActivity;->addView(Landroid/view/View;)V

    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method private initVisitorBar()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isInVisitorMode()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasVisitorBar()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0a0fda

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    const v3, 0x7f0d0792

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v4, p0, Lcom/narvii/app/DrawerActivity;->activityContent:Landroid/view/ViewGroup;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/widget/ProxyView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->activityContent:Landroid/view/ViewGroup;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iget-object v4, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/widget/ProxyView;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v0}, Lcom/narvii/app/DrawerActivity;->addView(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->updateVisitorBarVisibility()V

    .line 78
    :cond_2
    return-void
.end method

.method private synthetic lambda$initDrawer$1(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/app/DrawerActivity;->openDrawer(Z)V

    .line 5
    return-void
.end method

.method private synthetic lambda$onPause$0()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyViewHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iput-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ProxyViewHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    iput-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    iget-object v2, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ProxyViewHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 61
    .line 62
    :cond_4
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbHost:Lcom/narvii/community/CBBHost;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/narvii/community/CBBHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 70
    .line 71
    :cond_5
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarHost:Lcom/narvii/community/VisitorBarHost;

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    iget-object v2, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ProxyViewHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 79
    .line 80
    :cond_6
    iput-object v1, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    .line 81
    return-void
.end method

.method private onCommunityUpdate()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/narvii/app/DrawerActivity;->isPostEnabled:Z

    .line 13
    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->isPostEnabled:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const/16 v0, 0x8

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :cond_1
    return-void
.end method

.method public static synthetic s(Lcom/narvii/app/DrawerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->lambda$onPause$0()V

    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setCBBVisible(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const/16 p1, 0x8

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_1
    return-void
.end method

.method private setupAdView()V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0967

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->adObstructions:Ljava/util/HashSet;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    const v0, 0x7f0a0265

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->adObstructions:Ljava/util/HashSet;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    const v0, 0x7f0a07b8

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->adObstructions:Ljava/util/HashSet;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    const v0, 0x7f0a0f89

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->adObstructions:Ljava/util/HashSet;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->adObstructions:Ljava/util/HashSet;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v1

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    check-cast v1, Landroid/view/View;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/narvii/app/DrawerActivity;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Lai/medialab/medialabads2/banners/MediaLabAdView;->addFriendlyObstruction(Landroid/view/View;)V

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    return-void
.end method

.method public static synthetic t(Lcom/narvii/app/DrawerActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/app/DrawerActivity;->lambda$initDrawer$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/app/DrawerActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/app/DrawerActivity;->themeUINeedUpdate:Z

    return-void
.end method

.method private updateVisitorBarVisibility()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    const/16 v1, 0x8

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_1
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/app/DrawerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->onCommunityUpdate()V

    return-void
.end method


# virtual methods
.method public bottomPadding(Lcom/narvii/app/NVFragment;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const/high16 v1, 0x42b40000    # 90.0f

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getCBBLift()I

    .line 20
    move-result p1

    .line 21
    :goto_0
    add-int/2addr v0, p1

    .line 22
    return v0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasPostEntry()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    const/high16 v1, 0x42780000    # 62.0f

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getPostEntryLift()I

    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasOnlineBar()Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 57
    move-result v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getOnlineBarLift()I

    .line 61
    move-result p1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 p1, 0x0

    .line 64
    return p1
.end method

.method public closeDrawers()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers()V

    .line 10
    :cond_0
    return-void
.end method

.method public closeDrawersDirectly()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/drawer/MyDrawerLayout;->closeDrawersDirectly()V

    .line 10
    :cond_0
    return-void
.end method

.method public getCBBLift()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCBBView()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initDrawer()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initCBB()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    .line 9
    return-object v0
.end method

.method public getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initDrawer()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 6
    return-object v0
.end method

.method public getLiveLayerView()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initDrawer()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initLiveLayer()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    .line 9
    return-object v0
.end method

.method public getOnlineBarLift()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPostEntryLift()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPostEntryView()Lcom/narvii/post/entry/PostEntryView;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initDrawer()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    .line 6
    return-object v0
.end method

.method public hasCBB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hasCommunityId()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isGlobal()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    const-string v0, "config"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_1
    return v1
.end method

.method public hasDrawer()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isModel()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCommunityId()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public hasOnlineBar()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasPostEntry()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public hasPostEntry()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isModel()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCommunityId()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public hasVisitorBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initActionBar()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->abInited:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->abInited:Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    const v1, 0x7f0a0077

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 44
    .line 45
    :goto_1
    check-cast v0, Lcom/narvii/util/actionbar/ActionBarLayout;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    new-instance v1, Lcom/narvii/app/DrawerActivity$3;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/narvii/app/DrawerActivity$3;-><init>(Lcom/narvii/app/DrawerActivity;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/narvii/util/actionbar/ActionBarLayout;->setOnGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 56
    :cond_3
    return-void
.end method

.method public isDrawerIdle()Z
    .locals 1

    iget v0, p0, Lcom/narvii/app/DrawerActivity;->drawerState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrawerOpen()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    const v2, 0x800005

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(I)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    .line 19
    const v2, 0x800003

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(I)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    :cond_1
    return v1
.end method

.method public isLeftDrawerVisible()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v1, 0x800003

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerVisible(I)Z

    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    .line 11
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/app/DrawerActivity;->isPostEnabled:Z

    .line 17
    .line 18
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE_MASTER:I

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    .line 23
    .line 24
    const-string v1, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 31
    .line 32
    new-instance p1, Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p0}, Lai/medialab/medialabads2/banners/MediaLabAdView;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 38
    .line 39
    const-string v0, "feed"

    .line 40
    .line 41
    sget-object v1, Lai/medialab/medialabads2/data/AdSize;->MEDIUM_RECTANGLE:Lai/medialab/medialabads2/data/AdSize;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Lai/medialab/medialabads2/banners/MediaLabAdView;->initialize(Ljava/lang/String;Lai/medialab/medialabads2/data/AdSize;)V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->adObstructions:Ljava/util/HashSet;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    check-cast v1, Landroid/view/View;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/app/DrawerActivity;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Lai/medialab/medialabads2/banners/MediaLabAdView;->removeFriendlyObstruction(Landroid/view/View;)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->adObstructions:Ljava/util/HashSet;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 52
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/widget/ProxyView;

    .line 7
    .line 8
    .line 9
    const v0, 0xfb0003

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ProxyView;->sendEvent(ILjava/lang/Object;)Z

    .line 14
    :cond_0
    return-void
.end method

.method public onDrawerEvent(ILjava/lang/Object;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    const p2, 0xfa0001

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->closeDrawers()V

    .line 14
    return v0

    .line 15
    .line 16
    .line 17
    :cond_0
    const p2, 0xfa0005

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-ne p1, p2, :cond_3

    .line 21
    .line 22
    const-string p1, "account"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const-string p1, "postEntry"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/post/entry/PostEntryDialog;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    const-string p2, "Left Side Panel"

    .line 49
    .line 50
    sget-object v2, Lcom/narvii/util/logging/LoggingSource;->GlobalComposeMenu:Lcom/narvii/util/logging/LoggingSource;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1, p2, v2}, Lcom/narvii/post/entry/PostEntryDialog;->show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    const-class v1, Lcom/narvii/account/LoginActivity;

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .line 67
    sget-object p2, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    const-string v1, "promptType"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-static {p0, p1}, Lcom/narvii/app/DrawerActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 80
    :cond_2
    :goto_0
    return v0

    .line 81
    :cond_3
    return v1
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->skipNextDrawerOpenedEvent:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "SideMenu"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 19
    .line 20
    instance-of v2, v1, Lcom/narvii/drawer/DrawerHost;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/drawer/DrawerHost;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->fakePVId:Ljava/lang/String;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    const-string v1, ""

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v1, "SideMenuArea"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->skipNextDrawerOpenedEvent:Z

    .line 47
    .line 48
    :goto_1
    instance-of v0, p1, Lcom/narvii/widget/ProxyView;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    check-cast p1, Lcom/narvii/widget/ProxyView;

    .line 53
    .line 54
    .line 55
    const v0, 0xfb0002

    .line 56
    const/4 v1, 0x0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ProxyView;->sendEvent(ILjava/lang/Object;)Z

    .line 60
    :cond_2
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3

    .line 1
    .line 2
    iput p2, p0, Lcom/narvii/app/DrawerActivity;->drawerOffset:F

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    cmpl-float v0, p2, v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 10
    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureDrawer()V

    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    .line 19
    .line 20
    if-ne p1, v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureRightDrawer()V

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 33
    move-result v1

    .line 34
    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    if-eq v1, v2, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    const v2, 0x7f01005d

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 64
    move-result v0

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 69
    const/4 v1, 0x0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 75
    .line 76
    .line 77
    const v1, 0x7f010061

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    .line 86
    :cond_3
    instance-of v0, p1, Lcom/narvii/widget/ProxyView;

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    check-cast p1, Lcom/narvii/widget/ProxyView;

    .line 91
    .line 92
    .line 93
    const v0, 0xfb0001

    .line 94
    .line 95
    .line 96
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ProxyView;->sendEvent(ILjava/lang/Object;)Z

    .line 101
    .line 102
    :cond_4
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    .line 103
    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    sub-float/2addr v0, p2

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 111
    :cond_5
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/app/DrawerActivity;->drawerState:I

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 9
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->skipDetachNextPause:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/app/b;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/app/b;-><init>(Lcom/narvii/app/DrawerActivity;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    .line 20
    .line 21
    const-wide/16 v1, 0x3e8

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->skipDetachNextPause:Z

    .line 29
    :goto_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initDrawer()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initLiveLayer()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initCBB()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initVisitorBar()V

    .line 16
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureDrawer()V

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureRightDrawer()V

    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    .line 52
    const/4 v1, 0x0

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-boolean v2, p0, Lcom/narvii/app/DrawerActivity;->isPostEnabled:Z

    .line 57
    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    const/16 v2, 0x8

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v2, v1

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    .line 68
    .line 69
    const/high16 v2, 0x3f800000    # 1.0f

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 73
    .line 74
    :cond_4
    sget-boolean v0, Lcom/narvii/livelayer/LiveLayerService;->OPEN:Z

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasOnlineBar()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureLiveLayer()V

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    .line 92
    const v2, 0x7f0a05dd

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    check-cast v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getOnlineBarLift()I

    .line 102
    move-result v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setLift(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    const-string v2, "prefs"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    check-cast v2, Landroid/content/SharedPreferences;

    .line 120
    .line 121
    const-string v3, "liveLayerFold"

    .line 122
    .line 123
    .line 124
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 125
    move-result v2

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    .line 132
    move-result v0

    .line 133
    .line 134
    if-eqz v0, :cond_6

    .line 135
    .line 136
    .line 137
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureCBB()V

    .line 138
    .line 139
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbHost:Lcom/narvii/community/CBBHost;

    .line 140
    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getCBBLift()I

    .line 145
    move-result v2

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Lcom/narvii/community/CBBHost;->setLift(I)V

    .line 149
    .line 150
    .line 151
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isInVisitorMode()Z

    .line 152
    move-result v0

    .line 153
    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasVisitorBar()Z

    .line 158
    move-result v0

    .line 159
    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    .line 163
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureVisitorBar()V

    .line 164
    .line 165
    :cond_7
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 166
    .line 167
    new-instance v2, Landroid/content/IntentFilter;

    .line 168
    .line 169
    const-string v3, "com.narvii.action.COMMUNITY_CHANGED"

    .line 170
    .line 171
    .line 172
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0, v2}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 176
    .line 177
    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->themeUINeedUpdate:Z

    .line 178
    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    iput-boolean v1, p0, Lcom/narvii/app/DrawerActivity;->themeUINeedUpdate:Z

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->updateThemeUI()V

    .line 185
    .line 186
    :cond_8
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->updateVisitorModePending:Z

    .line 187
    .line 188
    if-eqz v0, :cond_9

    .line 189
    .line 190
    iput-boolean v1, p0, Lcom/narvii/app/NVActivity;->updateVisitorModePending:Z

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->updateVisitorModeUI()V

    .line 194
    .line 195
    .line 196
    :cond_9
    invoke-static {p0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 197
    .line 198
    .line 199
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->setupAdView()V

    .line 200
    return-void
.end method

.method public openDrawer()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/app/DrawerActivity;->openDrawer(Z)V

    return-void
.end method

.method public openDrawer(Z)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x800005

    .line 3
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->closeDrawer(I)V

    :cond_0
    const v1, 0x800003

    .line 5
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->openDrawer(I)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/app/DrawerActivity;->skipNextDrawerOpenedEvent:Z

    :cond_1
    return-void
.end method

.method public openRightDrawer()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    const v1, 0x800003

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(I)Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->closeDrawer(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const v1, 0x800005

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->openDrawer(I)V

    .line 25
    :cond_1
    return-void
.end method

.method public peekDrawer(JJ)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v1, 0x800003

    .line 10
    move-wide v2, p1

    .line 11
    move-wide v4, p3

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/drawer/DrawerLayout;->peekDrawer(IJJ)V

    .line 15
    :cond_0
    return-void
.end method

.method public sendDrawerEvent(ILjava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/ProxyView;->sendEvent(ILjava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    :goto_0
    return p1
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a008d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity;->activityContent:Landroid/view/ViewGroup;

    .line 15
    return-void
.end method

.method public setDisableCBB(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/app/DrawerActivity;->disableCBB:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->updateCBBVisibility()V

    .line 6
    return-void
.end method

.method public setDisableDrawer(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/app/DrawerActivity;->disableDrawer:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->changeDrawerUsability()V

    .line 6
    return-void
.end method

.method public setLiverLayerBarVisible(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const/16 p1, 0x8

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_1
    return-void
.end method

.method public setSkipDetachNextPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/app/DrawerActivity;->skipDetachNextPause:Z

    return-void
.end method

.method public updateCBBVisibility()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->disableCBB:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-direct {p0, v0}, Lcom/narvii/app/DrawerActivity;->setCBBVisible(Z)V

    .line 17
    return-void
.end method

.method public updatePostEntryFrameVisible(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_1
    const/16 p1, 0x8

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    return-void
.end method

.method public updateThemeUI()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->updateThemeUI()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "config"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 23
    move-result v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    const v2, 0x7f0a0719

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/widget/TintButton;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasPostEntry()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/post/entry/PostEntryView;->updateThemeUI()V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActionBarCustomed()Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->setStatusBar()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->setActionBarBackgroundDefault()V

    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->themeDownloadObservers:Ljava/util/List;

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->onThemeDownloadFinish()V

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isPagebackgroundEnabled()Z

    .line 96
    move-result v0

    .line 97
    .line 98
    if-nez v0, :cond_4

    .line 99
    return-void

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    const v1, 0x1020002

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    .line 114
    if-nez v0, :cond_5

    .line 115
    return-void

    .line 116
    .line 117
    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->configPageBackground()V

    .line 119
    return-void
.end method

.method protected updateVisitorModeUI()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->changeDrawerUsability()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->updateCBBVisibility()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->updateVisitorBarVisibility()V

    .line 10
    return-void
.end method
