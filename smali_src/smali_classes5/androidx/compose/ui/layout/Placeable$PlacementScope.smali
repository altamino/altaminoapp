.class public abstract Landroidx/compose/ui/layout/Placeable$PlacementScope;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/Placeable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlacementScope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaceable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Placeable.kt\nandroidx/compose/ui/layout/Placeable$PlacementScope\n+ 2 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,346:1\n298#1,2:347\n315#1:349\n316#1:351\n301#1,2:352\n315#1,2:354\n307#1:356\n298#1,2:357\n315#1:359\n316#1:361\n301#1,2:362\n315#1,2:364\n307#1:366\n315#1:367\n316#1:369\n315#1:370\n316#1:372\n298#1,2:373\n315#1:375\n316#1:377\n301#1,2:378\n315#1,2:380\n307#1:382\n298#1,2:383\n315#1:385\n316#1:387\n301#1,2:388\n315#1,2:390\n307#1:392\n315#1:393\n316#1:395\n315#1:396\n316#1:398\n315#1:399\n316#1:401\n315#1:402\n316#1:404\n86#2:350\n86#2:360\n86#2:368\n86#2:371\n86#2:376\n86#2:386\n86#2:394\n86#2:397\n86#2:400\n86#2:403\n86#2:405\n*S KotlinDebug\n*F\n+ 1 Placeable.kt\nandroidx/compose/ui/layout/Placeable$PlacementScope\n*L\n164#1:347,2\n164#1:349\n164#1:351\n164#1:352,2\n164#1:354,2\n164#1:356\n180#1:357,2\n180#1:359\n180#1:361\n180#1:362,2\n180#1:364,2\n180#1:366\n192#1:367\n192#1:369\n204#1:370\n204#1:372\n227#1:373,2\n227#1:375\n227#1:377\n227#1:378,2\n227#1:380,2\n227#1:382\n251#1:383,2\n251#1:385\n251#1:387\n251#1:388,2\n251#1:390,2\n251#1:392\n271#1:393\n271#1:395\n290#1:396\n290#1:398\n299#1:399\n299#1:401\n301#1:402\n301#1:404\n164#1:350\n180#1:360\n192#1:368\n204#1:371\n227#1:376\n251#1:386\n271#1:394\n290#1:397\n299#1:400\n301#1:403\n315#1:405\n*E\n"
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static parentWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    sput-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->g()Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public static final synthetic c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->h()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentWidth:I

    return v0
.end method

