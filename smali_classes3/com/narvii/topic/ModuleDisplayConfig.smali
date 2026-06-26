.class public Lcom/narvii/topic/ModuleDisplayConfig;
.super Ljava/lang/Object;
.source "ModuleDisplayConfig.java"


# instance fields
.field public isPagingLoad:Z

.field public isSerialQuery:Z

.field public isTop:Z

.field public isTopStoryModule:Z

.field public showNoStoriesYet:Z

.field public showTitle:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/narvii/topic/ModuleDisplayConfig;->showTitle:Z

    .line 28
    iput-boolean p1, p0, Lcom/narvii/topic/ModuleDisplayConfig;->isSerialQuery:Z

    .line 29
    iput-boolean p2, p0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    return-void
.end method
