.class public final Landroidx/window/core/Version;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/core/Version$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/window/core/Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final CURRENT:Landroidx/window/core/Version;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/window/core/Version$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UNKNOWN:Landroidx/window/core/Version;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VERSION_0_1:Landroidx/window/core/Version;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VERSION_1_0:Landroidx/window/core/Version;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VERSION_PATTERN_STRING:Ljava/lang/String; = "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bigInteger$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final description:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final major:I

.field private final minor:I

.field private final patch:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/window/core/Version$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/window/core/Version$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/window/core/Version;->Companion:Landroidx/window/core/Version$Companion;

    .line 9
    .line 10
    new-instance v0, Landroidx/window/core/Version;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v1, v1, v2}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Landroidx/window/core/Version;->UNKNOWN:Landroidx/window/core/Version;

    .line 19
    .line 20
    new-instance v0, Landroidx/window/core/Version;

    .line 21
    const/4 v3, 0x1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v3, v1, v2}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;)V

    .line 25
    .line 26
    sput-object v0, Landroidx/window/core/Version;->VERSION_0_1:Landroidx/window/core/Version;

    .line 27
    .line 28
    new-instance v0, Landroidx/window/core/Version;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v3, v1, v1, v2}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;)V

    .line 32
    .line 33
    sput-object v0, Landroidx/window/core/Version;->VERSION_1_0:Landroidx/window/core/Version;

    .line 34
    .line 35
    sput-object v0, Landroidx/window/core/Version;->CURRENT:Landroidx/window/core/Version;

    .line 36
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/window/core/Version;->major:I

    iput p2, p0, Landroidx/window/core/Version;->minor:I

    iput p3, p0, Landroidx/window/core/Version;->patch:I

    iput-object p4, p0, Landroidx/window/core/Version;->description:Ljava/lang/String;

    .line 3
    new-instance p1, Landroidx/window/core/Version$bigInteger$2;

    invoke-direct {p1, p0}, Landroidx/window/core/Version$bigInteger$2;-><init>(Landroidx/window/core/Version;)V

    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Landroidx/window/core/Version;->bigInteger$delegate:Lw7/m;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic a()Landroidx/window/core/Version;
    .locals 1

    .line 1
    sget-object v0, Landroidx/window/core/Version;->VERSION_0_1:Landroidx/window/core/Version;

    return-object v0
.end method

.method private final c()Ljava/math/BigInteger;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/window/core/Version;->bigInteger$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "<get-bigInteger>(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Ljava/math/BigInteger;

    .line 14
    return-object v0
.end method


# virtual methods
.method public b(Landroidx/window/core/Version;)I
    .locals 1
    .param p1    # Landroidx/window/core/Version;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "other"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/window/core/Version;->c()Ljava/math/BigInteger;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Landroidx/window/core/Version;->c()Ljava/math/BigInteger;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/window/core/Version;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/window/core/Version;->b(Landroidx/window/core/Version;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/window/core/Version;->major:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/window/core/Version;->minor:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/window/core/Version;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Landroidx/window/core/Version;->major:I

    .line 9
    .line 10
    check-cast p1, Landroidx/window/core/Version;

    .line 11
    .line 12
    iget v2, p1, Landroidx/window/core/Version;->major:I

    .line 13
    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    iget v0, p0, Landroidx/window/core/Version;->minor:I

    .line 17
    .line 18
    iget v2, p1, Landroidx/window/core/Version;->minor:I

    .line 19
    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    iget v0, p0, Landroidx/window/core/Version;->patch:I

    .line 23
    .line 24
    iget p1, p1, Landroidx/window/core/Version;->patch:I

    .line 25
    .line 26
    if-ne v0, p1, :cond_1

    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_1
    return v1
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/window/core/Version;->patch:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Landroidx/window/core/Version;->major:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/window/core/Version;->minor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/window/core/Version;->patch:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/window/core/Version;->description:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "-"

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/window/core/Version;->description:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const-string v0, ""

    .line 22
    .line 23
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    iget v2, p0, Landroidx/window/core/Version;->major:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const/16 v2, 0x2e

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget v3, p0, Landroidx/window/core/Version;->minor:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    iget v2, p0, Landroidx/window/core/Version;->patch:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
