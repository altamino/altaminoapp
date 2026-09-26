.class public Lcom/narvii/scene/ScenePlayBaseView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/scene/ScenePlayView;
.implements Lcom/narvii/scene/SceneInteractLogView;


# instance fields
.field protected isActive:Z

.field protected isPreview:Z

.field protected scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

.field protected startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    return-void
.end method


# virtual methods
.method public logEnd()V
    .locals 0

    return-void
.end method

.method public logStart()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->startTime:J

    .line 7
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    return-void
.end method
