.class public Lcom/narvii/app/DrawerActivity;
.super Lcom/narvii/app/NVActivity;
.source "DrawerActivity.java"

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

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/app/DrawerActivity;->buf:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->themeUINeedUpdate:Z

    .line 223
    new-instance v0, Lcom/narvii/app/DrawerActivity$2;

    invoke-direct {v0, p0}, Lcom/narvii/app/DrawerActivity$2;-><init>(Lcom/narvii/app/DrawerActivity;)V

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v0, Lcom/narvii/app/DrawerActivity$3;

    invoke-direct {v0, p0}, Lcom/narvii/app/DrawerActivity$3;-><init>(Lcom/narvii/app/DrawerActivity;)V

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyViewHost;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/app/DrawerActivity;Lcom/narvii/widget/ProxyViewHost;)Lcom/narvii/widget/ProxyViewHost;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/drawer/DrawerView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/narvii/app/DrawerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/narvii/app/DrawerActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->onCommunityUpdate()V

    return-void
.end method

.method static synthetic access$1302(Lcom/narvii/app/DrawerActivity;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/narvii/app/DrawerActivity;->themeUINeedUpdate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/drawer/MyDrawerLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyViewHost;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/app/DrawerActivity;Lcom/narvii/widget/ProxyViewHost;)Lcom/narvii/widget/ProxyViewHost;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity;->drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/drawer/DrawerView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyViewHost;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerHost:Lcom/narvii/widget/ProxyViewHost;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/community/CBBHost;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/app/DrawerActivity;->cbbHost:Lcom/narvii/community/CBBHost;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/community/VisitorBarHost;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarHost:Lcom/narvii/community/VisitorBarHost;

    return-object p0
.end method

