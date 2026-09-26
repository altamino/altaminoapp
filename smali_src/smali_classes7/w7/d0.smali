.class public final Lw7/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw7/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lw7/d0;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lw7/d0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_VALUE:I = -0x1

.field public static final MIN_VALUE:I = 0x0

.field public static final SIZE_BITS:I = 0x20

.field public static final SIZE_BYTES:I = 0x4


# instance fields
.field private final data:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw7/d0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw7/d0$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lw7/d0;->Companion:Lw7/d0$a;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lw7/d0;->data:I

    .line 6
    return-void
.end method

.method public static final synthetic a(I)Lw7/d0;
    .locals 1

    .line 1
    new-instance v0, Lw7/d0;

    invoke-direct {v0, p0}, Lw7/d0;-><init>(I)V

    return-object v0
.end method

.method public static b(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static c(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lw7/d0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lw7/d0;

    invoke-virtual {p1}, Lw7/d0;->f()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    int-to-long v0, p0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v2, 0xffffffffL

    .line 7
    and-long/2addr v0, v2

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    check-cast p1, Lw7/d0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lw7/d0;->f()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lw7/d0;->f()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Lw7/n0;->b(II)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lw7/d0;->data:I

    invoke-static {v0, p1}, Lw7/d0;->c(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f()I
    .locals 1

    .line 1
    iget v0, p0, Lw7/d0;->data:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lw7/d0;->data:I

    invoke-static {v0}, Lw7/d0;->d(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lw7/d0;->data:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lw7/d0;->e(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
