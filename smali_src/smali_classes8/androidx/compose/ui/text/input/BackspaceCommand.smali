.class public final Landroidx/compose/ui/text/input/BackspaceCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/input/EditCommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/input/EditingBuffer;)V
    .locals 3
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
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->l()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->f()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->e()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->b(II)V

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->g()I

    .line 27
    move-result v0

    .line 28
    const/4 v1, -0x1

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->k()I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->j()I

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->k()I

    .line 42
    move-result v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/input/EditingBuffer;->o(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->b(II)V

    .line 49
    return-void

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->g()I

    .line 53
    move-result v0

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    return-void

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->g()I

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/compose/ui/text/JvmCharHelpers_androidKt;->b(Ljava/lang/String;I)I

    .line 68
    move-result v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->g()I

    .line 72
    move-result v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->b(II)V

    .line 76
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of p1, p1, Landroidx/compose/ui/text/input/BackspaceCommand;

    .line 3
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroidx/compose/ui/text/input/BackspaceCommand;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "BackspaceCommand()"

    return-object v0
.end method
