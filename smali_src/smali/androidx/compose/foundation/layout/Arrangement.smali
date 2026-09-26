.class public final Landroidx/compose/foundation/layout/Arrangement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/Arrangement$Horizontal;,
        Landroidx/compose/foundation/layout/Arrangement$Vertical;,
        Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;,
        Landroidx/compose/foundation/layout/Arrangement$Absolute;,
        Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrangement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Arrangement.kt\nandroidx/compose/foundation/layout/Arrangement\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,709:1\n700#1,2:715\n703#1,5:720\n700#1,2:725\n703#1,5:730\n700#1,2:738\n703#1,5:743\n700#1,2:751\n703#1,5:756\n700#1,2:764\n703#1,5:769\n700#1,2:777\n703#1,5:782\n155#2:710\n155#2:711\n12989#3,3:712\n13631#3,3:717\n13631#3,3:727\n12989#3,3:735\n13631#3,3:740\n12989#3,3:748\n13631#3,3:753\n12989#3,3:761\n13631#3,3:766\n12989#3,3:774\n13631#3,3:779\n13631#3,3:787\n*S KotlinDebug\n*F\n+ 1 Arrangement.kt\nandroidx/compose/foundation/layout/Arrangement\n*L\n618#1:715,2\n618#1:720,5\n626#1:725,2\n626#1:730,5\n640#1:738,2\n640#1:743,5\n655#1:751,2\n655#1:756,5\n674#1:764,2\n674#1:769,5\n693#1:777,2\n693#1:782,5\n354#1:710\n366#1:711\n616#1:712,3\n618#1:717,3\n626#1:727,3\n638#1:735,3\n640#1:740,3\n652#1:748,3\n655#1:753,3\n667#1:761,3\n674#1:766,3\n686#1:774,3\n693#1:779,3\n701#1:787,3\n*E\n"
.end annotation


# static fields
.field private static final Bottom:Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Center:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final End:Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/foundation/layout/Arrangement;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SpaceAround:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Start:Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Top:Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Start$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Start$1;-><init>()V

    .line 13
    .line 14
    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$End$1;-><init>()V

    .line 20
    .line 21
    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->End:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 22
    .line 23
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Top$1;-><init>()V

    .line 27
    .line 28
    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 29
    .line 30
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Bottom$1;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Bottom$1;-><init>()V

    .line 34
    .line 35
    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->Bottom:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 36
    .line 37
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Center$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Center$1;-><init>()V

    .line 41
    .line 42
    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 43
    .line 44
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpaceEvenly$1;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$SpaceEvenly$1;-><init>()V

    .line 48
    .line 49
    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 50
    .line 51
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;-><init>()V

    .line 55
    .line 56
    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 57
    .line 58
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpaceAround$1;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$SpaceAround$1;-><init>()V

    .line 62
    .line 63
    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->SpaceAround:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->Bottom:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object v0
.end method

.method public final b()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    return-object v0
.end method

.method public final c()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->End:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object v0
.end method

.method public final d()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    return-object v0
.end method

.method public final e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object v0
.end method

.method public final f()Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object v0
.end method

