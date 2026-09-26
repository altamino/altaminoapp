.class public Lcom/google/android/exoplayer2/trackselection/m;
.super Lcom/google/android/exoplayer2/trackselection/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/m$f;,
        Lcom/google/android/exoplayer2/trackselection/m$c;,
        Lcom/google/android/exoplayer2/trackselection/m$g;,
        Lcom/google/android/exoplayer2/trackselection/m$b;,
        Lcom/google/android/exoplayer2/trackselection/m$i;,
        Lcom/google/android/exoplayer2/trackselection/m$h;,
        Lcom/google/android/exoplayer2/trackselection/m$e;,
        Lcom/google/android/exoplayer2/trackselection/m$d;
    }
.end annotation


# static fields
.field private static final AUDIO_CHANNEL_COUNT_CONSTRAINTS_WARN_MESSAGE:Ljava/lang/String; = "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

.field private static final FORMAT_VALUE_ORDERING:Lcom/google/common/collect/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/t0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_ORDER:Lcom/google/common/collect/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/t0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SELECTION_ELIGIBILITY_ADAPTIVE:I = 0x2

.field protected static final SELECTION_ELIGIBILITY_FIXED:I = 0x1

.field protected static final SELECTION_ELIGIBILITY_NO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultTrackSelector"


# instance fields
.field private audioAttributes:Lcom/google/android/exoplayer2/audio/e;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field public final context:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final deviceIsTV:Z

.field private final lock:Ljava/lang/Object;

