.class public final Lx2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lx2/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_CONTENT_RESUME_OFFSET_US:I = 0x5

.field private static final FIELD_COUNT:I = 0x1

.field private static final FIELD_DURATIONS_US:I = 0x4

.field private static final FIELD_IS_SERVER_SIDE_INSERTED:I = 0x6

.field private static final FIELD_ORIGINAL_COUNT:I = 0x7

.field private static final FIELD_STATES:I = 0x3

.field private static final FIELD_TIME_US:I = 0x0

.field private static final FIELD_URIS:I = 0x2


# instance fields
.field public final contentResumeOffsetUs:J

.field public final count:I

.field public final durationsUs:[J

.field public final isServerSideInserted:Z

.field public final originalCount:I

.field public final states:[I

.field public final timeUs:J

.field public final uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lx2/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lx2/b;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lx2/c$a;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 8
    return-void
.end method

.method public constructor <init>(J)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    new-array v5, v0, [I

    new-array v6, v0, [Landroid/net/Uri;

    new-array v7, v0, [J

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 1
    invoke-direct/range {v0 .. v10}, Lx2/c$a;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-void
.end method

.method private constructor <init>(JII[I[Landroid/net/Uri;[JJZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p5

    array-length v1, p6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-wide p1, p0, Lx2/c$a;->timeUs:J

    iput p3, p0, Lx2/c$a;->count:I

    iput p4, p0, Lx2/c$a;->originalCount:I

    iput-object p5, p0, Lx2/c$a;->states:[I

    iput-object p6, p0, Lx2/c$a;->uris:[Landroid/net/Uri;

    iput-object p7, p0, Lx2/c$a;->durationsUs:[J

    iput-wide p8, p0, Lx2/c$a;->contentResumeOffsetUs:J

    iput-boolean p10, p0, Lx2/c$a;->isServerSideInserted:Z

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lx2/c$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lx2/c$a;->d(Landroid/os/Bundle;)Lx2/c$a;

    move-result-object p0

    return-object p0
.end method

.method private static b([JI)[J
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 5
    move-result p1

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, p1, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 18
    return-object p0
.end method

.method private static c([II)[I
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 5
    move-result p1

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 14
    return-object p0
.end method

.method private static d(Landroid/os/Bundle;)Lx2/c$a;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 9
    move-result-wide v3

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, -0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 19
    move-result v5

    .line 20
    const/4 v1, 0x7

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 28
    move-result v6

    .line 29
    const/4 v1, 0x2

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x3

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 46
    move-result-object v2

    .line 47
    const/4 v7, 0x4

    .line 48
    .line 49
    .line 50
    invoke-static {v7}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 51
    move-result-object v7

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v7}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    .line 55
    move-result-object v7

    .line 56
    const/4 v8, 0x5

    .line 57
    .line 58
    .line 59
    invoke-static {v8}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 60
    move-result-object v8

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 64
    move-result-wide v10

    .line 65
    const/4 v8, 0x6

    .line 66
    .line 67
    .line 68
    invoke-static {v8}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 69
    move-result-object v8

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 73
    move-result v12

    .line 74
    .line 75
    new-instance p0, Lx2/c$a;

    .line 76
    .line 77
    if-nez v2, :cond_0

    .line 78
    .line 79
    new-array v2, v0, [I

    .line 80
    :cond_0
    move-object v8, v2

    .line 81
    .line 82
    if-nez v1, :cond_1

    .line 83
    .line 84
    new-array v1, v0, [Landroid/net/Uri;

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_1
    new-array v2, v0, [Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    check-cast v1, [Landroid/net/Uri;

    .line 94
    .line 95
    :goto_0
    if-nez v7, :cond_2

    .line 96
    .line 97
    new-array v0, v0, [J

    .line 98
    move-object v9, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move-object v9, v7

    .line 101
    :goto_1
    move-object v2, p0

    .line 102
    move-object v7, v8

    .line 103
    move-object v8, v1

    .line 104
    .line 105
    .line 106
    invoke-direct/range {v2 .. v12}, Lx2/c$a;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    .line 107
    return-object p0
.end method

.method private static h(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x24

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public e()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lx2/c$a;->f(I)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-class v3, Lx2/c$a;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lx2/c$a;

    .line 19
    .line 20
    iget-wide v2, p0, Lx2/c$a;->timeUs:J

    .line 21
    .line 22
    iget-wide v4, p1, Lx2/c$a;->timeUs:J

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    iget v2, p0, Lx2/c$a;->count:I

    .line 29
    .line 30
    iget v3, p1, Lx2/c$a;->count:I

    .line 31
    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    iget v2, p0, Lx2/c$a;->originalCount:I

    .line 35
    .line 36
    iget v3, p1, Lx2/c$a;->originalCount:I

    .line 37
    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lx2/c$a;->uris:[Landroid/net/Uri;

    .line 41
    .line 42
    iget-object v3, p1, Lx2/c$a;->uris:[Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 46
    move-result v2

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lx2/c$a;->states:[I

    .line 51
    .line 52
    iget-object v3, p1, Lx2/c$a;->states:[I

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 56
    move-result v2

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lx2/c$a;->durationsUs:[J

    .line 61
    .line 62
    iget-object v3, p1, Lx2/c$a;->durationsUs:[J

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 66
    move-result v2

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-wide v2, p0, Lx2/c$a;->contentResumeOffsetUs:J

    .line 71
    .line 72
    iget-wide v4, p1, Lx2/c$a;->contentResumeOffsetUs:J

    .line 73
    .line 74
    cmp-long v2, v2, v4

    .line 75
    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    iget-boolean v2, p0, Lx2/c$a;->isServerSideInserted:Z

    .line 79
    .line 80
    iget-boolean p1, p1, Lx2/c$a;->isServerSideInserted:Z

    .line 81
    .line 82
    if-ne v2, p1, :cond_2

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move v0, v1

    .line 85
    :goto_0
    return v0

    .line 86
    :cond_3
    :goto_1
    return v1
.end method

.method public f(I)I
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/2addr p1, v0

    .line 3
    .line 4
    :goto_0
    iget-object v1, p0, Lx2/c$a;->states:[I

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-ge p1, v2, :cond_1

    .line 8
    .line 9
    iget-boolean v2, p0, Lx2/c$a;->isServerSideInserted:Z

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    aget v1, v1, p1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    if-ne v1, v0, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    return p1
.end method

.method public g()Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lx2/c$a;->count:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    return v2

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    .line 11
    :goto_0
    iget v3, p0, Lx2/c$a;->count:I

    .line 12
    .line 13
    if-ge v1, v3, :cond_3

    .line 14
    .line 15
    iget-object v3, p0, Lx2/c$a;->states:[I

    .line 16
    .line 17
    aget v3, v3, v1

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    if-ne v3, v2, :cond_1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    :goto_1
    return v2

    .line 27
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lx2/c$a;->count:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    .line 6
    iget v1, p0, Lx2/c$a;->originalCount:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-wide v1, p0, Lx2/c$a;->timeUs:J

    .line 12
    .line 13
    const/16 v3, 0x20

    .line 14
    .line 15
    ushr-long v4, v1, v3

    .line 16
    xor-long/2addr v1, v4

    .line 17
    long-to-int v1, v1

    .line 18
    add-int/2addr v0, v1

    .line 19
    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-object v1, p0, Lx2/c$a;->uris:[Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 26
    move-result v1

    .line 27
    add-int/2addr v0, v1

    .line 28
    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget-object v1, p0, Lx2/c$a;->states:[I

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 35
    move-result v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v1, p0, Lx2/c$a;->durationsUs:[J

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    .line 44
    move-result v1

    .line 45
    add-int/2addr v0, v1

    .line 46
    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-wide v1, p0, Lx2/c$a;->contentResumeOffsetUs:J

    .line 50
    .line 51
    ushr-long v3, v1, v3

    .line 52
    xor-long/2addr v1, v3

    .line 53
    long-to-int v1, v1

    .line 54
    add-int/2addr v0, v1

    .line 55
    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-boolean v1, p0, Lx2/c$a;->isServerSideInserted:Z

    .line 59
    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lx2/c$a;->count:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lx2/c$a;->e()I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget v1, p0, Lx2/c$a;->count:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    return v0
.end method

.method public j(I)Lx2/c$a;
    .locals 12
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lx2/c$a;->states:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lx2/c$a;->c([II)[I

    .line 6
    move-result-object v6

    .line 7
    .line 8
    iget-object v0, p0, Lx2/c$a;->durationsUs:[J

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lx2/c$a;->b([JI)[J

    .line 12
    move-result-object v8

    .line 13
    .line 14
    iget-object v0, p0, Lx2/c$a;->uris:[Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    move-object v7, v0

    .line 20
    .line 21
    check-cast v7, [Landroid/net/Uri;

    .line 22
    .line 23
    new-instance v0, Lx2/c$a;

    .line 24
    .line 25
    iget-wide v2, p0, Lx2/c$a;->timeUs:J

    .line 26
    .line 27
    iget v5, p0, Lx2/c$a;->originalCount:I

    .line 28
    .line 29
    iget-wide v9, p0, Lx2/c$a;->contentResumeOffsetUs:J

    .line 30
    .line 31
    iget-boolean v11, p0, Lx2/c$a;->isServerSideInserted:Z

    .line 32
    move-object v1, v0

    .line 33
    move v4, p1

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v1 .. v11}, Lx2/c$a;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    .line 37
    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-wide v2, p0, Lx2/c$a;->timeUs:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget v2, p0, Lx2/c$a;->count:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    const/4 v1, 0x7

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, p0, Lx2/c$a;->originalCount:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const/4 v1, 0x2

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v3, p0, Lx2/c$a;->uris:[Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 55
    const/4 v1, 0x3

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    iget-object v2, p0, Lx2/c$a;->states:[I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 65
    const/4 v1, 0x4

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    iget-object v2, p0, Lx2/c$a;->durationsUs:[J

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 75
    const/4 v1, 0x5

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    iget-wide v2, p0, Lx2/c$a;->contentResumeOffsetUs:J

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 85
    const/4 v1, 0x6

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lx2/c$a;->h(I)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    iget-boolean v2, p0, Lx2/c$a;->isServerSideInserted:Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    return-object v0
.end method
