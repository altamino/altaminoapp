.class final Lcom/google/android/exoplayer2/drm/g$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final allowRetry:Z

.field public errorCount:I

.field public final request:Ljava/lang/Object;

.field public final startTimeMs:J

.field public final taskId:J


# direct methods
.method public constructor <init>(JZJLjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/drm/g$d;->taskId:J

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/drm/g$d;->allowRetry:Z

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/google/android/exoplayer2/drm/g$d;->startTimeMs:J

    .line 10
    .line 11
    iput-object p6, p0, Lcom/google/android/exoplayer2/drm/g$d;->request:Ljava/lang/Object;

    .line 12
    return-void
.end method
