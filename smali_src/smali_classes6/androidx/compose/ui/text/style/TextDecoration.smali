.class public final Landroidx/compose/ui/text/style/TextDecoration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/TextDecoration$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LineThrough:Landroidx/compose/ui/text/style/TextDecoration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final None:Landroidx/compose/ui/text/style/TextDecoration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Underline:Landroidx/compose/ui/text/style/TextDecoration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/text/style/TextDecoration;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    .line 15
    .line 16
    sput-object v0, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/ui/text/style/TextDecoration;

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    .line 23
    .line 24
    sput-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/ui/text/style/TextDecoration;

    .line 27
    const/4 v1, 0x2

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    .line 31
    .line 32
    sput-object v0, Landroidx/compose/ui/text/style/TextDecoration;->LineThrough:Landroidx/compose/ui/text/style/TextDecoration;

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 6
    return-void
.end method

.method public static final synthetic a()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->LineThrough:Landroidx/compose/ui/text/style/TextDecoration;

    return-object v0
.end method

.method public static final synthetic b()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    return-object v0
.end method

.method public static final synthetic c()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    return-object v0
.end method


# virtual methods
.method public final d(Landroidx/compose/ui/text/style/TextDecoration;)Z
    .locals 1
    .param p1    # Landroidx/compose/ui/text/style/TextDecoration;
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
    iget v0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 8
    .line 9
    iget p1, p1, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 10
    or-int/2addr p1, v0

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    return v0
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
    instance-of v1, p1, Landroidx/compose/ui/text/style/TextDecoration;

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
    iget v1, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/ui/text/style/TextDecoration;

    .line 15
    .line 16
    iget p1, p1, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

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

    iget v0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "TextDecoration.None"

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iget v0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 15
    .line 16
    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    .line 17
    .line 18
    iget v2, v2, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 19
    and-int/2addr v0, v2

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v0, "Underline"

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    :cond_1
    iget v0, p0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 29
    .line 30
    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->LineThrough:Landroidx/compose/ui/text/style/TextDecoration;

    .line 31
    .line 32
    iget v2, v2, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 33
    and-int/2addr v0, v2

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-string v0, "LineThrough"

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x1

    .line 46
    .line 47
    if-ne v0, v2, :cond_3

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v2, "TextDecoration."

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/4 v2, 0x0

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    check-cast v1, Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    .line 74
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    const-string v2, "TextDecoration["

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v2, ", "

    .line 85
    const/4 v3, 0x0

    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v7, 0x0

    .line 90
    .line 91
    const/16 v8, 0x3e

    .line 92
    const/4 v9, 0x0

    .line 93
    .line 94
    .line 95
    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/text/TempListUtilsKt;->e(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le8/l;ILjava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const/16 v1, 0x5d

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    return-object v0
.end method
