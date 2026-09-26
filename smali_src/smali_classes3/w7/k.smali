.class public final Lw7/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw7/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lw7/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final CURRENT:Lw7/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lw7/k$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_COMPONENT_VALUE:I = 0xff


# instance fields
.field private final major:I

.field private final minor:I

.field private final patch:I

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lw7/k$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lw7/k$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lw7/k;->Companion:Lw7/k$a;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lw7/l;->a()Lw7/k;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sput-object v0, Lw7/k;->CURRENT:Lw7/k;

    .line 15
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lw7/k;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw7/k;->major:I

    iput p2, p0, Lw7/k;->minor:I

    iput p3, p0, Lw7/k;->patch:I

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lw7/k;->b(III)I

    move-result p1

    iput p1, p0, Lw7/k;->version:I

    return-void
.end method

.method private final b(III)I
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lj8/i;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/16 v2, 0xff

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lj8/i;-><init>(II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lj8/i;->p(I)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lj8/i;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lj8/i;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Lj8/i;->p(I)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Lj8/i;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, Lj8/i;-><init>(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p3}, Lj8/i;->p(I)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    shl-int/lit8 p1, p1, 0x10

    .line 39
    .line 40
    shl-int/lit8 p2, p2, 0x8

    .line 41
    add-int/2addr p1, p2

    .line 42
    add-int/2addr p1, p3

    .line 43
    return p1

    .line 44
    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v1, "Version components are out of range: "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const/16 p1, 0x2e

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p2
.end method


# virtual methods
.method public a(Lw7/k;)I
    .locals 1
    .param p1    # Lw7/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "other"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Lw7/k;->version:I

    .line 8
    .line 9
    iget p1, p1, Lw7/k;->version:I

    .line 10
    sub-int/2addr v0, p1

    .line 11
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lw7/k;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lw7/k;->a(Lw7/k;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    instance-of v1, p1, Lw7/k;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lw7/k;

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    return v1

    .line 17
    .line 18
    :cond_2
    iget v2, p0, Lw7/k;->version:I

    .line 19
    .line 20
    iget p1, p1, Lw7/k;->version:I

    .line 21
    .line 22
    if-ne v2, p1, :cond_3

    .line 23
    goto :goto_1

    .line 24
    :cond_3
    move v0, v1

    .line 25
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lw7/k;->version:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lw7/k;->major:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const/16 v1, 0x2e

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget v2, p0, Lw7/k;->minor:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iget v1, p0, Lw7/k;->patch:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
