.class public final Lcoil/decode/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/decode/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/decode/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final exifOrientationPolicy:Lcoil/decode/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parallelismLock:Lkotlinx/coroutines/sync/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v2, v0, v1, v0}, Lcoil/decode/d$c;-><init>(ILcoil/decode/l;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 6
    invoke-direct {p0, p1, v0, v1, v0}, Lcoil/decode/d$c;-><init>(ILcoil/decode/l;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcoil/decode/d$c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILcoil/decode/l;)V
    .locals 2
    .param p2    # Lcoil/decode/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcoil/decode/d$c;->exifOrientationPolicy:Lcoil/decode/l;

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v1, p2, v0}, Lkotlinx/coroutines/sync/f;->b(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/d;

    move-result-object p1

    iput-object p1, p0, Lcoil/decode/d$c;->parallelismLock:Lkotlinx/coroutines/sync/d;

    return-void
.end method

.method public synthetic constructor <init>(ILcoil/decode/l;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x4

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 3
    sget-object p2, Lcoil/decode/l;->RESPECT_PERFORMANCE:Lcoil/decode/l;

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcoil/decode/d$c;-><init>(ILcoil/decode/l;)V

    return-void
.end method


# virtual methods
.method public a(Lcoil/fetch/m;Lcoil/request/m;Lcoil/e;)Lcoil/decode/i;
    .locals 2
    .param p1    # Lcoil/fetch/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p3, Lcoil/decode/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcoil/fetch/m;->b()Lcoil/decode/p;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcoil/decode/d$c;->parallelismLock:Lkotlinx/coroutines/sync/d;

    .line 9
    .line 10
    iget-object v1, p0, Lcoil/decode/d$c;->exifOrientationPolicy:Lcoil/decode/l;

    .line 11
    .line 12
    .line 13
    invoke-direct {p3, p1, p2, v0, v1}, Lcoil/decode/d;-><init>(Lcoil/decode/p;Lcoil/request/m;Lkotlinx/coroutines/sync/d;Lcoil/decode/l;)V

    .line 14
    return-object p3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of p1, p1, Lcoil/decode/d$c;

    .line 3
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcoil/decode/d$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