.method public static final synthetic e(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public static final synthetic f(I)V
    .locals 0

    .line 1
    sput p0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentWidth:I

    return-void
.end method

.method public static synthetic j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p6, :cond_1

    .line 3
    .line 4
    and-int/lit8 p5, p5, 0x4

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    const/4 p4, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->i(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: place"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method public static synthetic l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p6, :cond_1

    .line 3
    .line 4
    and-int/lit8 p5, p5, 0x2

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    const/4 p4, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->k(Landroidx/compose/ui/layout/Placeable;JF)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: place-70tqf50"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method public static synthetic n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p6, :cond_1

    .line 3
    .line 4
    and-int/lit8 p5, p5, 0x4

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    const/4 p4, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->m(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelative"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method public static synthetic p(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p6, :cond_1

    .line 3
    .line 4
    and-int/lit8 p5, p5, 0x2

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    const/4 p4, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->o(Landroidx/compose/ui/layout/Placeable;JF)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelative-70tqf50"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method public static synthetic r(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLe8/l;ILjava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    if-nez p7, :cond_2

    .line 3
    .line 4
    and-int/lit8 p7, p6, 0x4

    .line 5
    .line 6
    if-eqz p7, :cond_0

    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    move v4, p4

    .line 9
    .line 10
    and-int/lit8 p4, p6, 0x8

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->b()Le8/l;

    .line 16
    move-result-object p5

    .line 17
    :cond_1
    move-object v5, p5

    .line 18
    move-object v0, p0

    .line 19
    move-object v1, p1

    .line 20
    move v2, p2

    .line 21
    move v3, p3

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->q(Landroidx/compose/ui/layout/Placeable;IIFLe8/l;)V

    .line 25
    return-void

    .line 26
    .line 27
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 28
    .line 29
    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelativeWithLayer"

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
.end method

.method public static synthetic t(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLe8/l;ILjava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    if-nez p7, :cond_2

    .line 3
    .line 4
    and-int/lit8 p7, p6, 0x2

    .line 5
    .line 6
    if-eqz p7, :cond_0

    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    move v4, p4

    .line 9
    .line 10
    and-int/lit8 p4, p6, 0x4

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->b()Le8/l;

    .line 16
    move-result-object p5

    .line 17
    :cond_1
    move-object v5, p5

    .line 18
    move-object v0, p0

    .line 19
    move-object v1, p1

    .line 20
    move-wide v2, p2

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->s(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelativeWithLayer-aW-9-wM"

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method

.method public static synthetic v(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLe8/l;ILjava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    if-nez p7, :cond_2

    .line 3
    .line 4
    and-int/lit8 p7, p6, 0x4

    .line 5
    .line 6
    if-eqz p7, :cond_0

    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    move v4, p4

    .line 9
    .line 10
    and-int/lit8 p4, p6, 0x8

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->b()Le8/l;

    .line 16
    move-result-object p5

    .line 17
    :cond_1
    move-object v5, p5

    .line 18
    move-object v0, p0

    .line 19
    move-object v1, p1

    .line 20
    move v2, p2

    .line 21
    move v3, p3

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->u(Landroidx/compose/ui/layout/Placeable;IIFLe8/l;)V

    .line 25
    return-void

    .line 26
    .line 27
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 28
    .line 29
    const-string p1, "Super calls with default arguments not supported in this target, function: placeWithLayer"

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
.end method

.method public static synthetic x(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLe8/l;ILjava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    if-nez p7, :cond_2

    .line 3
    .line 4
    and-int/lit8 p7, p6, 0x2

    .line 5
    .line 6
    if-eqz p7, :cond_0

    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    move v4, p4

    .line 9
    .line 10
    and-int/lit8 p4, p6, 0x4

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->b()Le8/l;

    .line 16
    move-result-object p5

    .line 17
    :cond_1
    move-object v5, p5

    .line 18
    move-object v0, p0

    .line 19
    move-object v1, p1

    .line 20
    move-wide v2, p2

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->w(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    const-string p1, "Super calls with default arguments not supported in this target, function: placeWithLayer-aW-9-wM"

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method


# virtual methods
.method protected abstract g()Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected abstract h()I
.end method

.method public final i(Landroidx/compose/ui/layout/Placeable;IIF)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 9
    move-result-wide p2

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->d0(Landroidx/compose/ui/layout/Placeable;)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 21
    move-result v3

    .line 22
    add-int/2addr v2, v3

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 26
    move-result p2

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 30
    move-result p3

    .line 31
    add-int/2addr p2, p3

    .line 32
    .line 33
    .line 34
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 35
    move-result-wide p2

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2, p3, p4, v0}, Landroidx/compose/ui/layout/Placeable;->s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 40
    return-void
.end method

.method public final k(Landroidx/compose/ui/layout/Placeable;JF)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$place"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->d0(Landroidx/compose/ui/layout/Placeable;)J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 13
    move-result v2

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 17
    move-result v3

    .line 18
    add-int/2addr v2, v3

    .line 19
    .line 20
    .line 21
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 22
    move-result p2

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 26
    move-result p3

    .line 27
    add-int/2addr p2, p3

    .line 28
    .line 29
    .line 30
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 31
    move-result-wide p2

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2, p3, p4, v0}, Landroidx/compose/ui/layout/Placeable;->s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 36
    return-void
.end method

.method public final m(Landroidx/compose/ui/layout/Placeable;IIF)V
    .locals 5
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 9
    move-result-wide p2

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->q0(Landroidx/compose/ui/layout/Placeable;)J

    .line 33
    move-result-wide v3

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 37
    move-result v1

    .line 38
    sub-int/2addr v0, v1

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 42
    move-result v1

    .line 43
    sub-int/2addr v0, v1

    .line 44
    .line 45
    .line 46
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 47
    move-result p2

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 51
    move-result-wide p2

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->d0(Landroidx/compose/ui/layout/Placeable;)J

    .line 55
    move-result-wide v0

    .line 56
    .line 57
    .line 58
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 59
    move-result v3

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 63
    move-result v4

    .line 64
    add-int/2addr v3, v4

    .line 65
    .line 66
    .line 67
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 68
    move-result p2

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 72
    move-result p3

    .line 73
    add-int/2addr p2, p3

    .line 74
    .line 75
    .line 76
    invoke-static {v3, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 77
    move-result-wide p2

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p2, p3, p4, v2}, Landroidx/compose/ui/layout/Placeable;->s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 81
    goto :goto_1

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->d0(Landroidx/compose/ui/layout/Placeable;)J

    .line 85
    move-result-wide v0

    .line 86
    .line 87
    .line 88
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 89
    move-result v3

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 93
    move-result v4

    .line 94
    add-int/2addr v3, v4

    .line 95
    .line 96
    .line 97
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 98
    move-result p2

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 102
    move-result p3

    .line 103
    add-int/2addr p2, p3

    .line 104
    .line 105
    .line 106
    invoke-static {v3, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 107
    move-result-wide p2

    .line 108
    .line 109
    .line 110
    invoke-static {p1, p2, p3, p4, v2}, Landroidx/compose/ui/layout/Placeable;->s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 111
    :goto_1
    return-void
.end method

.method public final o(Landroidx/compose/ui/layout/Placeable;JF)V
    .locals 5
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$placeRelative"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->q0(Landroidx/compose/ui/layout/Placeable;)J

    .line 29
    move-result-wide v3

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 33
    move-result v1

    .line 34
    sub-int/2addr v0, v1

    .line 35
    .line 36
    .line 37
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 38
    move-result v1

    .line 39
    sub-int/2addr v0, v1

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 43
    move-result p2

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 47
    move-result-wide p2

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->d0(Landroidx/compose/ui/layout/Placeable;)J

    .line 51
    move-result-wide v0

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 55
    move-result v3

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 59
    move-result v4

    .line 60
    add-int/2addr v3, v4

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 64
    move-result p2

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 68
    move-result p3

    .line 69
    add-int/2addr p2, p3

    .line 70
    .line 71
    .line 72
    invoke-static {v3, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 73
    move-result-wide p2

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2, p3, p4, v2}, Landroidx/compose/ui/layout/Placeable;->s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->d0(Landroidx/compose/ui/layout/Placeable;)J

    .line 81
    move-result-wide v0

    .line 82
    .line 83
    .line 84
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 85
    move-result v3

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 89
    move-result v4

    .line 90
    add-int/2addr v3, v4

    .line 91
    .line 92
    .line 93
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 94
    move-result p2

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 98
    move-result p3

    .line 99
    add-int/2addr p2, p3

    .line 100
    .line 101
    .line 102
    invoke-static {v3, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 103
    move-result-wide p2

    .line 104
    .line 105
    .line 106
    invoke-static {p1, p2, p3, p4, v2}, Landroidx/compose/ui/layout/Placeable;->s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 107
    :goto_1
    return-void
.end method

.method public final q(Landroidx/compose/ui/layout/Placeable;IIFLe8/l;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "IIF",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layerBlock"

    .line 8
    .line 9
    .line 10
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 14
    move-result-wide p2

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->q0(Landroidx/compose/ui/layout/Placeable;)J

    .line 37
    move-result-wide v1

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 41
    move-result v1

    .line 42
    sub-int/2addr v0, v1

    .line 43
    .line 44
    .line 45
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 46
    move-result v1

    .line 47
    sub-int/2addr v0, v1

    .line 48
    .line 49
    .line 50
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 51
    move-result p2

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 55
    move-result-wide p2

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->d0(Landroidx/compose/ui/layout/Placeable;)J

    .line 59
    move-result-wide v0

    .line 60
    .line 61
    .line 62
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 63
    move-result v2

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 67
    move-result v3

    .line 68
    add-int/2addr v2, v3

    .line 69
    .line 70
    .line 71
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 72
    move-result p2

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 76
    move-result p3

    .line 77
    add-int/2addr p2, p3

    .line 78
    .line 79
    .line 80
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 81
    move-result-wide p2

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 85
    goto :goto_1

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->d0(Landroidx/compose/ui/layout/Placeable;)J

    .line 89
    move-result-wide v0

    .line 90
    .line 91
    .line 92
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 93
    move-result v2

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 97
    move-result v3

    .line 98
    add-int/2addr v2, v3

    .line 99
    .line 100
    .line 101
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 102
    move-result p2

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 106
    move-result p3

    .line 107
    add-int/2addr p2, p3

    .line 108
    .line 109
    .line 110
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 111
    move-result-wide p2

    .line 112
    .line 113
    .line 114
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 115
    :goto_1
    return-void
.end method

.method public final s(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$placeRelativeWithLayer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layerBlock"

    .line 8
    .line 9
    .line 10
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->q0(Landroidx/compose/ui/layout/Placeable;)J

    .line 33
    move-result-wide v1

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 37
    move-result v1

    .line 38
    sub-int/2addr v0, v1

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 42
    move-result v1

    .line 43
    sub-int/2addr v0, v1

    .line 44
    .line 45
    .line 46
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 47
    move-result p2

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 51
    move-result-wide p2

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->d0(Landroidx/compose/ui/layout/Placeable;)J

    .line 55
    move-result-wide v0

    .line 56
    .line 57
    .line 58
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 59
    move-result v2

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 63
    move-result v3

    .line 64
    add-int/2addr v2, v3

    .line 65
    .line 66
    .line 67
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 68
    move-result p2

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 72
    move-result p3

    .line 73
    add-int/2addr p2, p3

    .line 74
    .line 75
    .line 76
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 77
    move-result-wide p2

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 81
    goto :goto_1

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->d0(Landroidx/compose/ui/layout/Placeable;)J

    .line 85
    move-result-wide v0

    .line 86
    .line 87
    .line 88
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 89
    move-result v2

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 93
    move-result v3

    .line 94
    add-int/2addr v2, v3

    .line 95
    .line 96
    .line 97
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 98
    move-result p2

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 102
    move-result p3

    .line 103
    add-int/2addr p2, p3

    .line 104
    .line 105
    .line 106
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 107
    move-result-wide p2

    .line 108
    .line 109
    .line 110
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 111
    :goto_1
    return-void
.end method

.method public final u(Landroidx/compose/ui/layout/Placeable;IIFLe8/l;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "IIF",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layerBlock"

    .line 8
    .line 9
    .line 10
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 14
    move-result-wide p2

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->d0(Landroidx/compose/ui/layout/Placeable;)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 26
    move-result v3

    .line 27
    add-int/2addr v2, v3

    .line 28
    .line 29
    .line 30
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 31
    move-result p2

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 35
    move-result p3

    .line 36
    add-int/2addr p2, p3

    .line 37
    .line 38
    .line 39
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 40
    move-result-wide p2

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 44
    return-void
.end method

.method public final w(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$placeWithLayer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layerBlock"

    .line 8
    .line 9
    .line 10
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->d0(Landroidx/compose/ui/layout/Placeable;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 22
    move-result v3

    .line 23
    add-int/2addr v2, v3

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 27
    move-result p2

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 31
    move-result p3

    .line 32
    add-int/2addr p2, p3

    .line 33
    .line 34
    .line 35
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 36
    move-result-wide p2

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->s0(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 40
    return-void
.end method
