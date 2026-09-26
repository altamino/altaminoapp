.class public final Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/BeyondBoundsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutDirection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;
    }
.end annotation


# static fields
.field private static final Above:I

.field private static final After:I

.field private static final Before:I

.field private static final Below:I

.field public static final Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Left:I

.field private static final Right:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->g(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Before:I

    .line 16
    const/4 v0, 0x2

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->g(I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->After:I

    .line 23
    const/4 v0, 0x3

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->g(I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Left:I

    .line 30
    const/4 v0, 0x4

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->g(I)I

    .line 34
    move-result v0

    .line 35
    .line 36
    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Right:I

    .line 37
    const/4 v0, 0x5

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->g(I)I

    .line 41
    move-result v0

    .line 42
    .line 43
    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Above:I

    .line 44
    const/4 v0, 0x6

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->g(I)I

    .line 48
    move-result v0

    .line 49
    .line 50
    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Below:I

    .line 51
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Above:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->After:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Before:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Below:I

    return v0
.end method

.method public static final synthetic e()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Left:I

    return v0
.end method

.method public static final synthetic f()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Right:I

    return v0
.end method

.method public static g(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static h(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;

    invoke-virtual {p1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->l()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final i(II)Z
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

.method public static j(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static k(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Before:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p0, "Before"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->After:I

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p0, "After"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Left:I

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

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
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Right:I

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

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
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Above:I

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const-string p0, "Above"

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_4
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Below:I

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 61
    move-result p0

    .line 62
    .line 63
    if-eqz p0, :cond_5

    .line 64
    .line 65
    const-string p0, "Below"

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_5
    const-string p0, "invalid LayoutDirection"

    .line 69
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->h(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->value:I

    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->j(I)I

    move-result v0

    return v0
.end method

.method public final synthetic l()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->value:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->k(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
