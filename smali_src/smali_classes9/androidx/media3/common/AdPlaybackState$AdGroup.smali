.class public final Landroidx/media3/common/AdPlaybackState$AdGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AdPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdGroup"
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/AdPlaybackState$AdGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

.field private static final FIELD_COUNT:Ljava/lang/String;

.field private static final FIELD_DURATIONS_US:Ljava/lang/String;

.field private static final FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

.field private static final FIELD_ORIGINAL_COUNT:Ljava/lang/String;

.field private static final FIELD_STATES:Ljava/lang/String;

.field private static final FIELD_TIME_US:Ljava/lang/String;

.field private static final FIELD_URIS:Ljava/lang/String;


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
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    .line 15
    const/4 v0, 0x2

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    .line 22
    const/4 v0, 0x3

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    .line 29
    const/4 v0, 0x4

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    .line 36
    const/4 v0, 0x5

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    .line 43
    const/4 v0, 0x6

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    .line 50
    const/4 v0, 0x7

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v0, Landroidx/media3/common/b;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0}, Landroidx/media3/common/b;-><init>()V

    .line 62
    .line 63
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 64
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
    invoke-direct/range {v0 .. v10}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

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
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V

    iput-wide p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iput p3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iput p4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iput-object p5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iput-object p6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iput-object p7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iput-wide p8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iput-boolean p10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->e(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroidx/media3/common/AdPlaybackState$AdGroup;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->i()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static c([JI)[J
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

.method private static d([II)[I
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

.method private static e(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 13

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 6
    move-result-wide v2

    .line 7
    .line 8
    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 12
    move-result v4

    .line 13
    .line 14
    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 18
    move-result v5

    .line 19
    .line 20
    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 30
    move-result-object v1

    .line 31
    .line 32
    sget-object v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v6}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    .line 36
    move-result-object v6

    .line 37
    .line 38
    sget-object v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 42
    move-result-wide v9

    .line 43
    .line 44
    sget-object v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 48
    move-result v11

    .line 49
    .line 50
    new-instance p0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 51
    const/4 v7, 0x0

    .line 52
    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    new-array v1, v7, [I

    .line 56
    :cond_0
    move-object v8, v1

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    new-array v0, v7, [Landroid/net/Uri;

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_1
    new-array v1, v7, [Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, [Landroid/net/Uri;

    .line 70
    .line 71
    :goto_0
    if-nez v6, :cond_2

    .line 72
    .line 73
    new-array v1, v7, [J

    .line 74
    move-object v12, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move-object v12, v6

    .line 77
    :goto_1
    move-object v1, p0

    .line 78
    move-object v6, v8

    .line 79
    move-object v7, v0

    .line 80
    move-object v8, v12

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v1 .. v11}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    .line 84
    return-object p0
.end method

.method private i()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
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
    const-class v3, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 19
    .line 20
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 21
    .line 22
    iget-wide v4, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 29
    .line 30
    iget v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 31
    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 35
    .line 36
    iget v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 37
    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 41
    .line 42
    iget-object v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

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
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 51
    .line 52
    iget-object v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

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
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 61
    .line 62
    iget-object v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

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
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 71
    .line 72
    iget-wide v4, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 73
    .line 74
    cmp-long v2, v2, v4

    .line 75
    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 79
    .line 80
    iget-boolean p1, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

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

.method public f()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->g(I)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public g(I)I
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
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-ge p1, v2, :cond_1

    .line 8
    .line 9
    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

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

.method public h()Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

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
    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 12
    .line 13
    if-ge v1, v3, :cond_3

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

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
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    .line 6
    iget v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

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
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

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
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

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
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

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
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

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
    iget-boolean v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 59
    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->f()I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

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

.method public k(I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 12
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->d([II)[I

    .line 6
    move-result-object v6

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->c([JI)[J

    .line 12
    move-result-object v8

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

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
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 24
    .line 25
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 26
    .line 27
    iget v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 28
    .line 29
    iget-wide v9, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 30
    .line 31
    iget-boolean v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 32
    move-object v1, v0

    .line 33
    move v4, p1

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v1 .. v11}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    .line 37
    return-object v0
.end method

.method public l([J)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 11
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 4
    array-length v2, v1

    .line 5
    .line 6
    if-ge v0, v2, :cond_1

    .line 7
    array-length v0, v1

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->c([JI)[J

    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    move-object v7, p1

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_1
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 16
    const/4 v2, -0x1

    .line 17
    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    array-length v0, p1

    .line 20
    array-length v2, v1

    .line 21
    .line 22
    if-le v0, v2, :cond_0

    .line 23
    array-length v0, v1

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :goto_1
    new-instance p1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 31
    .line 32
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 33
    .line 34
    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 35
    .line 36
    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 37
    .line 38
    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 39
    .line 40
    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 41
    .line 42
    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 43
    .line 44
    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 45
    move-object v0, p1

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v0 .. v10}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    .line 49
    return-object p1
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
    .line 7
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 13
    .line 14
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    .line 15
    .line 16
    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    .line 22
    .line 23
    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 43
    .line 44
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 50
    .line 51
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 57
    .line 58
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    .line 59
    .line 60
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 64
    .line 65
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    .line 66
    .line 67
    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    return-object v0
.end method