.method public final g(I[I[IZ)V
    .locals 5
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "size"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "outPosition"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v0, p2

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    move v3, v2

    .line 15
    .line 16
    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    .line 18
    aget v4, p2, v2

    .line 19
    add-int/2addr v3, v4

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sub-int/2addr p1, v3

    .line 24
    int-to-float p1, p1

    .line 25
    const/4 v0, 0x2

    .line 26
    int-to-float v0, v0

    .line 27
    div-float/2addr p1, v0

    .line 28
    .line 29
    if-nez p4, :cond_1

    .line 30
    array-length p4, p2

    .line 31
    move v0, v1

    .line 32
    .line 33
    :goto_1
    if-ge v1, p4, :cond_2

    .line 34
    .line 35
    aget v2, p2, v1

    .line 36
    .line 37
    add-int/lit8 v3, v0, 0x1

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 41
    move-result v4

    .line 42
    .line 43
    aput v4, p3, v0

    .line 44
    int-to-float v0, v2

    .line 45
    add-float/2addr p1, v0

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    move v0, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    array-length p4, p2

    .line 51
    .line 52
    add-int/lit8 p4, p4, -0x1

    .line 53
    :goto_2
    const/4 v0, -0x1

    .line 54
    .line 55
    if-ge v0, p4, :cond_2

    .line 56
    .line 57
    aget v0, p2, p4

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 61
    move-result v1

    .line 62
    .line 63
    aput v1, p3, p4

    .line 64
    int-to-float v0, v0

    .line 65
    add-float/2addr p1, v0

    .line 66
    .line 67
    add-int/lit8 p4, p4, -0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    return-void
.end method

.method public final h([I[IZ)V
    .locals 5
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "size"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "outPosition"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    array-length p3, p1

    .line 15
    move v1, v0

    .line 16
    move v2, v1

    .line 17
    .line 18
    :goto_0
    if-ge v0, p3, :cond_1

    .line 19
    .line 20
    aget v3, p1, v0

    .line 21
    .line 22
    add-int/lit8 v4, v1, 0x1

    .line 23
    .line 24
    aput v2, p2, v1

    .line 25
    add-int/2addr v2, v3

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    move v1, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    array-length p3, p1

    .line 31
    .line 32
    add-int/lit8 p3, p3, -0x1

    .line 33
    :goto_1
    const/4 v1, -0x1

    .line 34
    .line 35
    if-ge v1, p3, :cond_1

    .line 36
    .line 37
    aget v1, p1, p3

    .line 38
    .line 39
    aput v0, p2, p3

    .line 40
    add-int/2addr v0, v1

    .line 41
    .line 42
    add-int/lit8 p3, p3, -0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    return-void
.end method

.method public final i(I[I[IZ)V
    .locals 5
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "size"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "outPosition"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v0, p2

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    move v3, v2

    .line 15
    .line 16
    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    .line 18
    aget v4, p2, v2

    .line 19
    add-int/2addr v3, v4

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sub-int/2addr p1, v3

    .line 24
    .line 25
    if-nez p4, :cond_1

    .line 26
    array-length p4, p2

    .line 27
    move v0, v1

    .line 28
    .line 29
    :goto_1
    if-ge v1, p4, :cond_2

    .line 30
    .line 31
    aget v2, p2, v1

    .line 32
    .line 33
    add-int/lit8 v3, v0, 0x1

    .line 34
    .line 35
    aput p1, p3, v0

    .line 36
    add-int/2addr p1, v2

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    move v0, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    array-length p4, p2

    .line 42
    .line 43
    add-int/lit8 p4, p4, -0x1

    .line 44
    :goto_2
    const/4 v0, -0x1

    .line 45
    .line 46
    if-ge v0, p4, :cond_2

    .line 47
    .line 48
    aget v0, p2, p4

    .line 49
    .line 50
    aput p1, p3, p4

    .line 51
    add-int/2addr p1, v0

    .line 52
    .line 53
    add-int/lit8 p4, p4, -0x1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    return-void
.end method

.method public final j(I[I[IZ)V
    .locals 6
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "size"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "outPosition"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v0, p2

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    move v3, v2

    .line 15
    .line 16
    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    .line 18
    aget v4, p2, v2

    .line 19
    add-int/2addr v3, v4

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    array-length v0, p2

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    move v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, v1

    .line 30
    :goto_1
    xor-int/2addr v0, v2

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    sub-int/2addr p1, v3

    .line 34
    int-to-float p1, p1

    .line 35
    array-length v0, p2

    .line 36
    int-to-float v0, v0

    .line 37
    div-float/2addr p1, v0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    :goto_2
    const/4 v0, 0x2

    .line 41
    int-to-float v0, v0

    .line 42
    .line 43
    div-float v0, p1, v0

    .line 44
    .line 45
    if-nez p4, :cond_3

    .line 46
    array-length p4, p2

    .line 47
    move v2, v1

    .line 48
    .line 49
    :goto_3
    if-ge v1, p4, :cond_4

    .line 50
    .line 51
    aget v3, p2, v1

    .line 52
    .line 53
    add-int/lit8 v4, v2, 0x1

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lg8/a;->c(F)I

    .line 57
    move-result v5

    .line 58
    .line 59
    aput v5, p3, v2

    .line 60
    int-to-float v2, v3

    .line 61
    add-float/2addr v2, p1

    .line 62
    add-float/2addr v0, v2

    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    move v2, v4

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    array-length p4, p2

    .line 68
    sub-int/2addr p4, v2

    .line 69
    :goto_4
    const/4 v1, -0x1

    .line 70
    .line 71
    if-ge v1, p4, :cond_4

    .line 72
    .line 73
    aget v1, p2, p4

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lg8/a;->c(F)I

    .line 77
    move-result v2

    .line 78
    .line 79
    aput v2, p3, p4

    .line 80
    int-to-float v1, v1

    .line 81
    add-float/2addr v1, p1

    .line 82
    add-float/2addr v0, v1

    .line 83
    .line 84
    add-int/lit8 p4, p4, -0x1

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    return-void
.end method

.method public final k(I[I[IZ)V
    .locals 6
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "size"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "outPosition"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v0, p2

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    move v3, v2

    .line 15
    .line 16
    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    .line 18
    aget v4, p2, v2

    .line 19
    add-int/2addr v3, v4

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    array-length v0, p2

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v4, 0x1

    .line 26
    .line 27
    if-le v0, v4, :cond_1

    .line 28
    sub-int/2addr p1, v3

    .line 29
    int-to-float p1, p1

    .line 30
    array-length v0, p2

    .line 31
    sub-int/2addr v0, v4

    .line 32
    int-to-float v0, v0

    .line 33
    div-float/2addr p1, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move p1, v2

    .line 36
    .line 37
    :goto_1
    if-nez p4, :cond_2

    .line 38
    array-length p4, p2

    .line 39
    move v0, v1

    .line 40
    .line 41
    :goto_2
    if-ge v1, p4, :cond_3

    .line 42
    .line 43
    aget v3, p2, v1

    .line 44
    .line 45
    add-int/lit8 v4, v0, 0x1

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 49
    move-result v5

    .line 50
    .line 51
    aput v5, p3, v0

    .line 52
    int-to-float v0, v3

    .line 53
    add-float/2addr v0, p1

    .line 54
    add-float/2addr v2, v0

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    move v0, v4

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    array-length p4, p2

    .line 60
    sub-int/2addr p4, v4

    .line 61
    :goto_3
    const/4 v0, -0x1

    .line 62
    .line 63
    if-ge v0, p4, :cond_3

    .line 64
    .line 65
    aget v0, p2, p4

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 69
    move-result v1

    .line 70
    .line 71
    aput v1, p3, p4

    .line 72
    int-to-float v0, v0

    .line 73
    add-float/2addr v0, p1

    .line 74
    add-float/2addr v2, v0

    .line 75
    .line 76
    add-int/lit8 p4, p4, -0x1

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    return-void
.end method

.method public final l(I[I[IZ)V
    .locals 6
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "size"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "outPosition"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v0, p2

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    move v3, v2

    .line 15
    .line 16
    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    .line 18
    aget v4, p2, v2

    .line 19
    add-int/2addr v3, v4

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sub-int/2addr p1, v3

    .line 24
    int-to-float p1, p1

    .line 25
    array-length v0, p2

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    int-to-float v0, v0

    .line 29
    div-float/2addr p1, v0

    .line 30
    .line 31
    if-nez p4, :cond_1

    .line 32
    array-length p4, p2

    .line 33
    move v2, p1

    .line 34
    move v0, v1

    .line 35
    .line 36
    :goto_1
    if-ge v1, p4, :cond_2

    .line 37
    .line 38
    aget v3, p2, v1

    .line 39
    .line 40
    add-int/lit8 v4, v0, 0x1

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 44
    move-result v5

    .line 45
    .line 46
    aput v5, p3, v0

    .line 47
    int-to-float v0, v3

    .line 48
    add-float/2addr v0, p1

    .line 49
    add-float/2addr v2, v0

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    move v0, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    array-length p4, p2

    .line 55
    .line 56
    add-int/lit8 p4, p4, -0x1

    .line 57
    move v0, p1

    .line 58
    :goto_2
    const/4 v1, -0x1

    .line 59
    .line 60
    if-ge v1, p4, :cond_2

    .line 61
    .line 62
    aget v1, p2, p4

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lg8/a;->c(F)I

    .line 66
    move-result v2

    .line 67
    .line 68
    aput v2, p3, p4

    .line 69
    int-to-float v1, v1

    .line 70
    add-float/2addr v1, p1

    .line 71
    add-float/2addr v0, v1

    .line 72
    .line 73
    add-int/lit8 p4, p4, -0x1

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    return-void
.end method
