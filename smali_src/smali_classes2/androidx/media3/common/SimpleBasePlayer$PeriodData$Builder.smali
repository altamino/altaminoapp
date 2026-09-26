.class public final Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/SimpleBasePlayer$PeriodData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adPlaybackState:Landroidx/media3/common/AdPlaybackState;

.field private durationUs:J

.field private isPlaceholder:Z

.field private uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->uid:Ljava/lang/Object;

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->durationUs:J

    .line 10
    .line 11
    sget-object p1, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 14
    const/4 p1, 0x0

    .line 15
    .line 16
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->isPlaceholder:Z

    .line 17
    return-void
.end method
