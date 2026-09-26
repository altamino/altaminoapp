.class public final Lw7/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw7/i0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lw7/i0;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lw7/i0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_VALUE:S = -0x1s

.field public static final MIN_VALUE:S = 0x0s

.field public static final SIZE_BITS:I = 0x10

.field public static final SIZE_BYTES:I = 0x2


# instance fields
.field private final data:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw7/i0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw7/i0$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lw7/i0;->Companion:Lw7/i0$a;

    return-void
.end method

.method private synthetic constructor <init>(S)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-short p1, p0, Lw7/i0;->data:S

    .line 6
    return-void
.end method

.method public static final synthetic a(S)Lw7/i0;
    .locals 1

    .line 1
    new-instance v0, Lw7/i0;

    invoke-direct {v0, p0}, Lw7/i0;-><init>(S)V

    return-object v0
.end method

.method public static b(S)S
    .locals 0

    .line 1
    return p0
.end method

.method public static c(SLjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lw7/i0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lw7/i0;

    invoke-virtual {p1}, Lw7/i0;->f()S

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(S)I
    .locals 0

    .line 1
    return p0
.end method

.method public static e(S)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0xffff

    .line 4
    and-int/2addr p0, v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    check-cast p1, Lw7/i0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lw7/i0;->f()S

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lw7/i0;->f()S

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    const v1, 0xffff

    .line 14
    and-int/2addr v0, v1

    .line 15
    and-int/2addr p1, v1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->l(II)I

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-short v0, p0, Lw7/i0;->data:S

    invoke-static {v0, p1}, Lw7/i0;->c(SLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f()S
    .locals 1

    .line 1
    iget-short v0, p0, Lw7/i0;->data:S

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-short v0, p0, Lw7/i0;->data:S

    invoke-static {v0}, Lw7/i0;->d(S)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-short v0, p0, Lw7/i0;->data:S

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lw7/i0;->e(S)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
