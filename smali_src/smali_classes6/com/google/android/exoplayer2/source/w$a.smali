.class final Lcom/google/android/exoplayer2/source/w$a;
.super Lcom/google/android/exoplayer2/source/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;


# instance fields
.field private final replacedInternalPeriodUid:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final replacedInternalWindowUid:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/source/w$a;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/z3;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/s;-><init>(Lcom/google/android/exoplayer2/z3;)V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/w$a;->replacedInternalWindowUid:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/w$a;->replacedInternalPeriodUid:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static A(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/source/w$a;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/w$a;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/source/w$b;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/w$b;-><init>(Lcom/google/android/exoplayer2/i2;)V

    .line 8
    .line 9
    sget-object p0, Lcom/google/android/exoplayer2/z3$d;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 10
    .line 11
    sget-object v2, Lcom/google/android/exoplayer2/source/w$a;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/source/w$a;-><init>(Lcom/google/android/exoplayer2/z3;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-object v0
.end method

.method public static B(Lcom/google/android/exoplayer2/z3;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/w$a;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/w$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/w$a;-><init>(Lcom/google/android/exoplayer2/z3;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    return-object v0
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/source/w$a;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/w$a;->replacedInternalPeriodUid:Ljava/lang/Object;

    .line 3
    return-object p0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/exoplayer2/source/w$a;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w$a;->replacedInternalPeriodUid:Ljava/lang/Object;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    move-object p1, v1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public k(ILcom/google/android/exoplayer2/z3$b;Z)Lcom/google/android/exoplayer2/z3$b;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/z3;->k(ILcom/google/android/exoplayer2/z3$b;Z)Lcom/google/android/exoplayer2/z3$b;

    .line 6
    .line 7
    iget-object p1, p2, Lcom/google/android/exoplayer2/z3$b;->uid:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$a;->replacedInternalPeriodUid:Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    sget-object p1, Lcom/google/android/exoplayer2/source/w$a;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p1, p2, Lcom/google/android/exoplayer2/z3$b;->uid:Ljava/lang/Object;

    .line 22
    :cond_0
    return-object p2
.end method

.method public q(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/z3;->q(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$a;->replacedInternalPeriodUid:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/google/android/exoplayer2/source/w$a;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 17
    :cond_0
    return-object p1
.end method

.method public s(ILcom/google/android/exoplayer2/z3$d;J)Lcom/google/android/exoplayer2/z3$d;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/z3;->s(ILcom/google/android/exoplayer2/z3$d;J)Lcom/google/android/exoplayer2/z3$d;

    .line 6
    .line 7
    iget-object p1, p2, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/w$a;->replacedInternalWindowUid:Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/google/android/exoplayer2/z3$d;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p1, p2, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

    .line 20
    :cond_0
    return-object p2
.end method

.method public z(Lcom/google/android/exoplayer2/z3;)Lcom/google/android/exoplayer2/source/w$a;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/w$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w$a;->replacedInternalWindowUid:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w$a;->replacedInternalPeriodUid:Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/w$a;-><init>(Lcom/google/android/exoplayer2/z3;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    return-object v0
.end method
