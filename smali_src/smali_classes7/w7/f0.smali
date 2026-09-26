.class public final Lw7/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw7/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lw7/f0;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lw7/f0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_VALUE:J = -0x1L

.field public static final MIN_VALUE:J = 0x0L

.field public static final SIZE_BITS:I = 0x40

.field public static final SIZE_BYTES:I = 0x8


# instance fields
.field private final data:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw7/f0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw7/f0$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lw7/f0;->Companion:Lw7/f0$a;

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lw7/f0;->data:J

    .line 6
    return-void
.end method

.method public static final synthetic a(J)Lw7/f0;
    .locals 1

    .line 1
    new-instance v0, Lw7/f0;

    invoke-direct {v0, p0, p1}, Lw7/f0;-><init>(J)V

    return-object v0
.end method

.method public static b(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static c(JLjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Lw7/f0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lw7/f0;

    invoke-virtual {p2}, Lw7/f0;->f()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/a;->a(J)I

    move-result p0

    return p0
.end method

.method public static e(J)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lw7/n0;->f(J)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    .line 2
    check-cast p1, Lw7/f0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lw7/f0;->f()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lw7/f0;->f()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v3, v0, v1}, Lw7/n0;->d(JJ)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lw7/f0;->data:J

    invoke-static {v0, v1, p1}, Lw7/f0;->c(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lw7/f0;->data:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lw7/f0;->data:J

    invoke-static {v0, v1}, Lw7/f0;->d(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lw7/f0;->data:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lw7/f0;->e(J)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