.field private parameters:Lcom/google/android/exoplayer2/trackselection/m$d;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private spatializer:Lcom/google/android/exoplayer2/trackselection/m$f;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/s$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/common/collect/t0;->a(Ljava/util/Comparator;)Lcom/google/common/collect/t0;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/trackselection/m;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/t0;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/g;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/g;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/common/collect/t0;->a(Ljava/util/Comparator;)Lcom/google/common/collect/t0;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sput-object v0, Lcom/google/android/exoplayer2/trackselection/m;->NO_ORDER:Lcom/google/common/collect/t0;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/m$d;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/m$d;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/a$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/a$b;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/m;-><init>(Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/trackselection/s$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/a$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/a$b;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/m;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/s$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/s$b;)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d;->k(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/m$d;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/trackselection/m;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/trackselection/s$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/z;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/a$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/a$b;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/m;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/trackselection/s$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/trackselection/s$b;)V
    .locals 0

    .line 6
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/exoplayer2/trackselection/m;-><init>(Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/trackselection/s$b;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/trackselection/s$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/m;-><init>(Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/trackselection/s$b;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/trackselection/s$b;Landroid/content/Context;)V
    .locals 1
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/u;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m;->lock:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 9
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/m;->trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/s$b;

    .line 10
    instance-of p2, p1, Lcom/google/android/exoplayer2/trackselection/m$d;

    if-eqz p2, :cond_1

    .line 11
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/m$d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    .line 12
    sget-object p2, Lcom/google/android/exoplayer2/trackselection/m$d;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/m$d;

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/google/android/exoplayer2/trackselection/m$d;->k(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/m$d;

    move-result-object p2

    .line 13
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/m$d;->j()Lcom/google/android/exoplayer2/trackselection/m$d$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->g0(Lcom/google/android/exoplayer2/trackselection/z;)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->b0()Lcom/google/android/exoplayer2/trackselection/m$d;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 14
    :goto_2
    sget-object p1, Lcom/google/android/exoplayer2/audio/e;->DEFAULT:Lcom/google/android/exoplayer2/audio/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    if-eqz p3, :cond_3

    .line 15
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/o0;->r0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m;->deviceIsTV:Z

    if-nez p1, :cond_4

    if-eqz p3, :cond_4

    .line 16
    sget p1, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    const/16 p2, 0x20

    if-lt p1, p2, :cond_4

    .line 17
    invoke-static {p3}, Lcom/google/android/exoplayer2/trackselection/m$f;->g(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/m$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m;->spatializer:Lcom/google/android/exoplayer2/trackselection/m$f;

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 18
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    const-string p1, "DefaultTrackSelector"

    const-string p2, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 19
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static A(Lcom/google/android/exoplayer2/trackselection/u$a;Lcom/google/android/exoplayer2/trackselection/m$d;[Lcom/google/android/exoplayer2/trackselection/s$a;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/u$a;->d()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/u$a;->f(I)Lcom/google/android/exoplayer2/source/h1;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/trackselection/m$d;->o(ILcom/google/android/exoplayer2/source/h1;)Z

    .line 15
    move-result v3

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    goto :goto_2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/trackselection/m$d;->n(ILcom/google/android/exoplayer2/source/h1;)Lcom/google/android/exoplayer2/trackselection/m$e;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iget-object v4, v3, Lcom/google/android/exoplayer2/trackselection/m$e;->tracks:[I

    .line 27
    array-length v4, v4

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/s$a;

    .line 32
    .line 33
    iget v5, v3, Lcom/google/android/exoplayer2/trackselection/m$e;->groupIndex:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/source/h1;->b(I)Lcom/google/android/exoplayer2/source/f1;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    iget-object v5, v3, Lcom/google/android/exoplayer2/trackselection/m$e;->tracks:[I

    .line 40
    .line 41
    iget v3, v3, Lcom/google/android/exoplayer2/trackselection/m$e;->type:I

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, v2, v5, v3}, Lcom/google/android/exoplayer2/trackselection/s$a;-><init>(Lcom/google/android/exoplayer2/source/f1;[II)V

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v4, 0x0

    .line 47
    .line 48
    :goto_1
    aput-object v4, p2, v1

    .line 49
    .line 50
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method

.method private static B(Lcom/google/android/exoplayer2/trackselection/u$a;Lcom/google/android/exoplayer2/trackselection/z;[Lcom/google/android/exoplayer2/trackselection/s$a;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/u$a;->d()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    .line 13
    :goto_0
    if-ge v3, v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/trackselection/u$a;->f(I)Lcom/google/android/exoplayer2/source/h1;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    .line 20
    invoke-static {v4, p1, v1}, Lcom/google/android/exoplayer2/trackselection/m;->C(Lcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/z;Ljava/util/Map;)V

    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/u$a;->h()Lcom/google/android/exoplayer2/source/h1;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-static {v3, p1, v1}, Lcom/google/android/exoplayer2/trackselection/m;->C(Lcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/z;Ljava/util/Map;)V

    .line 31
    .line 32
    :goto_1
    if-ge v2, v0, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/u$a;->e(I)I

    .line 36
    move-result p1

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/x;

    .line 47
    .line 48
    if-nez p1, :cond_1

    .line 49
    goto :goto_3

    .line 50
    .line 51
    :cond_1
    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/x;->trackIndices:Lcom/google/common/collect/a0;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 55
    move-result v3

    .line 56
    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/u$a;->f(I)Lcom/google/android/exoplayer2/source/h1;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    iget-object v4, p1, Lcom/google/android/exoplayer2/trackselection/x;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/h1;->c(Lcom/google/android/exoplayer2/source/f1;)I

    .line 67
    move-result v3

    .line 68
    const/4 v4, -0x1

    .line 69
    .line 70
    if-eq v3, v4, :cond_2

    .line 71
    .line 72
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/s$a;

    .line 73
    .line 74
    iget-object v4, p1, Lcom/google/android/exoplayer2/trackselection/x;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/x;->trackIndices:Lcom/google/common/collect/a0;

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lcom/google/common/primitives/e;->l(Ljava/util/Collection;)[I

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-direct {v3, v4, p1}, Lcom/google/android/exoplayer2/trackselection/s$a;-><init>(Lcom/google/android/exoplayer2/source/f1;[I)V

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    const/4 v3, 0x0

    .line 86
    .line 87
    :goto_2
    aput-object v3, p2, v2

    .line 88
    .line 89
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    return-void
.end method

.method private static C(Lcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/z;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/h1;",
            "Lcom/google/android/exoplayer2/trackselection/z;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/trackselection/x;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/h1;->length:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_3

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/h1;->b(I)Lcom/google/android/exoplayer2/source/f1;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/z;->overrides:Lcom/google/common/collect/b0;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Lcom/google/android/exoplayer2/trackselection/x;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/x;->b()I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Lcom/google/android/exoplayer2/trackselection/x;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/x;->trackIndices:Lcom/google/common/collect/a0;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v2, v1, Lcom/google/android/exoplayer2/trackselection/x;->trackIndices:Lcom/google/common/collect/a0;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/x;->b()I

    .line 56
    move-result v2

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method protected static D(Lcom/google/android/exoplayer2/a2;Ljava/lang/String;Z)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 p0, 0x4

    .line 16
    return p0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m;->T(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/m;->T(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    if-eqz p0, :cond_5

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    move-result p2

    .line 37
    .line 38
    if-nez p2, :cond_4

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    move-result p2

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    const-string p2, "-"

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/util/o0;->I0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    aget-object p0, p0, v0

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/o0;->I0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    aget-object p1, p1, v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p0

    .line 64
    .line 65
    if-eqz p0, :cond_3

    .line 66
    const/4 p0, 0x2

    .line 67
    return p0

    .line 68
    :cond_3
    return v0

    .line 69
    :cond_4
    :goto_0
    const/4 p0, 0x3

    .line 70
    return p0

    .line 71
    .line 72
    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 73
    .line 74
    if-nez p0, :cond_6

    .line 75
    const/4 v0, 0x1

    .line 76
    :cond_6
    return v0
.end method

.method private static E(Lcom/google/android/exoplayer2/source/f1;IIZ)I
    .locals 8

    .line 1
    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/source/f1;->length:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/f1;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    iget v3, v2, Lcom/google/android/exoplayer2/a2;->width:I

    .line 20
    .line 21
    if-lez v3, :cond_1

    .line 22
    .line 23
    iget v4, v2, Lcom/google/android/exoplayer2/a2;->height:I

    .line 24
    .line 25
    if-lez v4, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-static {p3, p1, p2, v3, v4}, Lcom/google/android/exoplayer2/trackselection/m;->F(ZIIII)Landroid/graphics/Point;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    iget v4, v2, Lcom/google/android/exoplayer2/a2;->width:I

    .line 32
    .line 33
    iget v2, v2, Lcom/google/android/exoplayer2/a2;->height:I

    .line 34
    .line 35
    mul-int v5, v4, v2

    .line 36
    .line 37
    iget v6, v3, Landroid/graphics/Point;->x:I

    .line 38
    int-to-float v6, v6

    .line 39
    .line 40
    .line 41
    const v7, 0x3f7ae148    # 0.98f

    .line 42
    mul-float/2addr v6, v7

    .line 43
    float-to-int v6, v6

    .line 44
    .line 45
    if-lt v4, v6, :cond_1

    .line 46
    .line 47
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 48
    int-to-float v3, v3

    .line 49
    mul-float/2addr v3, v7

    .line 50
    float-to-int v3, v3

    .line 51
    .line 52
    if-lt v2, v3, :cond_1

    .line 53
    .line 54
    if-ge v5, v0, :cond_1

    .line 55
    move v0, v5

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    return v0
.end method

.method private static F(ZIIII)Landroid/graphics/Point;
    .locals 3

    .line 1
    .line 2
    if-eqz p0, :cond_2

    .line 3
    const/4 p0, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    if-le p3, p4, :cond_0

    .line 7
    move v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, p0

    .line 10
    .line 11
    :goto_0
    if-le p1, p2, :cond_1

    .line 12
    move p0, v0

    .line 13
    .line 14
    :cond_1
    if-eq v1, p0, :cond_2

    .line 15
    goto :goto_1

    .line 16
    :cond_2
    move v2, p2

    .line 17
    move p2, p1

    .line 18
    move p1, v2

    .line 19
    .line 20
    :goto_1
    mul-int p0, p3, p1

    .line 21
    .line 22
    mul-int v0, p4, p2

    .line 23
    .line 24
    if-lt p0, v0, :cond_3

    .line 25
    .line 26
    new-instance p0, Landroid/graphics/Point;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/o0;->l(II)I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 34
    return-object p0

    .line 35
    .line 36
    :cond_3
    new-instance p2, Landroid/graphics/Point;

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p4}, Lcom/google/android/exoplayer2/util/o0;->l(II)I

    .line 40
    move-result p0

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 44
    return-object p2
.end method

.method private static H(II)I
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    if-ne p0, p1, :cond_0

    .line 5
    .line 6
    .line 7
    const p0, 0x7fffffff

    .line 8
    return p0

    .line 9
    :cond_0
    and-int/2addr p0, p1

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static I(Ljava/lang/String;)I
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, -0x1

    .line 14
    .line 15
    .line 16
    sparse-switch v1, :sswitch_data_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 24
    .line 25
    if-nez p0, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v6, v2

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :sswitch_1
    const-string v1, "video/avc"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 35
    .line 36
    if-nez p0, :cond_2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v6, v3

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :sswitch_2
    const-string v1, "video/hevc"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 46
    .line 47
    if-nez p0, :cond_3

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move v6, v4

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :sswitch_3
    const-string v1, "video/av01"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 57
    .line 58
    if-nez p0, :cond_4

    .line 59
    goto :goto_0

    .line 60
    :cond_4
    move v6, v5

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :sswitch_4
    const-string v1, "video/dolby-vision"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p0

    .line 68
    .line 69
    if-nez p0, :cond_5

    .line 70
    goto :goto_0

    .line 71
    :cond_5
    move v6, v0

    .line 72
    .line 73
    .line 74
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 75
    return v0

    .line 76
    :pswitch_0
    return v4

    .line 77
    :pswitch_1
    return v5

    .line 78
    :pswitch_2
    return v3

    .line 79
    :pswitch_3
    return v2

    .line 80
    :pswitch_4
    const/4 p0, 0x5

    .line 81
    return p0

    .line 82
    nop

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private J(Lcom/google/android/exoplayer2/a2;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/m$d;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->deviceIsTV:Z

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    iget v1, p1, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 16
    const/4 v2, 0x2

    .line 17
    .line 18
    if-le v1, v2, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m;->K(Lcom/google/android/exoplayer2/a2;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    const/16 v2, 0x20

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    sget v1, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 29
    .line 30
    if-lt v1, v2, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->spatializer:Lcom/google/android/exoplayer2/trackselection/m$f;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/m$f;->e()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_3

    .line 44
    .line 45
    :cond_0
    :goto_0
    sget v1, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 46
    .line 47
    if-lt v1, v2, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->spatializer:Lcom/google/android/exoplayer2/trackselection/m$f;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/m$f;->e()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->spatializer:Lcom/google/android/exoplayer2/trackselection/m$f;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/m$f;->c()Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->spatializer:Lcom/google/android/exoplayer2/trackselection/m$f;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/m$f;->d()Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->spatializer:Lcom/google/android/exoplayer2/trackselection/m$f;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/m;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2, p1}, Lcom/google/android/exoplayer2/trackselection/m$f;->a(Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/a2;)Z

    .line 81
    move-result p1

    .line 82
    .line 83
    if-eqz p1, :cond_1

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const/4 p1, 0x0

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 88
    :goto_2
    monitor-exit v0

    .line 89
    return p1

    .line 90
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p1
.end method

.method private static K(Lcom/google/android/exoplayer2/a2;)Z
    .locals 4

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, -0x1

    .line 16
    .line 17
    .line 18
    sparse-switch v1, :sswitch_data_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :sswitch_0
    const-string v1, "audio/eac3"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p0

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v3, 0x3

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :sswitch_1
    const-string v1, "audio/ac4"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p0

    .line 37
    .line 38
    if-nez p0, :cond_2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v3, 0x2

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :sswitch_2
    const-string v1, "audio/ac3"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p0

    .line 48
    .line 49
    if-nez p0, :cond_3

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move v3, v2

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :sswitch_3
    const-string v1, "audio/eac3-joc"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result p0

    .line 59
    .line 60
    if-nez p0, :cond_4

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    move v3, v0

    .line 63
    .line 64
    .line 65
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 66
    return v0

    .line 67
    :pswitch_0
    return v2

    .line 68
    nop

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static L(IZ)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/n3;->f(I)I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x4

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 p1, 0x3

    .line 11
    .line 12
    if-ne p0, p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method private synthetic M(Lcom/google/android/exoplayer2/trackselection/m$d;ZILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;
    .locals 6

    .line 1
    .line 2
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/l;

    .line 3
    .line 4
    .line 5
    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/trackselection/l;-><init>(Lcom/google/android/exoplayer2/trackselection/m;)V

    .line 6
    move v0, p3

    .line 7
    move-object v1, p4

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p5

    .line 10
    move v4, p2

    .line 11
    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/m$b;->e(ILcom/google/android/exoplayer2/source/f1;Lcom/google/android/exoplayer2/trackselection/m$d;[IZLcom/google/common/base/p;)Lcom/google/common/collect/a0;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private static synthetic N(Lcom/google/android/exoplayer2/trackselection/m$d;Ljava/lang/String;ILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p3, p0, p4, p1}, Lcom/google/android/exoplayer2/trackselection/m$g;->e(ILcom/google/android/exoplayer2/source/f1;Lcom/google/android/exoplayer2/trackselection/m$d;[ILjava/lang/String;)Lcom/google/common/collect/a0;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic O(Lcom/google/android/exoplayer2/trackselection/m$d;[IILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    aget p1, p1, p2

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p3, p0, p4, p1}, Lcom/google/android/exoplayer2/trackselection/m$i;->i(ILcom/google/android/exoplayer2/source/f1;Lcom/google/android/exoplayer2/trackselection/m$d;[II)Lcom/google/common/collect/a0;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic P(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 11
    move-result p0

    .line 12
    .line 13
    if-ne p0, v1, :cond_2

    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result p0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result p1

    .line 32
    .line 33
    sub-int v1, p0, p1

    .line 34
    :cond_2
    :goto_0
    return v1
.end method

.method private static synthetic Q(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method private static R(Lcom/google/android/exoplayer2/trackselection/u$a;[[[I[Lcom/google/android/exoplayer2/p3;[Lcom/google/android/exoplayer2/trackselection/s;)V
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v3, v0

    .line 4
    move v4, v3

    .line 5
    move v2, v1

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/u$a;->d()I

    .line 9
    move-result v5

    .line 10
    const/4 v6, 0x1

    .line 11
    .line 12
    if-ge v2, v5, :cond_5

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/u$a;->e(I)I

    .line 16
    move-result v5

    .line 17
    .line 18
    aget-object v7, p3, v2

    .line 19
    .line 20
    if-eq v5, v6, :cond_0

    .line 21
    const/4 v8, 0x2

    .line 22
    .line 23
    if-ne v5, v8, :cond_4

    .line 24
    .line 25
    :cond_0
    if-eqz v7, :cond_4

    .line 26
    .line 27
    aget-object v8, p1, v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/u$a;->f(I)Lcom/google/android/exoplayer2/source/h1;

    .line 31
    move-result-object v9

    .line 32
    .line 33
    .line 34
    invoke-static {v8, v9, v7}, Lcom/google/android/exoplayer2/trackselection/m;->U([[ILcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/s;)Z

    .line 35
    move-result v7

    .line 36
    .line 37
    if-eqz v7, :cond_4

    .line 38
    .line 39
    if-ne v5, v6, :cond_2

    .line 40
    .line 41
    if-eq v4, v0, :cond_1

    .line 42
    :goto_1
    move p0, v1

    .line 43
    goto :goto_3

    .line 44
    :cond_1
    move v4, v2

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_2
    if-eq v3, v0, :cond_3

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move v3, v2

    .line 50
    .line 51
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_5
    move p0, v6

    .line 54
    .line 55
    :goto_3
    if-eq v4, v0, :cond_6

    .line 56
    .line 57
    if-eq v3, v0, :cond_6

    .line 58
    move v1, v6

    .line 59
    :cond_6
    and-int/2addr p0, v1

    .line 60
    .line 61
    if-eqz p0, :cond_7

    .line 62
    .line 63
    new-instance p0, Lcom/google/android/exoplayer2/p3;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/p3;-><init>(Z)V

    .line 67
    .line 68
    aput-object p0, p2, v4

    .line 69
    .line 70
    aput-object p0, p2, v3

    .line 71
    :cond_7
    return-void
.end method

.method private S()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/m$d;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->deviceIsTV:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    sget v1, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 16
    .line 17
    const/16 v2, 0x20

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->spatializer:Lcom/google/android/exoplayer2/trackselection/m$f;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/m$f;->e()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/b0;->d()V

    .line 41
    :cond_1
    return-void

    .line 42
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v1
.end method

.method protected static T(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "und"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :cond_1
    return-object p0
.end method

.method private static U([[ILcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/s;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/v;->getTrackGroup()Lcom/google/android/exoplayer2/source/f1;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/h1;->c(Lcom/google/android/exoplayer2/source/f1;)I

    .line 12
    move-result p1

    .line 13
    move v1, v0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/v;->length()I

    .line 17
    move-result v2

    .line 18
    .line 19
    if-ge v1, v2, :cond_2

    .line 20
    .line 21
    aget-object v2, p0, p1

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/trackselection/v;->getIndexInTrackGroup(I)I

    .line 25
    move-result v3

    .line 26
    .line 27
    aget v2, v2, v3

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lcom/google/android/exoplayer2/n3;->h(I)I

    .line 31
    move-result v2

    .line 32
    .line 33
    const/16 v3, 0x20

    .line 34
    .line 35
    if-eq v2, v3, :cond_1

    .line 36
    return v0

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method private Z(ILcom/google/android/exoplayer2/trackselection/u$a;[[[ILcom/google/android/exoplayer2/trackselection/m$h$a;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/exoplayer2/trackselection/m$h<",
            "TT;>;>(I",
            "Lcom/google/android/exoplayer2/trackselection/u$a;",
            "[[[I",
            "Lcom/google/android/exoplayer2/trackselection/m$h$a<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/s$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/trackselection/u$a;->d()I

    .line 11
    move-result v2

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v4, v2, :cond_7

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/trackselection/u$a;->e(I)I

    .line 18
    move-result v5

    .line 19
    .line 20
    move/from16 v6, p1

    .line 21
    .line 22
    if-ne v6, v5, :cond_6

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/trackselection/u$a;->f(I)Lcom/google/android/exoplayer2/source/h1;

    .line 26
    move-result-object v5

    .line 27
    const/4 v7, 0x0

    .line 28
    .line 29
    :goto_1
    iget v8, v5, Lcom/google/android/exoplayer2/source/h1;->length:I

    .line 30
    .line 31
    if-ge v7, v8, :cond_6

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/source/h1;->b(I)Lcom/google/android/exoplayer2/source/f1;

    .line 35
    move-result-object v8

    .line 36
    .line 37
    aget-object v9, p3, v4

    .line 38
    .line 39
    aget-object v9, v9, v7

    .line 40
    .line 41
    move-object/from16 v10, p4

    .line 42
    .line 43
    .line 44
    invoke-interface {v10, v4, v8, v9}, Lcom/google/android/exoplayer2/trackselection/m$h$a;->a(ILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;

    .line 45
    move-result-object v9

    .line 46
    .line 47
    iget v11, v8, Lcom/google/android/exoplayer2/source/f1;->length:I

    .line 48
    .line 49
    new-array v11, v11, [Z

    .line 50
    const/4 v12, 0x0

    .line 51
    .line 52
    :goto_2
    iget v13, v8, Lcom/google/android/exoplayer2/source/f1;->length:I

    .line 53
    .line 54
    if-ge v12, v13, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v13

    .line 59
    .line 60
    check-cast v13, Lcom/google/android/exoplayer2/trackselection/m$h;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/trackselection/m$h;->a()I

    .line 64
    move-result v14

    .line 65
    .line 66
    aget-boolean v15, v11, v12

    .line 67
    .line 68
    if-nez v15, :cond_0

    .line 69
    .line 70
    if-nez v14, :cond_1

    .line 71
    .line 72
    :cond_0
    move/from16 v17, v2

    .line 73
    goto :goto_6

    .line 74
    :cond_1
    const/4 v15, 0x1

    .line 75
    .line 76
    if-ne v14, v15, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-static {v13}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 80
    move-result-object v13

    .line 81
    .line 82
    move/from16 v17, v2

    .line 83
    goto :goto_5

    .line 84
    .line 85
    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    add-int/lit8 v16, v12, 0x1

    .line 94
    .line 95
    move/from16 v3, v16

    .line 96
    .line 97
    :goto_3
    iget v15, v8, Lcom/google/android/exoplayer2/source/f1;->length:I

    .line 98
    .line 99
    if-ge v3, v15, :cond_4

    .line 100
    .line 101
    .line 102
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v15

    .line 104
    .line 105
    check-cast v15, Lcom/google/android/exoplayer2/trackselection/m$h;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/trackselection/m$h;->a()I

    .line 109
    move-result v0

    .line 110
    .line 111
    move/from16 v17, v2

    .line 112
    const/4 v2, 0x2

    .line 113
    .line 114
    if-ne v0, v2, :cond_3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v15}, Lcom/google/android/exoplayer2/trackselection/m$h;->b(Lcom/google/android/exoplayer2/trackselection/m$h;)Z

    .line 118
    move-result v0

    .line 119
    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    .line 123
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const/4 v0, 0x1

    .line 125
    .line 126
    aput-boolean v0, v11, v3

    .line 127
    goto :goto_4

    .line 128
    :cond_3
    const/4 v0, 0x1

    .line 129
    .line 130
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 131
    .line 132
    move-object/from16 v0, p2

    .line 133
    .line 134
    move/from16 v2, v17

    .line 135
    goto :goto_3

    .line 136
    .line 137
    :cond_4
    move/from16 v17, v2

    .line 138
    move-object v13, v14

    .line 139
    .line 140
    .line 141
    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    :goto_6
    add-int/lit8 v12, v12, 0x1

    .line 144
    .line 145
    move-object/from16 v0, p2

    .line 146
    .line 147
    move/from16 v2, v17

    .line 148
    goto :goto_2

    .line 149
    .line 150
    :cond_5
    move/from16 v17, v2

    .line 151
    .line 152
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    move-object/from16 v0, p2

    .line 155
    goto :goto_1

    .line 156
    .line 157
    :cond_6
    move-object/from16 v10, p4

    .line 158
    .line 159
    move/from16 v17, v2

    .line 160
    .line 161
    add-int/lit8 v4, v4, 0x1

    .line 162
    .line 163
    move-object/from16 v0, p2

    .line 164
    .line 165
    move/from16 v2, v17

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    .line 170
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 171
    move-result v0

    .line 172
    .line 173
    if-eqz v0, :cond_8

    .line 174
    const/4 v0, 0x0

    .line 175
    return-object v0

    .line 176
    .line 177
    :cond_8
    move-object/from16 v0, p5

    .line 178
    .line 179
    .line 180
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    check-cast v0, Ljava/util/List;

    .line 184
    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 187
    move-result v1

    .line 188
    .line 189
    new-array v1, v1, [I

    .line 190
    const/4 v2, 0x0

    .line 191
    .line 192
    .line 193
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 194
    move-result v3

    .line 195
    .line 196
    if-ge v2, v3, :cond_9

    .line 197
    .line 198
    .line 199
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object v3

    .line 201
    .line 202
    check-cast v3, Lcom/google/android/exoplayer2/trackselection/m$h;

    .line 203
    .line 204
    iget v3, v3, Lcom/google/android/exoplayer2/trackselection/m$h;->trackIndex:I

    .line 205
    .line 206
    aput v3, v1, v2

    .line 207
    .line 208
    add-int/lit8 v2, v2, 0x1

    .line 209
    goto :goto_7

    .line 210
    :cond_9
    const/4 v2, 0x0

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    check-cast v0, Lcom/google/android/exoplayer2/trackselection/m$h;

    .line 217
    .line 218
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/s$a;

    .line 219
    .line 220
    iget-object v3, v0, Lcom/google/android/exoplayer2/trackselection/m$h;->trackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 221
    .line 222
    .line 223
    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/trackselection/s$a;-><init>(Lcom/google/android/exoplayer2/source/f1;[I)V

    .line 224
    .line 225
    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/m$h;->rendererIndex:I

    .line 226
    .line 227
    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    .line 232
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 233
    move-result-object v0

    .line 234
    return-object v0
.end method

.method private b0(Lcom/google/android/exoplayer2/trackselection/m$d;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m;->lock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/trackselection/m$d;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    xor-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m;->context:Landroid/content/Context;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, "DefaultTrackSelector"

    .line 30
    .line 31
    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/b0;->d()V

    .line 38
    :cond_1
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p1
.end method

.method public static synthetic o(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m;->Q(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/a2;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m;->J(Lcom/google/android/exoplayer2/a2;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/google/android/exoplayer2/trackselection/m$d;[IILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/m;->O(Lcom/google/android/exoplayer2/trackselection/m$d;[IILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/google/android/exoplayer2/trackselection/m$d;Ljava/lang/String;ILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/m;->N(Lcom/google/android/exoplayer2/trackselection/m$d;Ljava/lang/String;ILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/trackselection/m$d;ZILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/trackselection/m;->M(Lcom/google/android/exoplayer2/trackselection/m$d;ZILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m;->P(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/source/f1;IIZ)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/m;->E(Lcom/google/android/exoplayer2/source/f1;IIZ)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic v(II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m;->H(II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic w(Ljava/lang/String;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/m;->I(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic x()Lcom/google/common/collect/t0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/m;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/t0;

    return-object v0
.end method

.method static synthetic y()Lcom/google/common/collect/t0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/m;->NO_ORDER:Lcom/google/common/collect/t0;

    return-object v0
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/m;->S()V

    .line 4
    return-void
.end method


# virtual methods
.method public G()Lcom/google/android/exoplayer2/trackselection/m$d;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method protected V(Lcom/google/android/exoplayer2/trackselection/u$a;[[[I[ILcom/google/android/exoplayer2/trackselection/m$d;)[Lcom/google/android/exoplayer2/trackselection/s$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/u$a;->d()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-array v1, v0, [Lcom/google/android/exoplayer2/trackselection/s$a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/m;->a0(Lcom/google/android/exoplayer2/trackselection/u$a;[[[I[ILcom/google/android/exoplayer2/trackselection/m$d;)Landroid/util/Pair;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v3

    .line 21
    .line 22
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Lcom/google/android/exoplayer2/trackselection/s$a;

    .line 25
    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/m;->W(Lcom/google/android/exoplayer2/trackselection/u$a;[[[I[ILcom/google/android/exoplayer2/trackselection/m$d;)Landroid/util/Pair;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v2

    .line 41
    .line 42
    iget-object v3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Lcom/google/android/exoplayer2/trackselection/s$a;

    .line 45
    .line 46
    aput-object v3, v1, v2

    .line 47
    :cond_1
    const/4 v2, 0x0

    .line 48
    .line 49
    if-nez p3, :cond_2

    .line 50
    const/4 p3, 0x0

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_2
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    move-object v3, p3

    .line 55
    .line 56
    check-cast v3, Lcom/google/android/exoplayer2/trackselection/s$a;

    .line 57
    .line 58
    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/s$a;->group:Lcom/google/android/exoplayer2/source/f1;

    .line 59
    .line 60
    check-cast p3, Lcom/google/android/exoplayer2/trackselection/s$a;

    .line 61
    .line 62
    iget-object p3, p3, Lcom/google/android/exoplayer2/trackselection/s$a;->tracks:[I

    .line 63
    .line 64
    aget p3, p3, v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/source/f1;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 68
    move-result-object p3

    .line 69
    .line 70
    iget-object p3, p3, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/google/android/exoplayer2/trackselection/m;->Y(Lcom/google/android/exoplayer2/trackselection/u$a;[[[ILcom/google/android/exoplayer2/trackselection/m$d;Ljava/lang/String;)Landroid/util/Pair;

    .line 74
    move-result-object p3

    .line 75
    .line 76
    if-eqz p3, :cond_3

    .line 77
    .line 78
    iget-object v3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v3, Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v3

    .line 85
    .line 86
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p3, Lcom/google/android/exoplayer2/trackselection/s$a;

    .line 89
    .line 90
    aput-object p3, v1, v3

    .line 91
    .line 92
    :cond_3
    :goto_1
    if-ge v2, v0, :cond_5

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/u$a;->e(I)I

    .line 96
    move-result p3

    .line 97
    const/4 v3, 0x2

    .line 98
    .line 99
    if-eq p3, v3, :cond_4

    .line 100
    const/4 v3, 0x1

    .line 101
    .line 102
    if-eq p3, v3, :cond_4

    .line 103
    const/4 v3, 0x3

    .line 104
    .line 105
    if-eq p3, v3, :cond_4

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/u$a;->f(I)Lcom/google/android/exoplayer2/source/h1;

    .line 109
    move-result-object v3

    .line 110
    .line 111
    aget-object v4, p2, v2

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p3, v3, v4, p4}, Lcom/google/android/exoplayer2/trackselection/m;->X(ILcom/google/android/exoplayer2/source/h1;[[ILcom/google/android/exoplayer2/trackselection/m$d;)Lcom/google/android/exoplayer2/trackselection/s$a;

    .line 115
    move-result-object p3

    .line 116
    .line 117
    aput-object p3, v1, v2

    .line 118
    .line 119
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    return-object v1
.end method

.method protected W(Lcom/google/android/exoplayer2/trackselection/u$a;[[[I[ILcom/google/android/exoplayer2/trackselection/m$d;)Landroid/util/Pair;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/u$a;",
            "[[[I[I",
            "Lcom/google/android/exoplayer2/trackselection/m$d;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/s$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    const/4 p3, 0x0

    .line 2
    move v0, p3

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/u$a;->d()I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/u$a;->e(I)I

    .line 13
    move-result v2

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/u$a;->f(I)Lcom/google/android/exoplayer2/source/h1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget v1, v1, Lcom/google/android/exoplayer2/source/h1;->length:I

    .line 22
    .line 23
    if-lez v1, :cond_0

    .line 24
    const/4 p3, 0x1

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 30
    .line 31
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/j;

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, p0, p4, p3}, Lcom/google/android/exoplayer2/trackselection/j;-><init>(Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/trackselection/m$d;Z)V

    .line 35
    .line 36
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/k;

    .line 37
    .line 38
    .line 39
    invoke-direct {v5}, Lcom/google/android/exoplayer2/trackselection/k;-><init>()V

    .line 40
    move-object v0, p0

    .line 41
    move-object v2, p1

    .line 42
    move-object v3, p2

    .line 43
    .line 44
    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/m;->Z(ILcom/google/android/exoplayer2/trackselection/u$a;[[[ILcom/google/android/exoplayer2/trackselection/m$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method protected X(ILcom/google/android/exoplayer2/source/h1;[[ILcom/google/android/exoplayer2/trackselection/m$d;)Lcom/google/android/exoplayer2/trackselection/s$a;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    move-object v2, p1

    .line 4
    move-object v4, v2

    .line 5
    move v1, v0

    .line 6
    move v3, v1

    .line 7
    .line 8
    :goto_0
    iget v5, p2, Lcom/google/android/exoplayer2/source/h1;->length:I

    .line 9
    .line 10
    if-ge v1, v5, :cond_3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/source/h1;->b(I)Lcom/google/android/exoplayer2/source/f1;

    .line 14
    move-result-object v5

    .line 15
    .line 16
    aget-object v6, p3, v1

    .line 17
    move v7, v0

    .line 18
    .line 19
    :goto_1
    iget v8, v5, Lcom/google/android/exoplayer2/source/f1;->length:I

    .line 20
    .line 21
    if-ge v7, v8, :cond_2

    .line 22
    .line 23
    aget v8, v6, v7

    .line 24
    .line 25
    iget-boolean v9, p4, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedRendererCapabilitiesIfNecessary:Z

    .line 26
    .line 27
    .line 28
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/trackselection/m;->L(IZ)Z

    .line 29
    move-result v8

    .line 30
    .line 31
    if-eqz v8, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/source/f1;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 35
    move-result-object v8

    .line 36
    .line 37
    new-instance v9, Lcom/google/android/exoplayer2/trackselection/m$c;

    .line 38
    .line 39
    aget v10, v6, v7

    .line 40
    .line 41
    .line 42
    invoke-direct {v9, v8, v10}, Lcom/google/android/exoplayer2/trackselection/m$c;-><init>(Lcom/google/android/exoplayer2/a2;I)V

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/trackselection/m$c;->a(Lcom/google/android/exoplayer2/trackselection/m$c;)I

    .line 48
    move-result v8

    .line 49
    .line 50
    if-lez v8, :cond_1

    .line 51
    :cond_0
    move-object v2, v5

    .line 52
    move v3, v7

    .line 53
    move-object v4, v9

    .line 54
    .line 55
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_3
    if-nez v2, :cond_4

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/s$a;

    .line 65
    .line 66
    .line 67
    filled-new-array {v3}, [I

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v2, p2}, Lcom/google/android/exoplayer2/trackselection/s$a;-><init>(Lcom/google/android/exoplayer2/source/f1;[I)V

    .line 72
    :goto_2
    return-object p1
.end method

.method protected Y(Lcom/google/android/exoplayer2/trackselection/u$a;[[[ILcom/google/android/exoplayer2/trackselection/m$d;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/u$a;",
            "[[[I",
            "Lcom/google/android/exoplayer2/trackselection/m$d;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/s$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    const/4 v1, 0x3

    .line 2
    .line 3
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/d;

    .line 4
    .line 5
    .line 6
    invoke-direct {v4, p3, p4}, Lcom/google/android/exoplayer2/trackselection/d;-><init>(Lcom/google/android/exoplayer2/trackselection/m$d;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/e;

    .line 9
    .line 10
    .line 11
    invoke-direct {v5}, Lcom/google/android/exoplayer2/trackselection/e;-><init>()V

    .line 12
    move-object v0, p0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/m;->Z(ILcom/google/android/exoplayer2/trackselection/u$a;[[[ILcom/google/android/exoplayer2/trackselection/m$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method protected a0(Lcom/google/android/exoplayer2/trackselection/u$a;[[[I[ILcom/google/android/exoplayer2/trackselection/m$d;)Landroid/util/Pair;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/u$a;",
            "[[[I[I",
            "Lcom/google/android/exoplayer2/trackselection/m$d;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/s$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    const/4 v1, 0x2

    .line 2
    .line 3
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/h;

    .line 4
    .line 5
    .line 6
    invoke-direct {v4, p4, p3}, Lcom/google/android/exoplayer2/trackselection/h;-><init>(Lcom/google/android/exoplayer2/trackselection/m$d;[I)V

    .line 7
    .line 8
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/i;

    .line 9
    .line 10
    .line 11
    invoke-direct {v5}, Lcom/google/android/exoplayer2/trackselection/i;-><init>()V

    .line 12
    move-object v0, p0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/m;->Z(ILcom/google/android/exoplayer2/trackselection/u$a;[[[ILcom/google/android/exoplayer2/trackselection/m$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public bridge synthetic b()Lcom/google/android/exoplayer2/trackselection/z;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/m;->G()Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->spatializer:Lcom/google/android/exoplayer2/trackselection/m$f;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/m$f;->f()V

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/b0;->g()V

    .line 24
    return-void

    .line 25
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v1
.end method

.method public i(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/audio/e;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/m;->S()V

    .line 20
    :cond_0
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public j(Lcom/google/android/exoplayer2/trackselection/z;)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/m;->b0(Lcom/google/android/exoplayer2/trackselection/m$d;)V

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/m;->G()Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/m$d$a;-><init>(Lcom/google/android/exoplayer2/trackselection/m$d;Lcom/google/android/exoplayer2/trackselection/m$a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->g0(Lcom/google/android/exoplayer2/trackselection/z;)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->b0()Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m;->b0(Lcom/google/android/exoplayer2/trackselection/m$d;)V

    .line 32
    return-void
.end method

.method protected final n(Lcom/google/android/exoplayer2/trackselection/u$a;[[[I[ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/z3;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/u$a;",
            "[[[I[I",
            "Lcom/google/android/exoplayer2/source/b0$b;",
            "Lcom/google/android/exoplayer2/z3;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplayer2/p3;",
            "[",
            "Lcom/google/android/exoplayer2/trackselection/s;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m;->parameters:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/trackselection/m$d;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    sget v2, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 12
    .line 13
    const/16 v3, 0x20

    .line 14
    .line 15
    if-lt v2, v3, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/m;->spatializer:Lcom/google/android/exoplayer2/trackselection/m$f;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    check-cast v3, Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0, v3}, Lcom/google/android/exoplayer2/trackselection/m$f;->b(Lcom/google/android/exoplayer2/trackselection/m;Landroid/os/Looper;)V

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    .line 36
    goto/16 :goto_5

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/u$a;->d()I

    .line 41
    move-result v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/android/exoplayer2/trackselection/m;->V(Lcom/google/android/exoplayer2/trackselection/u$a;[[[I[ILcom/google/android/exoplayer2/trackselection/m$d;)[Lcom/google/android/exoplayer2/trackselection/s$a;

    .line 45
    move-result-object p3

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v1, p3}, Lcom/google/android/exoplayer2/trackselection/m;->B(Lcom/google/android/exoplayer2/trackselection/u$a;Lcom/google/android/exoplayer2/trackselection/z;[Lcom/google/android/exoplayer2/trackselection/s$a;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v1, p3}, Lcom/google/android/exoplayer2/trackselection/m;->A(Lcom/google/android/exoplayer2/trackselection/u$a;Lcom/google/android/exoplayer2/trackselection/m$d;[Lcom/google/android/exoplayer2/trackselection/s$a;)V

    .line 52
    const/4 v2, 0x0

    .line 53
    move v3, v2

    .line 54
    :goto_1
    const/4 v4, 0x0

    .line 55
    .line 56
    if-ge v3, v0, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/trackselection/u$a;->e(I)I

    .line 60
    move-result v5

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/m$d;->m(I)Z

    .line 64
    move-result v6

    .line 65
    .line 66
    if-nez v6, :cond_1

    .line 67
    .line 68
    iget-object v6, v1, Lcom/google/android/exoplayer2/trackselection/z;->disabledTrackTypes:Lcom/google/common/collect/d0;

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v5}, Lcom/google/common/collect/y;->contains(Ljava/lang/Object;)Z

    .line 76
    move-result v5

    .line 77
    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    :cond_1
    aput-object v4, p3, v3

    .line 81
    .line 82
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/m;->trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/s$b;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/b0;->a()Lcom/google/android/exoplayer2/upstream/e;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    .line 92
    invoke-interface {v3, p3, v5, p4, p5}, Lcom/google/android/exoplayer2/trackselection/s$b;->a([Lcom/google/android/exoplayer2/trackselection/s$a;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/z3;)[Lcom/google/android/exoplayer2/trackselection/s;

    .line 93
    move-result-object p3

    .line 94
    .line 95
    new-array p4, v0, [Lcom/google/android/exoplayer2/p3;

    .line 96
    .line 97
    :goto_2
    if-ge v2, v0, :cond_7

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/u$a;->e(I)I

    .line 101
    move-result p5

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/m$d;->m(I)Z

    .line 105
    move-result v3

    .line 106
    .line 107
    if-nez v3, :cond_6

    .line 108
    .line 109
    iget-object v3, v1, Lcom/google/android/exoplayer2/trackselection/z;->disabledTrackTypes:Lcom/google/common/collect/d0;

    .line 110
    .line 111
    .line 112
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object p5

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, p5}, Lcom/google/common/collect/y;->contains(Ljava/lang/Object;)Z

    .line 117
    move-result p5

    .line 118
    .line 119
    if-eqz p5, :cond_4

    .line 120
    goto :goto_3

    .line 121
    .line 122
    .line 123
    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/u$a;->e(I)I

    .line 124
    move-result p5

    .line 125
    const/4 v3, -0x2

    .line 126
    .line 127
    if-eq p5, v3, :cond_5

    .line 128
    .line 129
    aget-object p5, p3, v2

    .line 130
    .line 131
    if-eqz p5, :cond_6

    .line 132
    .line 133
    :cond_5
    sget-object p5, Lcom/google/android/exoplayer2/p3;->DEFAULT:Lcom/google/android/exoplayer2/p3;

    .line 134
    goto :goto_4

    .line 135
    :cond_6
    :goto_3
    move-object p5, v4

    .line 136
    .line 137
    :goto_4
    aput-object p5, p4, v2

    .line 138
    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 140
    goto :goto_2

    .line 141
    .line 142
    :cond_7
    iget-boolean p5, v1, Lcom/google/android/exoplayer2/trackselection/m$d;->tunnelingEnabled:Z

    .line 143
    .line 144
    if-eqz p5, :cond_8

    .line 145
    .line 146
    .line 147
    invoke-static {p1, p2, p4, p3}, Lcom/google/android/exoplayer2/trackselection/m;->R(Lcom/google/android/exoplayer2/trackselection/u$a;[[[I[Lcom/google/android/exoplayer2/p3;[Lcom/google/android/exoplayer2/trackselection/s;)V

    .line 148
    .line 149
    .line 150
    :cond_8
    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 151
    move-result-object p1

    .line 152
    return-object p1

    .line 153
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    throw p1
.end method
