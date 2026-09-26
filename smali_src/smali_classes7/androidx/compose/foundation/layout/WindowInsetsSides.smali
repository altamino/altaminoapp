.class public final Landroidx/compose/foundation/layout/WindowInsetsSides;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;
    }
.end annotation


# static fields
.field private static final AllowLeftInLtr:I

.field private static final AllowLeftInRtl:I

.field private static final AllowRightInLtr:I

.field private static final AllowRightInRtl:I

.field private static final Bottom:I

.field public static final Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final End:I

.field private static final Horizontal:I

.field private static final Left:I

.field private static final Right:I

.field private static final Start:I

.field private static final Top:I

.field private static final Vertical:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->k(I)I

    .line 14
    move-result v0

    .line 15
    .line 16
    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInLtr:I

    .line 17
    const/4 v1, 0x4

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->k(I)I

    .line 21
    move-result v1

    .line 22
    .line 23
    sput v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInLtr:I

    .line 24
    const/4 v2, 0x2

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsetsSides;->k(I)I

    .line 28
    move-result v2

    .line 29
    .line 30
    sput v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInRtl:I

    .line 31
    const/4 v3, 0x1

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Landroidx/compose/foundation/layout/WindowInsetsSides;->k(I)I

    .line 35
    move-result v3

    .line 36
    .line 37
    sput v3, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInRtl:I

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/WindowInsetsSides;->p(II)I

    .line 41
    move-result v4

    .line 42
    .line 43
    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->Start:I

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/WindowInsetsSides;->p(II)I

    .line 47
    move-result v4

    .line 48
    .line 49
    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->End:I

    .line 50
    .line 51
    const/16 v4, 0x10

    .line 52
    .line 53
    .line 54
    invoke-static {v4}, Landroidx/compose/foundation/layout/WindowInsetsSides;->k(I)I

    .line 55
    move-result v4

    .line 56
    .line 57
    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->Top:I

    .line 58
    .line 59
    const/16 v5, 0x20

    .line 60
    .line 61
    .line 62
    invoke-static {v5}, Landroidx/compose/foundation/layout/WindowInsetsSides;->k(I)I

    .line 63
    move-result v5

    .line 64
    .line 65
    sput v5, Landroidx/compose/foundation/layout/WindowInsetsSides;->Bottom:I

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/WindowInsetsSides;->p(II)I

    .line 69
    move-result v0

    .line 70
    .line 71
    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Left:I

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/WindowInsetsSides;->p(II)I

    .line 75
    move-result v1

    .line 76
    .line 77
    sput v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Right:I

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->p(II)I

    .line 81
    move-result v0

    .line 82
    .line 83
    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Horizontal:I

    .line 84
    .line 85
    .line 86
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/WindowInsetsSides;->p(II)I

    .line 87
    move-result v0

    .line 88
    .line 89
    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Vertical:I

    .line 90
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInLtr:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInRtl:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInLtr:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInRtl:I

    return v0
.end method

.method public static final synthetic e()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Bottom:I

    return v0
.end method

.method public static final synthetic f()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->End:I

    return v0
.end method

.method public static final synthetic g()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Left:I

    return v0
.end method

.method public static final synthetic h()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Right:I

    return v0
.end method

.method public static final synthetic i()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Start:I

    return v0
.end method

.method public static final synthetic j()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Top:I

    return v0
.end method

.method private static k(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static l(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/layout/WindowInsetsSides;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsSides;

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->r()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final m(II)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final n(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static o(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static final p(II)I
    .locals 0

    .line 1
    or-int/2addr p0, p1

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->k(I)I

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static q(I)Ljava/lang/String;
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
    const-string v1, "WindowInsetsSides("

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->s(I)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const/16 p0, 0x29

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private static final s(I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Start:I

    .line 8
    .line 9
    and-int v2, p0, v1

    .line 10
    .line 11
    if-ne v2, v1, :cond_0

    .line 12
    .line 13
    const-string v1, "Start"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->t(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 17
    .line 18
    :cond_0
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Left:I

    .line 19
    .line 20
    and-int v2, p0, v1

    .line 21
    .line 22
    if-ne v2, v1, :cond_1

    .line 23
    .line 24
    const-string v1, "Left"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->t(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    .line 29
    :cond_1
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Top:I

    .line 30
    .line 31
    and-int v2, p0, v1

    .line 32
    .line 33
    if-ne v2, v1, :cond_2

    .line 34
    .line 35
    const-string v1, "Top"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->t(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 39
    .line 40
    :cond_2
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->End:I

    .line 41
    .line 42
    and-int v2, p0, v1

    .line 43
    .line 44
    if-ne v2, v1, :cond_3

    .line 45
    .line 46
    const-string v1, "End"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->t(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    :cond_3
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Right:I

    .line 52
    .line 53
    and-int v2, p0, v1

    .line 54
    .line 55
    if-ne v2, v1, :cond_4

    .line 56
    .line 57
    const-string v1, "Right"

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->t(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 61
    .line 62
    :cond_4
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Bottom:I

    .line 63
    and-int/2addr p0, v1

    .line 64
    .line 65
    if-ne p0, v1, :cond_5

    .line 66
    .line 67
    const-string p0, "Bottom"

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->t(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    .line 76
    const-string v0, "StringBuilder().apply(builderAction).toString()"

    .line 77
    .line 78
    .line 79
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    return-object p0
.end method

.method private static final t(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x2b

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->l(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->o(I)I

    move-result v0

    return v0
.end method

.method public final synthetic r()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->q(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
