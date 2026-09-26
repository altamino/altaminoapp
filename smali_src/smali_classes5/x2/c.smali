.class public final Lx2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx2/c$a;
    }
.end annotation


# static fields
.field public static final AD_STATE_AVAILABLE:I = 0x1

.field public static final AD_STATE_ERROR:I = 0x4

.field public static final AD_STATE_PLAYED:I = 0x3

.field public static final AD_STATE_SKIPPED:I = 0x2

.field public static final AD_STATE_UNAVAILABLE:I = 0x0

.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lx2/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_AD_GROUPS:I = 0x1

.field private static final FIELD_AD_RESUME_POSITION_US:I = 0x2

.field private static final FIELD_CONTENT_DURATION_US:I = 0x3

.field private static final FIELD_REMOVED_AD_GROUP_COUNT:I = 0x4

.field public static final NONE:Lx2/c;

.field private static final REMOVED_AD_GROUP:Lx2/c$a;


# instance fields
.field public final adGroupCount:I

.field private final adGroups:[Lx2/c$a;

.field public final adResumePositionUs:J

.field public final adsId:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final contentDurationUs:J

.field public final removedAdGroupCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    .line 2
    new-instance v8, Lx2/c;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v9, 0x0

    .line 5
    .line 6
    new-array v2, v9, [Lx2/c$a;

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    const/4 v7, 0x0

    .line 15
    move-object v0, v8

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v7}, Lx2/c;-><init>(Ljava/lang/Object;[Lx2/c$a;JJI)V

    .line 19
    .line 20
    sput-object v8, Lx2/c;->NONE:Lx2/c;

    .line 21
    .line 22
    new-instance v0, Lx2/c$a;

    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Lx2/c$a;-><init>(J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v9}, Lx2/c$a;->j(I)Lx2/c$a;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sput-object v0, Lx2/c;->REMOVED_AD_GROUP:Lx2/c$a;

    .line 34
    .line 35
    new-instance v0, Lx2/a;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Lx2/a;-><init>()V

    .line 39
    .line 40
    sput-object v0, Lx2/c;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 41
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[J)V
    .locals 8

    .line 1
    invoke-static {p2}, Lx2/c;->b([J)[Lx2/c$a;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v7}, Lx2/c;-><init>(Ljava/lang/Object;[Lx2/c$a;JJI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Lx2/c$a;JJI)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/c;->adsId:Ljava/lang/Object;

    iput-wide p3, p0, Lx2/c;->adResumePositionUs:J

    iput-wide p5, p0, Lx2/c;->contentDurationUs:J

    .line 4
    array-length p1, p2

    add-int/2addr p1, p7

    iput p1, p0, Lx2/c;->adGroupCount:I

    iput-object p2, p0, Lx2/c;->adGroups:[Lx2/c$a;

    iput p7, p0, Lx2/c;->removedAdGroupCount:I

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lx2/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lx2/c;->c(Landroid/os/Bundle;)Lx2/c;

    move-result-object p0

    return-object p0
.end method

.method private static b([J)[Lx2/c$a;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    new-array v1, v0, [Lx2/c$a;

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    new-instance v3, Lx2/c$a;

    .line 9
    .line 10
    aget-wide v4, p0, v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v3, v4, v5}, Lx2/c$a;-><init>(J)V

    .line 14
    .line 15
    aput-object v3, v1, v2

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v1
.end method

.method private static c(Landroid/os/Bundle;)Lx2/c;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lx2/c;->h(I)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-array v0, v1, [Lx2/c$a;

    .line 15
    move-object v5, v0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v2

    .line 21
    .line 22
    new-array v2, v2, [Lx2/c$a;

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v3

    .line 27
    .line 28
    if-ge v1, v3, :cond_1

    .line 29
    .line 30
    sget-object v3, Lx2/c$a;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    check-cast v4, Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, Lx2/c$a;

    .line 43
    .line 44
    aput-object v3, v2, v1

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v5, v2

    .line 49
    :goto_1
    const/4 v0, 0x2

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lx2/c;->h(I)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    const-wide/16 v1, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 59
    move-result-wide v6

    .line 60
    const/4 v0, 0x3

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lx2/c;->h(I)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 73
    move-result-wide v8

    .line 74
    const/4 v0, 0x4

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lx2/c;->h(I)Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 82
    move-result v10

    .line 83
    .line 84
    new-instance p0, Lx2/c;

    .line 85
    const/4 v4, 0x0

    .line 86
    move-object v3, p0

    .line 87
    .line 88
    .line 89
    invoke-direct/range {v3 .. v10}, Lx2/c;-><init>(Ljava/lang/Object;[Lx2/c$a;JJI)V

    .line 90
    return-object p0
.end method

.method private g(JJI)Z
    .locals 6

    .line 1
    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    .line 4
    cmp-long v2, p1, v0

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    return v3

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p5}, Lx2/c;->d(I)Lx2/c$a;

    .line 12
    move-result-object p5

    .line 13
    .line 14
    iget-wide v4, p5, Lx2/c$a;->timeUs:J

    .line 15
    .line 16
    cmp-long p5, v4, v0

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    if-nez p5, :cond_3

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    cmp-long p5, p3, v1

    .line 27
    .line 28
    if-eqz p5, :cond_1

    .line 29
    .line 30
    cmp-long p1, p1, p3

    .line 31
    .line 32
    if-gez p1, :cond_2

    .line 33
    :cond_1
    move v3, v0

    .line 34
    :cond_2
    return v3

    .line 35
    .line 36
    :cond_3
    cmp-long p1, p1, v4

    .line 37
    .line 38
    if-gez p1, :cond_4

    .line 39
    move v3, v0

    .line 40
    :cond_4
    return v3
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
.method public d(I)Lx2/c$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lx2/c;->removedAdGroupCount:I

    .line 3
    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lx2/c;->REMOVED_AD_GROUP:Lx2/c$a;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lx2/c;->adGroups:[Lx2/c$a;

    .line 10
    sub-int/2addr p1, v0

    .line 11
    .line 12
    aget-object p1, v1, p1

    .line 13
    :goto_0
    return-object p1
.end method

.method public e(JJ)I
    .locals 6

    .line 1
    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    .line 4
    cmp-long v2, p1, v0

    .line 5
    const/4 v3, -0x1

    .line 6
    .line 7
    if-eqz v2, :cond_4

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    cmp-long v2, p3, v4

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    cmp-long p3, p1, p3

    .line 19
    .line 20
    if-ltz p3, :cond_0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    iget p3, p0, Lx2/c;->removedAdGroupCount:I

    .line 24
    .line 25
    :goto_0
    iget p4, p0, Lx2/c;->adGroupCount:I

    .line 26
    .line 27
    if-ge p3, p4, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lx2/c;->d(I)Lx2/c$a;

    .line 31
    move-result-object p4

    .line 32
    .line 33
    iget-wide v4, p4, Lx2/c$a;->timeUs:J

    .line 34
    .line 35
    cmp-long p4, v4, v0

    .line 36
    .line 37
    if-eqz p4, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p3}, Lx2/c;->d(I)Lx2/c$a;

    .line 41
    move-result-object p4

    .line 42
    .line 43
    iget-wide v4, p4, Lx2/c$a;->timeUs:J

    .line 44
    .line 45
    cmp-long p4, v4, p1

    .line 46
    .line 47
    if-lez p4, :cond_2

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0, p3}, Lx2/c;->d(I)Lx2/c$a;

    .line 51
    move-result-object p4

    .line 52
    .line 53
    .line 54
    invoke-virtual {p4}, Lx2/c$a;->i()Z

    .line 55
    move-result p4

    .line 56
    .line 57
    if-nez p4, :cond_3

    .line 58
    .line 59
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    iget p1, p0, Lx2/c;->adGroupCount:I

    .line 63
    .line 64
    if-ge p3, p1, :cond_4

    .line 65
    move v3, p3

    .line 66
    :cond_4
    :goto_1
    return v3
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
    const-class v3, Lx2/c;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lx2/c;

    .line 19
    .line 20
    iget-object v2, p0, Lx2/c;->adsId:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v3, p1, Lx2/c;->adsId:Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget v2, p0, Lx2/c;->adGroupCount:I

    .line 31
    .line 32
    iget v3, p1, Lx2/c;->adGroupCount:I

    .line 33
    .line 34
    if-ne v2, v3, :cond_2

    .line 35
    .line 36
    iget-wide v2, p0, Lx2/c;->adResumePositionUs:J

    .line 37
    .line 38
    iget-wide v4, p1, Lx2/c;->adResumePositionUs:J

    .line 39
    .line 40
    cmp-long v2, v2, v4

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    iget-wide v2, p0, Lx2/c;->contentDurationUs:J

    .line 45
    .line 46
    iget-wide v4, p1, Lx2/c;->contentDurationUs:J

    .line 47
    .line 48
    cmp-long v2, v2, v4

    .line 49
    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    iget v2, p0, Lx2/c;->removedAdGroupCount:I

    .line 53
    .line 54
    iget v3, p1, Lx2/c;->removedAdGroupCount:I

    .line 55
    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    .line 58
    iget-object v2, p0, Lx2/c;->adGroups:[Lx2/c$a;

    .line 59
    .line 60
    iget-object p1, p1, Lx2/c;->adGroups:[Lx2/c$a;

    .line 61
    .line 62
    .line 63
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 70
    :cond_3
    :goto_1
    return v1
.end method

.method public f(JJ)I
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lx2/c;->adGroupCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    :goto_0
    if-ltz v0, :cond_0

    .line 7
    move-object v1, p0

    .line 8
    move-wide v2, p1

    .line 9
    move-wide v4, p3

    .line 10
    move v6, v0

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v1 .. v6}, Lx2/c;->g(JJI)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    if-ltz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lx2/c;->d(I)Lx2/c$a;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lx2/c$a;->g()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, -0x1

    .line 34
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lx2/c;->adGroupCount:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    .line 6
    iget-object v1, p0, Lx2/c;->adsId:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 14
    move-result v1

    .line 15
    :goto_0
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-wide v1, p0, Lx2/c;->adResumePositionUs:J

    .line 20
    long-to-int v1, v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-wide v1, p0, Lx2/c;->contentDurationUs:J

    .line 26
    long-to-int v1, v1

    .line 27
    add-int/2addr v0, v1

    .line 28
    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget v1, p0, Lx2/c;->removedAdGroupCount:I

    .line 32
    add-int/2addr v0, v1

    .line 33
    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Lx2/c;->adGroups:[Lx2/c$a;

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 40
    move-result v1

    .line 41
    add-int/2addr v0, v1

    .line 42
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iget-object v2, p0, Lx2/c;->adGroups:[Lx2/c$a;

    .line 13
    array-length v3, v2

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v4, v3, :cond_0

    .line 17
    .line 18
    aget-object v5, v2, v4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5}, Lx2/c$a;->toBundle()Landroid/os/Bundle;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lx2/c;->h(I)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 37
    const/4 v1, 0x2

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lx2/c;->h(I)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    iget-wide v2, p0, Lx2/c;->adResumePositionUs:J

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 47
    const/4 v1, 0x3

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lx2/c;->h(I)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    iget-wide v2, p0, Lx2/c;->contentDurationUs:J

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 57
    const/4 v1, 0x4

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lx2/c;->h(I)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    iget v2, p0, Lx2/c;->removedAdGroupCount:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 67
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "AdPlaybackState(adsId="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lx2/c;->adsId:Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", adResumePositionUs="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-wide v1, p0, Lx2/c;->adResumePositionUs:J

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ", adGroups=["

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const/4 v1, 0x0

    .line 32
    move v2, v1

    .line 33
    .line 34
    :goto_0
    iget-object v3, p0, Lx2/c;->adGroups:[Lx2/c$a;

    .line 35
    array-length v3, v3

    .line 36
    .line 37
    const-string v4, "])"

    .line 38
    .line 39
    if-ge v2, v3, :cond_8

    .line 40
    .line 41
    const-string v3, "adGroup(timeUs="

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    iget-object v3, p0, Lx2/c;->adGroups:[Lx2/c$a;

    .line 47
    .line 48
    aget-object v3, v3, v2

    .line 49
    .line 50
    iget-wide v5, v3, Lx2/c$a;->timeUs:J

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, ", ads=["

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move v3, v1

    .line 60
    .line 61
    :goto_1
    iget-object v5, p0, Lx2/c;->adGroups:[Lx2/c$a;

    .line 62
    .line 63
    aget-object v5, v5, v2

    .line 64
    .line 65
    iget-object v5, v5, Lx2/c$a;->states:[I

    .line 66
    array-length v5, v5

    .line 67
    .line 68
    const-string v6, ", "

    .line 69
    const/4 v7, 0x1

    .line 70
    .line 71
    if-ge v3, v5, :cond_6

    .line 72
    .line 73
    const-string v5, "ad(state="

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    iget-object v5, p0, Lx2/c;->adGroups:[Lx2/c$a;

    .line 79
    .line 80
    aget-object v5, v5, v2

    .line 81
    .line 82
    iget-object v5, v5, Lx2/c$a;->states:[I

    .line 83
    .line 84
    aget v5, v5, v3

    .line 85
    .line 86
    if-eqz v5, :cond_4

    .line 87
    .line 88
    if-eq v5, v7, :cond_3

    .line 89
    const/4 v8, 0x2

    .line 90
    .line 91
    if-eq v5, v8, :cond_2

    .line 92
    const/4 v8, 0x3

    .line 93
    .line 94
    if-eq v5, v8, :cond_1

    .line 95
    const/4 v8, 0x4

    .line 96
    .line 97
    if-eq v5, v8, :cond_0

    .line 98
    .line 99
    const/16 v5, 0x3f

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    goto :goto_2

    .line 104
    .line 105
    :cond_0
    const/16 v5, 0x21

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    goto :goto_2

    .line 110
    .line 111
    :cond_1
    const/16 v5, 0x50

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    goto :goto_2

    .line 116
    .line 117
    :cond_2
    const/16 v5, 0x53

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    goto :goto_2

    .line 122
    .line 123
    :cond_3
    const/16 v5, 0x52

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    goto :goto_2

    .line 128
    .line 129
    :cond_4
    const/16 v5, 0x5f

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    :goto_2
    const-string v5, ", durationUs="

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    iget-object v5, p0, Lx2/c;->adGroups:[Lx2/c$a;

    .line 140
    .line 141
    aget-object v5, v5, v2

    .line 142
    .line 143
    iget-object v5, v5, Lx2/c$a;->durationsUs:[J

    .line 144
    .line 145
    aget-wide v8, v5, v3

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const/16 v5, 0x29

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    iget-object v5, p0, Lx2/c;->adGroups:[Lx2/c$a;

    .line 156
    .line 157
    aget-object v5, v5, v2

    .line 158
    .line 159
    iget-object v5, v5, Lx2/c$a;->states:[I

    .line 160
    array-length v5, v5

    .line 161
    sub-int/2addr v5, v7

    .line 162
    .line 163
    if-ge v3, v5, :cond_5

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 169
    goto :goto_1

    .line 170
    .line 171
    .line 172
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    iget-object v3, p0, Lx2/c;->adGroups:[Lx2/c$a;

    .line 175
    array-length v3, v3

    .line 176
    sub-int/2addr v3, v7

    .line 177
    .line 178
    if-ge v2, v3, :cond_7

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    .line 188
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    return-object v0
.end method
