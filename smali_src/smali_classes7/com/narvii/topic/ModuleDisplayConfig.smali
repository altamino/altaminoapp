.class public Lcom/narvii/topic/ModuleDisplayConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isPagingLoad:Z

.field public isSerialQuery:Z

.field public isTop:Z

.field public isTopStoryModule:Z

.field public showTitle:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/topic/ModuleDisplayConfig;->showTitle:Z

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/topic/ModuleDisplayConfig;->isSerialQuery:Z

    .line 9
    .line 10
    iput-boolean p2, p0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    .line 11
    return-void
.end method
