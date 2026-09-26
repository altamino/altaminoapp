.class public Lcom/google/firebase/perf/util/Timer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/util/Timer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private elapsedRealtimeMicros:J

.field private wallClockMicros:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/perf/util/Timer$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/perf/util/Timer$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/perf/util/Timer;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/util/Timer;->m()J

    move-result-wide v0

    invoke-static {}, Lcom/google/firebase/perf/util/Timer;->c()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/firebase/perf/util/Timer;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p1, p2}, Lcom/google/firebase/perf/util/Timer;-><init>(JJ)V

    return-void
.end method

.method constructor <init>(JJ)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/perf/util/Timer;->wallClockMicros:J

    iput-wide p3, p0, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/firebase/perf/util/Timer;-><init>(JJ)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/firebase/perf/util/Timer$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/util/Timer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static c()J
    .locals 3

    .line 1
    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static k(J)Lcom/google/firebase/perf/util/Timer;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 6
    move-result-wide p0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/firebase/perf/util/Timer;->m()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/google/firebase/perf/util/Timer;->c()J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    sub-long v2, p0, v2

    .line 17
    add-long/2addr v0, v2

    .line 18
    .line 19
    new-instance v2, Lcom/google/firebase/perf/util/Timer;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v0, v1, p0, p1}, Lcom/google/firebase/perf/util/Timer;-><init>(JJ)V

    .line 23
    return-object v2
.end method

.method private static m()J
    .locals 3

    .line 1
    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->wallClockMicros:J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 6
    move-result-wide v2

    .line 7
    add-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public g()J
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/perf/util/Timer;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/util/Timer;->h(Lcom/google/firebase/perf/util/Timer;)J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public h(Lcom/google/firebase/perf/util/Timer;)J
    .locals 4
    .param p1    # Lcom/google/firebase/perf/util/Timer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-wide v0, p1, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros:J

    .line 3
    .line 4
    iget-wide v2, p0, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros:J

    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->wallClockMicros:J

    return-wide v0
.end method

.method public l()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/perf/util/Timer;->m()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->wallClockMicros:J

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/firebase/perf/util/Timer;->c()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros:J

    .line 13
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->wallClockMicros:J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros:J

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    return-void
.end method