.method private changeDrawerUsability()V
    .locals 4

    .line 255
    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->disableDrawer:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 256
    :goto_0
    iget-object v3, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    invoke-static {v3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 257
    iget-object v3, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    invoke-static {v3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 258
    iget-object v3, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    invoke-static {v3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 259
    iget-object v3, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    invoke-virtual {v3, v1, v0}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(ILandroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    iget-object v2, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(ILandroid/view/View;)V

    goto :goto_1

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    invoke-virtual {v3, v2, v0}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(ILandroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(ILandroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private ensureCBB()V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbHost:Lcom/narvii/community/CBBHost;

    if-nez v0, :cond_0

    const-string v0, "cbbHost"

    .line 594
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 595
    instance-of v1, v0, Lcom/narvii/widget/ProxyViewHost;

    if-eqz v1, :cond_0

    .line 596
    check-cast v0, Lcom/narvii/community/CBBHost;

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbHost:Lcom/narvii/community/CBBHost;

    .line 597
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_0

    .line 598
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->cbbHost:Lcom/narvii/community/CBBHost;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyView;->setHost(Lcom/narvii/widget/ProxyViewHost;)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbHost:Lcom/narvii/community/CBBHost;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    if-eqz v1, :cond_1

    .line 603
    invoke-virtual {v0, v1}, Lcom/narvii/community/CBBHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    :cond_1
    return-void
.end method

.method private ensureDrawer()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    if-nez v0, :cond_0

    const-string v0, "drawerHost"

    .line 553
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 554
    instance-of v1, v0, Lcom/narvii/widget/ProxyViewHost;

    if-eqz v1, :cond_0

    .line 555
    check-cast v0, Lcom/narvii/widget/ProxyViewHost;

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 556
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyView;->setHost(Lcom/narvii/widget/ProxyViewHost;)V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    if-eqz v0, :cond_1

    .line 560
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyViewHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    :cond_1
    return-void
.end method

.method private ensureLiveLayer()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerHost:Lcom/narvii/widget/ProxyViewHost;

    if-nez v0, :cond_0

    const-string v0, "liveLayerHost"

    .line 579
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 580
    instance-of v1, v0, Lcom/narvii/widget/ProxyViewHost;

    if-eqz v1, :cond_0

    .line 581
    check-cast v0, Lcom/narvii/widget/ProxyViewHost;

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerHost:Lcom/narvii/widget/ProxyViewHost;

    .line 582
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_0

    .line 583
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->liveLayerHost:Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyView;->setHost(Lcom/narvii/widget/ProxyViewHost;)V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerHost:Lcom/narvii/widget/ProxyViewHost;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    if-eqz v1, :cond_1

    .line 588
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyViewHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    :cond_1
    return-void
.end method

.method private ensureRightDrawer()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

    if-nez v0, :cond_0

    const-string v0, "drawerRightHost"

    .line 566
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 567
    instance-of v1, v0, Lcom/narvii/widget/ProxyViewHost;

    if-eqz v1, :cond_0

    .line 568
    check-cast v0, Lcom/narvii/widget/ProxyViewHost;

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

    .line 569
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyView;->setHost(Lcom/narvii/widget/ProxyViewHost;)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightHost:Lcom/narvii/widget/ProxyViewHost;

    if-eqz v0, :cond_1

    .line 573
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyViewHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    :cond_1
    return-void
.end method

.method private ensureVisitorBar()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarHost:Lcom/narvii/community/VisitorBarHost;

    if-nez v0, :cond_0

    const-string/jumbo v0, "visitorBarHost"

    .line 609
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 610
    instance-of v1, v0, Lcom/narvii/widget/ProxyViewHost;

    if-eqz v1, :cond_0

    .line 611
    check-cast v0, Lcom/narvii/community/VisitorBarHost;

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarHost:Lcom/narvii/community/VisitorBarHost;

    .line 612
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_0

    .line 613
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->visitorBarHost:Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyView;->setHost(Lcom/narvii/widget/ProxyViewHost;)V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarHost:Lcom/narvii/community/VisitorBarHost;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    if-eqz v1, :cond_1

    .line 618
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyViewHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    :cond_1
    return-void
.end method

.method private initCBB()V
    .locals 5

    .line 363
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    const v1, 0x7f0901b4

    const/4 v2, 0x0

    const v3, 0x7f0b0087

    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x1020002

    .line 366
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 367
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 368
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ProxyView;

    iput-object v1, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    .line 369
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v4, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ProxyView;

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    .line 373
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    iget v2, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 375
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->updateCBBVisibility()V

    :cond_1
    return-void
.end method

.method private initDrawer()V
    .locals 7

    const-string v0, "mContentRoot"

    .line 272
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasDrawer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 274
    sget-object v2, Lcom/narvii/app/DrawerActivity;->buf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 275
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 276
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 277
    sget-object v6, Lcom/narvii/app/DrawerActivity;->buf:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 281
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0b01da

    const/4 v5, 0x1

    .line 282
    invoke-virtual {v2, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v4, 0x7f090393

    .line 283
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/drawer/MyDrawerLayout;

    iput-object v4, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    .line 286
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v4, v6, :cond_1

    .line 287
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 288
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 289
    iget-object v5, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 292
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    invoke-virtual {v0, p0}, Lcom/narvii/drawer/DrawerLayout;->setDrawerListener(Lcom/narvii/drawer/DrawerLayout$DrawerListener;)V

    .line 295
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    const v1, 0x7f090394

    .line 296
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerView;

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    .line 297
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    const v1, 0x7f0903a1

    .line 298
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerView;

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    .line 299
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 300
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07012c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 301
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07012b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 302
    sget v5, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    add-int/2addr v1, v4

    :cond_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 303
    iput v3, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    .line 304
    sget-object v0, Lcom/narvii/app/DrawerActivity;->buf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 305
    iget-object v4, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    iget v5, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 307
    :cond_3
    sget-object v0, Lcom/narvii/app/DrawerActivity;->buf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const v0, 0x7f0b01d9

    .line 309
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    .line 311
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    const v1, 0x7f090593

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/app/DrawerActivity$4;

    invoke-direct {v1, p0}, Lcom/narvii/app/DrawerActivity$4;-><init>(Lcom/narvii/app/DrawerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "config"

    .line 317
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 318
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    const v4, 0x7f090592

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/TintButton;

    .line 320
    invoke-virtual {v1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 321
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    iget v4, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 323
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initLiveLayer()V

    .line 324
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initCBB()V

    .line 327
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasPostEntry()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0b0586

    .line 328
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/entry/PostEntryView;

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    .line 330
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getPostEntryLift()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/narvii/post/entry/PostEntryView;->setLift1(IZ)V

    .line 331
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    iget v4, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    const v0, 0x7f0b0479

    .line 335
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    iget v2, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 338
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->inVisitorMode:Z

    if-eqz v0, :cond_5

    .line 339
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->updateVisitorModeUI()V

    :cond_5
    return-void
.end method

.method private initLiveLayer()V
    .locals 5

    .line 347
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/narvii/livelayer/LiveLayerService;->OPEN:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasOnlineBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    const v1, 0x7f090689

    const/4 v2, 0x0

    const v3, 0x7f0b04e3

    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x1020002

    .line 350
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 351
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 352
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ProxyView;

    iput-object v1, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    .line 353
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v4, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 356
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ProxyView;

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    .line 357
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    iget v2, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initVisitorBar()V
    .locals 5

    .line 380
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isInVisitorMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasVisitorBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    const v1, 0x7f090cb4

    const/4 v2, 0x0

    const v3, 0x7f0b06de

    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x1020002

    .line 383
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 384
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 385
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ProxyView;

    iput-object v1, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    .line 386
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v4, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 389
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ProxyView;

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    .line 390
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    iget v2, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/narvii/app/DrawerActivity;->drawerLayoutViewCount:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 392
    :goto_0
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->updateVisitorBarVisibility()V

    :cond_1
    return-void
.end method

.method private onCommunityUpdate()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v0

    .line 424
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/narvii/app/DrawerActivity;->isPostEnabled:Z

    if-eq v0, v2, :cond_1

    .line 425
    iput-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->isPostEnabled:Z

    .line 426
    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->isPostEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setCBBVisible(Z)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 811
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateVisitorBarVisibility()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->visitorBarView:Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bottomPadding(Lcom/narvii/app/NVFragment;)I
    .locals 2

    .line 793
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getCBBLift()I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    return v0

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasPostEntry()Z

    move-result v0

    const/high16 v1, 0x42780000    # 62.0f

    if-eqz v0, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getPostEntryLift()I

    move-result p1

    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasOnlineBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getOnlineBarLift()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public closeDrawers()V
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers()V

    :cond_0
    return-void
.end method

.method public closeDrawersDirectly()V
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/narvii/drawer/MyDrawerLayout;->closeDrawersDirectly()V

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

    .line 442
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initDrawer()V

    .line 443
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initCBB()V

    .line 444
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbView:Lcom/narvii/widget/ProxyView;

    return-object v0
.end method

.method public getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;
    .locals 1

    .line 480
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initDrawer()V

    .line 481
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    return-object v0
.end method

.method public getLiveLayerView()Landroid/view/View;
    .locals 1

    .line 436
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initDrawer()V

    .line 437
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initLiveLayer()V

    .line 438
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

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

    .line 431
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initDrawer()V

    .line 432
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    return-object v0
.end method

.method public hasCBB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hasCommunityId()Z
    .locals 2

    .line 407
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isGlobal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "config"

    .line 410
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 411
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasDrawer()Z
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCommunityId()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOnlineBar()Z
    .locals 1

    .line 464
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasPostEntry()Z

    move-result v0

    return v0
.end method

.method public hasPostEntry()Z
    .locals 1

    .line 460
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCommunityId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    .line 750
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 752
    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->abInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 754
    iput-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->abInited:Z

    .line 756
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 757
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 758
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 759
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lcom/narvii/util/actionbar/ActionBarLayout;

    if-eqz v0, :cond_3

    .line 761
    new-instance v1, Lcom/narvii/app/DrawerActivity$5;

    invoke-direct {v1, p0}, Lcom/narvii/app/DrawerActivity$5;-><init>(Lcom/narvii/app/DrawerActivity;)V

    .line 779
    invoke-virtual {v0, v1}, Lcom/narvii/util/actionbar/ActionBarLayout;->setOnGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V

    :cond_3
    return-void
.end method

.method public isDrawerIdle()Z
    .locals 1

    .line 665
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

    .line 512
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v2, 0x800005

    .line 514
    invoke-virtual {v0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x800003

    invoke-virtual {v0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isLeftDrawerVisible()Z
    .locals 2

    .line 520
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x800003

    .line 522
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 740
    invoke-static {p0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 743
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/app/DrawerActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 100
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/app/DrawerActivity;->isPostEnabled:Z

    .line 101
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x64

    .line 102
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 207
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 210
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .line 682
    instance-of v0, p1, Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_0

    .line 683
    check-cast p1, Lcom/narvii/widget/ProxyView;

    const v0, 0xfb0003

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ProxyView;->sendEvent(ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onDrawerEvent(ILjava/lang/Object;)Z
    .locals 3

    const/4 p2, 0x1

    const v0, 0xfa0001

    if-ne p1, v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->closeDrawers()V

    return p2

    :cond_0
    const v0, 0xfa0005

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    const-string p1, "account"

    .line 717
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    if-eqz p1, :cond_1

    .line 718
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "postEntry"

    .line 719
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/entry/PostEntryDialog;

    if-eqz p1, :cond_2

    .line 721
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->GlobalComposeMenu:Lcom/narvii/util/logging/LoggingSource;

    const-string v2, "Left Side Panel"

    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/post/entry/PostEntryDialog;->show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;)V

    goto :goto_0

    .line 724
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 725
    sget-object v0, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "promptType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return p2

    :cond_3
    return v1
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3

    .line 670
    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->skipNextDrawerOpenedEvent:Z

    if-nez v0, :cond_1

    .line 671
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "SideMenu"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerHost:Lcom/narvii/widget/ProxyViewHost;

    instance-of v2, v1, Lcom/narvii/drawer/DrawerHost;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/narvii/drawer/DrawerHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->fakePVId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "SideMenuArea"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 673
    iput-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->skipNextDrawerOpenedEvent:Z

    .line 675
    :goto_1
    instance-of v0, p1, Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_2

    .line 676
    check-cast p1, Lcom/narvii/widget/ProxyView;

    const v0, 0xfb0002

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ProxyView;->sendEvent(ILjava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3

    .line 632
    iput p2, p0, Lcom/narvii/app/DrawerActivity;->drawerOffset:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    if-ne p1, v1, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureDrawer()V

    :cond_0
    cmpl-float v1, p2, v0

    if-eqz v1, :cond_1

    .line 638
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    if-ne p1, v1, :cond_1

    .line 639
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureRightDrawer()V

    .line 642
    :cond_1
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    if-eqz v1, :cond_2

    cmpl-float v2, p2, v0

    if-eqz v2, :cond_2

    .line 643
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 644
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    const v2, 0x7f01003f

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 648
    :cond_2
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    if-eqz v1, :cond_3

    cmpl-float v0, p2, v0

    if-nez v0, :cond_3

    .line 649
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    const v1, 0x7f010043

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 655
    :cond_3
    instance-of v0, p1, Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_4

    .line 656
    check-cast p1, Lcom/narvii/widget/ProxyView;

    const v0, 0xfb0001

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ProxyView;->sendEvent(ILjava/lang/Object;)Z

    .line 659
    :cond_4
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 660
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_5
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 1

    .line 624
    iput p1, p0, Lcom/narvii/app/DrawerActivity;->drawerState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 626
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 697
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 706
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 168
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 169
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->skipDetachNextPause:Z

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/narvii/app/DrawerActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/app/DrawerActivity$1;-><init>(Lcom/narvii/app/DrawerActivity;)V

    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    .line 198
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->skipDetachNextPause:Z

    :goto_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 217
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initDrawer()V

    .line 218
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initLiveLayer()V

    .line 219
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initCBB()V

    .line 220
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->initVisitorBar()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 107
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 109
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/narvii/app/DrawerActivity;->detachAll:Ljava/lang/Runnable;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureDrawer()V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerLayout:Lcom/narvii/drawer/MyDrawerLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerRightView:Lcom/narvii/drawer/DrawerView;

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureRightDrawer()V

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 121
    iget-boolean v2, p0, Lcom/narvii/app/DrawerActivity;->isPostEnabled:Z

    if-nez v2, :cond_3

    const/16 v2, 0x8

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 125
    :cond_4
    sget-boolean v0, Lcom/narvii/livelayer/LiveLayerService;->OPEN:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasOnlineBar()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureLiveLayer()V

    .line 127
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerHost:Lcom/narvii/widget/ProxyViewHost;

    if-eqz v0, :cond_5

    const v2, 0x7f09049b

    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 129
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getOnlineBarLift()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setLift(I)V

    .line 130
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string/jumbo v2, "prefs"

    .line 132
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    const-string v3, "liveLayerFold"

    .line 133
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 137
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 138
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureCBB()V

    .line 139
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->cbbHost:Lcom/narvii/community/CBBHost;

    if-eqz v0, :cond_6

    .line 140
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getCBBLift()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/community/CBBHost;->setLift(I)V

    .line 144
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isInVisitorMode()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasVisitorBar()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 145
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->ensureVisitorBar()V

    .line 148
    :cond_7
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 150
    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->themeUINeedUpdate:Z

    if-eqz v0, :cond_8

    .line 151
    iput-boolean v1, p0, Lcom/narvii/app/DrawerActivity;->themeUINeedUpdate:Z

    .line 152
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->updateThemeUI()V

    .line 155
    :cond_8
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->updateVisitorModePending:Z

    if-eqz v0, :cond_9

    .line 156
    iput-boolean v1, p0, Lcom/narvii/app/NVActivity;->updateVisitorModePending:Z

    .line 157
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->updateVisitorModeUI()V

    .line 159
    :cond_9
    invoke-static {p0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    return-void
.end method

.method public openDrawer()V
    .locals 1

    const/4 v0, 0x1

    .line 485
    invoke-virtual {p0, v0}, Lcom/narvii/app/DrawerActivity;->openDrawer(Z)V

    return-void
.end method

.method public openDrawer(Z)V
    .locals 3

    .line 489
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x800005

    .line 491
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->closeDrawer(I)V

    :cond_0
    const v1, 0x800003

    .line 494
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->openDrawer(I)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 496
    iput-boolean p1, p0, Lcom/narvii/app/DrawerActivity;->skipNextDrawerOpenedEvent:Z

    :cond_1
    return-void
.end method

.method public openRightDrawer()V
    .locals 3

    .line 528
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x800003

    .line 530
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->closeDrawer(I)V

    :cond_0
    const v1, 0x800005

    .line 533
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->openDrawer(I)V

    :cond_1
    return-void
.end method

.method public peekDrawer(JJ)V
    .locals 6

    .line 785
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x800003

    move-wide v2, p1

    move-wide v4, p3

    .line 787
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/drawer/DrawerLayout;->peekDrawer(IJJ)V

    :cond_0
    return-void
.end method

.method public sendDrawerEvent(ILjava/lang/Object;)Z
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerView:Lcom/narvii/drawer/DrawerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/ProxyView;->sendEvent(ILjava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public setDisableCBB(Z)V
    .locals 0

    .line 507
    iput-boolean p1, p0, Lcom/narvii/app/DrawerActivity;->disableCBB:Z

    .line 508
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->updateCBBVisibility()V

    return-void
.end method

.method public setDisableDrawer(Z)V
    .locals 0

    .line 502
    iput-boolean p1, p0, Lcom/narvii/app/DrawerActivity;->disableDrawer:Z

    .line 503
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->changeDrawerUsability()V

    return-void
.end method

.method public setLiverLayerBarVisible(Z)V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->liveLayerView:Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 805
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setSkipDetachNextPause(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/narvii/app/DrawerActivity;->skipDetachNextPause:Z

    return-void
.end method

.method public updateCBBVisibility()V
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/app/DrawerActivity;->disableCBB:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/narvii/app/DrawerActivity;->setCBBVisible(Z)V

    return-void
.end method

.method public updatePostEntryFrameVisible(Z)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 419
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public updateThemeUI()V
    .locals 3

    .line 817
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->updateThemeUI()V

    .line 818
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "config"

    .line 819
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 820
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    .line 821
    iget-object v1, p0, Lcom/narvii/app/DrawerActivity;->drawerIndicator:Landroid/view/View;

    const v2, 0x7f090592

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/TintButton;

    if-eqz v1, :cond_0

    .line 823
    invoke-virtual {v1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 828
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasPostEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/app/DrawerActivity;->postEntryFrame:Lcom/narvii/post/entry/PostEntryView;

    if-eqz v0, :cond_1

    .line 829
    invoke-virtual {v0}, Lcom/narvii/post/entry/PostEntryView;->updateThemeUI()V

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActionBarCustomed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 832
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->setStatusBar()V

    .line 833
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->setActionBarBackgroundDefault()V

    .line 835
    :cond_2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->themeDownloadObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 836
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->onThemeDownloadFinish()V

    goto :goto_0

    .line 839
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isPagebackgroundEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 842
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    return-void

    .line 846
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->configPageBackground()V

    return-void
.end method

.method protected updateVisitorModeUI()V
    .locals 0

    .line 851
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->changeDrawerUsability()V

    .line 852
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->updateCBBVisibility()V

    .line 853
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;->updateVisitorBarVisibility()V

    return-void
.end method
