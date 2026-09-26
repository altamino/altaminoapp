.class public final Landroidx/compose/ui/text/input/MoveCursorCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/input/EditCommand;


# instance fields
.field private final amount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/ui/text/input/MoveCursorCommand;->amount:I

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/input/EditingBuffer;)V
    .locals 6
    .param p1    # Landroidx/compose/ui/text/input/EditingBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "buffer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->g()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->k()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/input/EditingBuffer;->o(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->k()I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    iget v3, p0, Landroidx/compose/ui/text/input/MoveCursorCommand;->amount:I

    .line 30
    const/4 v4, 0x0

    .line 31
    .line 32
    if-lez v3, :cond_1

    .line 33
    .line 34
    :goto_0
    if-ge v4, v3, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v0}, Landroidx/compose/ui/text/JvmCharHelpers_androidKt;->a(Ljava/lang/String;I)I

    .line 38
    move-result v5

    .line 39
    .line 40
    if-eq v5, v1, :cond_2

    .line 41
    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    move v0, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    neg-int v3, v3

    .line 46
    .line 47
    :goto_1
    if-ge v4, v3, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v0}, Landroidx/compose/ui/text/JvmCharHelpers_androidKt;->b(Ljava/lang/String;I)I

    .line 51
    move-result v5

    .line 52
    .line 53
    if-eq v5, v1, :cond_2

    .line 54
    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 56
    move v0, v5

    .line 57
    goto :goto_1

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/input/EditingBuffer;->o(I)V

    .line 61
    return-void
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
    instance-of v1, p1, Landroidx/compose/ui/text/input/MoveCursorCommand;

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
    iget v1, p0, Landroidx/compose/ui/text/input/MoveCursorCommand;->amount:I

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/ui/text/input/MoveCursorCommand;

    .line 15
    .line 16
    iget p1, p1, Landroidx/compose/ui/text/input/MoveCursorCommand;->amount:I

    .line 17
    .line 18
    if-eq v1, p1, :cond_2

    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/input/MoveCursorCommand;->amount:I

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
    const-string v1, "MoveCursorCommand(amount="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/ui/text/input/MoveCursorCommand;->amount:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/16 v1, 0x29

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
