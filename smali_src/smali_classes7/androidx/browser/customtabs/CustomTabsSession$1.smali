.class Landroidx/browser/customtabs/CustomTabsSession$1;
.super Landroid/support/customtabs/c$a;
.source "SourceFile"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroidx/browser/customtabs/CustomTabsSession;

.field final synthetic val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;


# direct methods
.method public static synthetic A1(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsSession$1;->D1(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic B1(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/browser/customtabs/EngagementSignalsCallback;->d(ILandroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method private static synthetic C1(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/browser/customtabs/EngagementSignalsCallback;->b(ZLandroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method private static synthetic D1(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/browser/customtabs/EngagementSignalsCallback;->c(ZLandroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public static synthetic y1(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsSession$1;->B1(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic z1(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsSession$1;->C1(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public b(ZLandroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;

    .line 5
    .line 6
    new-instance v2, Landroidx/browser/customtabs/c;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, v1, p1, p2}, Landroidx/browser/customtabs/c;-><init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public c(ZLandroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;

    .line 5
    .line 6
    new-instance v2, Landroidx/browser/customtabs/b;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, v1, p1, p2}, Landroidx/browser/customtabs/b;-><init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public d(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;

    .line 5
    .line 6
    new-instance v2, Landroidx/browser/customtabs/d;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, v1, p1, p2}, Landroidx/browser/customtabs/d;-><init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method
