.class public Lcom/google/android/exoplayer2/i2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/i2$d$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/i2$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_END_POSITION_MS:I = 0x1

.field private static final FIELD_RELATIVE_TO_DEFAULT_POSITION:I = 0x3

.field private static final FIELD_RELATIVE_TO_LIVE_WINDOW:I = 0x2

.field private static final FIELD_STARTS_AT_KEY_FRAME:I = 0x4

.field private static final FIELD_START_POSITION_MS:I

.field public static final UNSET:Lcom/google/android/exoplayer2/i2$d;


# instance fields
.field public final endPositionMs:J

.field public final relativeToDefaultPosition:Z

.field public final relativeToLiveWindow:Z

.field public final startPositionMs:J
    .annotation build Landroidx/annotation/IntRange;
    .end annotation
.end field

.field public final startsAtKeyFrame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$d$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/i2$d$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$d$a;->f()Lcom/google/android/exoplayer2/i2$d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/i2$d;->UNSET:Lcom/google/android/exoplayer2/i2$d;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/j2;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/exoplayer2/j2;-><init>()V

    .line 17
    .line 18
    sput-object v0, Lcom/google/android/exoplayer2/i2$d;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 19
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/i2$d$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$d$a;->a(Lcom/google/android/exoplayer2/i2$d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i2$d;->startPositionMs:J

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$d$a;->b(Lcom/google/android/exoplayer2/i2$d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i2$d;->endPositionMs:J

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$d$a;->c(Lcom/google/android/exoplayer2/i2$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i2$d;->relativeToLiveWindow:Z

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$d$a;->d(Lcom/google/android/exoplayer2/i2$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i2$d;->relativeToDefaultPosition:Z

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$d$a;->e(Lcom/google/android/exoplayer2/i2$d$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/i2$d;->startsAtKeyFrame:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/i2$d$a;Lcom/google/android/exoplayer2/i2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/i2$d;-><init>(Lcom/google/android/exoplayer2/i2$d$a;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i2$e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/i2$d;->d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i2$e;

    move-result-object p0

    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
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

.method private static synthetic d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i2$e;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$d$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/i2$d$a;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$d;->c(I)Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/i2$d$a;->k(J)Lcom/google/android/exoplayer2/i2$d$a;

    .line 20
    move-result-object v0

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/google/android/exoplayer2/i2$d;->c(I)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    const-wide/high16 v3, -0x8000000000000000L

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 31
    move-result-wide v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/i2$d$a;->h(J)Lcom/google/android/exoplayer2/i2$d$a;

    .line 35
    move-result-object v0

    .line 36
    const/4 v2, 0x2

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/android/exoplayer2/i2$d;->c(I)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/i2$d$a;->j(Z)Lcom/google/android/exoplayer2/i2$d$a;

    .line 48
    move-result-object v0

    .line 49
    const/4 v2, 0x3

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lcom/google/android/exoplayer2/i2$d;->c(I)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 57
    move-result v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/i2$d$a;->i(Z)Lcom/google/android/exoplayer2/i2$d$a;

    .line 61
    move-result-object v0

    .line 62
    const/4 v2, 0x4

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lcom/google/android/exoplayer2/i2$d;->c(I)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 70
    move-result p0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/i2$d$a;->l(Z)Lcom/google/android/exoplayer2/i2$d$a;

    .line 74
    move-result-object p0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i2$d$a;->g()Lcom/google/android/exoplayer2/i2$e;

    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/i2$d$a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$d$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/i2$d$a;-><init>(Lcom/google/android/exoplayer2/i2$d;Lcom/google/android/exoplayer2/i2$a;)V

    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/i2$d;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/i2$d;

    .line 13
    .line 14
    iget-wide v3, p0, Lcom/google/android/exoplayer2/i2$d;->startPositionMs:J

    .line 15
    .line 16
    iget-wide v5, p1, Lcom/google/android/exoplayer2/i2$d;->startPositionMs:J

    .line 17
    .line 18
    cmp-long v1, v3, v5

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget-wide v3, p0, Lcom/google/android/exoplayer2/i2$d;->endPositionMs:J

    .line 23
    .line 24
    iget-wide v5, p1, Lcom/google/android/exoplayer2/i2$d;->endPositionMs:J

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$d;->relativeToLiveWindow:Z

    .line 31
    .line 32
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/i2$d;->relativeToLiveWindow:Z

    .line 33
    .line 34
    if-ne v1, v3, :cond_2

    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$d;->relativeToDefaultPosition:Z

    .line 37
    .line 38
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/i2$d;->relativeToDefaultPosition:Z

    .line 39
    .line 40
    if-ne v1, v3, :cond_2

    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$d;->startsAtKeyFrame:Z

    .line 43
    .line 44
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/i2$d;->startsAtKeyFrame:Z

    .line 45
    .line 46
    if-ne v1, p1, :cond_2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, v2

    .line 49
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/i2$d;->startPositionMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/exoplayer2/i2$d;->endPositionMs:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$d;->relativeToLiveWindow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$d;->relativeToDefaultPosition:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$d;->startsAtKeyFrame:Z

    add-int/2addr v0, v1

    return v0
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
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$d;->c(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/google/android/exoplayer2/i2$d;->startPositionMs:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$d;->c(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/google/android/exoplayer2/i2$d;->endPositionMs:J

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$d;->c(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/i2$d;->relativeToLiveWindow:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    const/4 v1, 0x3

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$d;->c(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/i2$d;->relativeToDefaultPosition:Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    const/4 v1, 0x4

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$d;->c(I)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/i2$d;->startsAtKeyFrame:Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    return-object v0
.end method
