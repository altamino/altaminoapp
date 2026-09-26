.class public final Lw7/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw7/b0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lw7/b0;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lw7/b0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_VALUE:B = -0x1t

.field public static final MIN_VALUE:B = 0x0t

.field public static final SIZE_BITS:I = 0x8

.field public static final SIZE_BYTES:I = 0x1


# instance fields
.field private final data:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw7/b0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw7/b0$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lw7/b0;->Companion:Lw7/b0$a;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-byte p1, p0, Lw7/b0;->data:B

    .line 6
    return-void
.end method

.method public static final synthetic a(B)Lw7/b0;
    .locals 1

    .line 1
    new-instance v0, Lw7/b0;

    invoke-direct {v0, p0}, Lw7/b0;-><init>(B)V

    return-object v0
.end method

.method public static b(B)B
    .locals 0

    .line 1
    return p0
.end method

.method public static c(BLjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lw7/b0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lw7/b0;

    invoke-virtual {p1}, Lw7/b0;->f()B

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(B)I
    .locals 0

    .line 1
    return p0
.end method

.method public static e(B)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    and-int/lit16 p0, p0, 0xff

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    check-cast p1, Lw7/b0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lw7/b0;->f()B

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lw7/b0;->f()B

    .line 10
    move-result v0

    .line 11
    .line 12
    and-int/lit16 v0, v0, 0xff

    .line 13
    .line 14
    and-int/lit16 p1, p1, 0xff

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->l(II)I

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-byte v0, p0, Lw7/b0;->data:B

    invoke-static {v0, p1}, Lw7/b0;->c(BLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lw7/b0;->data:B

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-byte v0, p0, Lw7/b0;->data:B

    invoke-static {v0}, Lw7/b0;->d(B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-byte v0, p0, Lw7/b0;->data:B

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lw7/b0;->e(B)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
