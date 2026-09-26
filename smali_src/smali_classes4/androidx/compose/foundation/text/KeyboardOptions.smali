.class public final Landroidx/compose/foundation/text/KeyboardOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/KeyboardOptions$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Default:Landroidx/compose/foundation/text/KeyboardOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final autoCorrect:Z

.field private final capitalization:I

.field private final imeAction:I

.field private final keyboardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    .line 16
    const/16 v7, 0xf

    .line 17
    const/4 v8, 0x0

    .line 18
    move-object v2, v0

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIIILkotlin/jvm/internal/k;)V

    .line 22
    .line 23
    sput-object v0, Landroidx/compose/foundation/text/KeyboardOptions;->Default:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 24
    return-void
.end method

.method private constructor <init>(IZII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    iput-boolean p2, p0, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrect:Z

    iput p3, p0, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    iput p4, p0, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    return-void
.end method

.method public synthetic constructor <init>(IZIIILkotlin/jvm/internal/k;)V
    .locals 6

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 3
    sget-object p1, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->b()I

    move-result p1

    :cond_0
    move v1, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    move v2, p2

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->h()I

    move-result p3

    :cond_2
    move v3, p3

    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_3

    .line 5
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->a()I

    move-result p4

    :cond_3
    move v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(IZIILkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZII)V

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/foundation/text/KeyboardOptions;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/KeyboardOptions;->Default:Landroidx/compose/foundation/text/KeyboardOptions;

    return-object v0
.end method


# virtual methods
.method public final b(Z)Landroidx/compose/ui/text/input/ImeOptions;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v7, Landroidx/compose/ui/text/input/ImeOptions;

    .line 3
    .line 4
    iget v2, p0, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    .line 5
    .line 6
    iget-boolean v3, p0, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrect:Z

    .line 7
    .line 8
    iget v4, p0, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    .line 9
    .line 10
    iget v5, p0, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, v7

    .line 13
    move v1, p1

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/ImeOptions;-><init>(ZIZIILkotlin/jvm/internal/k;)V

    .line 17
    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v1, p1, Landroidx/compose/foundation/text/KeyboardOptions;

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
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 15
    .line 16
    iget v3, p1, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->g(II)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    return v2

    .line 24
    .line 25
    :cond_2
    iget-boolean v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrect:Z

    .line 26
    .line 27
    iget-boolean v3, p1, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrect:Z

    .line 28
    .line 29
    if-eq v1, v3, :cond_3

    .line 30
    return v2

    .line 31
    .line 32
    :cond_3
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    .line 33
    .line 34
    iget v3, p1, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v3}, Landroidx/compose/ui/text/input/KeyboardType;->l(II)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-nez v1, :cond_4

    .line 41
    return v2

    .line 42
    .line 43
    :cond_4
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    .line 44
    .line 45
    iget p1, p1, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    .line 46
    .line 47
    .line 48
    invoke-static {v1, p1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-nez p1, :cond_5

    .line 52
    return v2

    .line 53
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->h(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrect:Z

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/ui/text/input/KeyboardType;->m(I)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroidx/compose/ui/text/input/ImeAction;->m(I)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
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
    const-string v1, "KeyboardOptions(capitalization="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->capitalization:I

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->i(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, ", autoCorrect="

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-boolean v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->autoCorrect:Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, ", keyboardType="

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->keyboardType:I

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Landroidx/compose/ui/text/input/KeyboardType;->n(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, ", imeAction="

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->imeAction:I

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Landroidx/compose/ui/text/input/ImeAction;->n(I)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const/16 v1, 0x29

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method
