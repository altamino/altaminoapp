.class final Lcom/google/android/exoplayer2/analytics/t1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final UNSET:Lcom/google/android/exoplayer2/analytics/t1$a;


# instance fields
.field public final logSessionId:Landroid/media/metrics/LogSessionId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/analytics/t1$a;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroidx/media3/exoplayer/g1;->a()Landroid/media/metrics/LogSessionId;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/analytics/t1$a;-><init>(Landroid/media/metrics/LogSessionId;)V

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/analytics/t1$a;->UNSET:Lcom/google/android/exoplayer2/analytics/t1$a;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/t1$a;->logSessionId:Landroid/media/metrics/LogSessionId;

    .line 6
    return-void
.end method
