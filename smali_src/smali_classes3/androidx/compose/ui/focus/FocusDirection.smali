.class public final Landroidx/compose/ui/focus/FocusDirection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusDirection$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Down:I

.field private static final In:I

.field private static final Left:I

.field private static final Next:I

.field private static final Out:I

.field private static final Previous:I

.field private static final Right:I

.field private static final Up:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->j(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Next:I

    .line 16
    const/4 v0, 0x2

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->j(I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Previous:I

    .line 23
    const/4 v0, 0x3

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->j(I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Left:I

    .line 30
    const/4 v0, 0x4

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->j(I)I

    .line 34
    move-result v0

    .line 35
    .line 36
    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Right:I

    .line 37
    const/4 v0, 0x5

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->j(I)I

    .line 41
    move-result v0

    .line 42
    .line 43
    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Up:I

    .line 44
    const/4 v0, 0x6

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->j(I)I

    .line 48
    move-result v0

    .line 49
    .line 50
    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Down:I

    .line 51
    const/4 v0, 0x7

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->j(I)I

    .line 55
    move-result v0

    .line 56
    .line 57
    sput v0, Landroidx/compose/ui/focus/FocusDirection;->In:I

    .line 58
    .line 59
    const/16 v0, 0x8

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->j(I)I

    .line 63
    move-result v0

    .line 64
    .line 65
    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Out:I

    .line 66
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
    iput p1, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    .line 6
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Down:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->In:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Left:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Next:I

    return v0
.end method

.method public static final synthetic e()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Out:I

    return v0
.end method

.method public static final synthetic f()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Previous:I

    return v0
.end method

.method public static final synthetic g()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Right:I

    return v0
.end method

.method public static final synthetic h()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Up:I

    return v0
.end method

.method public static final synthetic i(I)Landroidx/compose/ui/focus/FocusDirection;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusDirection;

    invoke-direct {v0, p0}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    return-object v0
.end method

.method public static j(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static k(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/focus/FocusDirection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/focus/FocusDirection;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection;->o()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final l(II)Z
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

.method public static m(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static n(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Next:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p0, "Next"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Previous:I

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p0, "Previous"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Left:I

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const-string p0, "Left"

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Right:I

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const-string p0, "Right"

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_3
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Up:I

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const-string p0, "Up"

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_4
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Down:I

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    const-string p0, "Down"

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_5
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->In:I

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    const-string p0, "In"

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_6
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Out:I

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 83
    move-result p0

    .line 84
    .line 85
    if-eqz p0, :cond_7

    .line 86
    .line 87
    const-string p0, "Out"

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_7
    const-string p0, "Invalid FocusDirection"

    .line 91
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusDirection;->k(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->m(I)I

    move-result v0

    return v0
.end method

.method public final synthetic o()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->n(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
