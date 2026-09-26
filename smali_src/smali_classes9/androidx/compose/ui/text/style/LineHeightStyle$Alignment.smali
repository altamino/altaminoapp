.class public final Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/LineHeightStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;
    }
.end annotation


# static fields
.field private static final Bottom:I

.field private static final Center:I

.field public static final Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Proportional:I

.field private static final Top:I


# instance fields
.field private final topPercentage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->b(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Top:I

    .line 16
    .line 17
    const/16 v0, 0x32

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->b(I)I

    .line 21
    move-result v0

    .line 22
    .line 23
    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:I

    .line 24
    const/4 v0, -0x1

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->b(I)I

    .line 28
    move-result v0

    .line 29
    .line 30
    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Proportional:I

    .line 31
    .line 32
    const/16 v0, 0x64

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->b(I)I

    .line 36
    move-result v0

    .line 37
    .line 38
    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Bottom:I

    .line 39
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Proportional:I

    return v0
.end method

.method private static b(I)I
    .locals 1

    .line 1
    .line 2
    if-ltz p0, :cond_0

    .line 3
    .line 4
    const/16 v0, 0x65

    .line 5
    .line 6
    if-ge p0, v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    :goto_0
    return p0

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "topRatio should be in [0..100] range or -1"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0
.end method

.method public static c(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->g()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final d(II)Z
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

.method public static e(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static f(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Top:I

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const-string p0, "LineHeightStyle.Alignment.Top"

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:I

    .line 10
    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    const-string p0, "LineHeightStyle.Alignment.Center"

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Proportional:I

    .line 17
    .line 18
    if-ne p0, v0, :cond_2

    .line 19
    .line 20
    const-string p0, "LineHeightStyle.Alignment.Proportional"

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_2
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Bottom:I

    .line 24
    .line 25
    if-ne p0, v0, :cond_3

    .line 26
    .line 27
    const-string p0, "LineHeightStyle.Alignment.Bottom"

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v1, "LineHeightStyle.Alignment(topPercentage = "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const/16 p0, 0x29

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topPercentage:I

    invoke-static {v0, p1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->c(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic g()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topPercentage:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topPercentage:I

    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->e(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topPercentage:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->f(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
