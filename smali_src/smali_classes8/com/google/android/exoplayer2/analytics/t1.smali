.class public final Lcom/google/android/exoplayer2/analytics/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/t1$a;
    }
.end annotation


# static fields
.field public static final UNSET:Lcom/google/android/exoplayer2/analytics/t1;


# instance fields
.field private final logSessionIdApi31:Lcom/google/android/exoplayer2/analytics/t1$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1f

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/analytics/t1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/android/exoplayer2/analytics/t1;-><init>()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/analytics/t1;

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/exoplayer2/analytics/t1$a;->UNSET:Lcom/google/android/exoplayer2/analytics/t1$a;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/analytics/t1;-><init>(Lcom/google/android/exoplayer2/analytics/t1$a;)V

    .line 20
    .line 21
    :goto_0
    sput-object v0, Lcom/google/android/exoplayer2/analytics/t1;->UNSET:Lcom/google/android/exoplayer2/analytics/t1;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/t1;-><init>(Lcom/google/android/exoplayer2/analytics/t1$a;)V

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/analytics/t1$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/analytics/t1$a;-><init>(Landroid/media/metrics/LogSessionId;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/t1;-><init>(Lcom/google/android/exoplayer2/analytics/t1$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/analytics/t1$a;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/analytics/t1$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/t1;->logSessionIdApi31:Lcom/google/android/exoplayer2/analytics/t1$a;

    return-void
.end method


# virtual methods
.method public a()Landroid/media/metrics/LogSessionId;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/t1;->logSessionIdApi31:Lcom/google/android/exoplayer2/analytics/t1$a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/analytics/t1$a;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/t1$a;->logSessionId:Landroid/media/metrics/LogSessionId;

    .line 11
    return-object v0
.end method
