.class public final Landroidx/compose/runtime/SlotTableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 2 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3391:1\n79#2,3:3392\n32#2,4:3395\n82#2,2:3399\n37#2:3401\n84#2:3402\n1#3:3403\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n*L\n3194#1:3392,3\n3194#1:3395,4\n3194#1:3399,2\n3194#1:3401\n3194#1:3402\n*E\n"
.end annotation


# static fields
.field private static final Aux_Mask:I = 0x10000000

.field private static final Aux_Shift:I = 0x1c

.field private static final ContainsMark_Mask:I = 0x4000000

.field private static final DataAnchor_Offset:I = 0x4

.field private static final GroupInfo_Offset:I = 0x1

.field private static final Group_Fields_Size:I = 0x5

.field private static final Key_Offset:I = 0x0

.field private static final Mark_Mask:I = 0x8000000

.field private static final MinGroupGrowthSize:I = 0x20

.field private static final MinSlotsGrowthSize:I = 0x20

.field private static final NodeBit_Mask:I = 0x40000000

.field private static final NodeCount_Mask:I = 0x3ffffff

.field private static final NodeKey:I = 0x7d

.field private static final ObjectKey_Mask:I = 0x20000000

.field private static final ObjectKey_Shift:I = 0x1d

.field private static final ParentAnchor_Offset:I = 0x2

.field private static final Size_Offset:I = 0x3

.field private static final Slots_Shift:I = 0x1c

.field private static final parentAnchorPivot:I = -0x2


# direct methods
.method private static final A([II)I
    .locals 1

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    array-length p0, p0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    add-int/lit8 v0, p1, 0x4

    .line 10
    .line 11
    aget v0, p0, v0

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    aget p0, p0, p1

    .line 16
    .line 17
    shr-int/lit8 p0, p0, 0x1d

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/runtime/SlotTableKt;->D(I)I

    .line 21
    move-result p0

    .line 22
    add-int/2addr p0, v0

    .line 23
    :goto_0
    return p0
.end method

.method private static final B([II)Z
    .locals 1

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    const/high16 p1, 0xc000000

    .line 9
    and-int/2addr p0, p1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final C([II)Z
    .locals 1

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    const/high16 p1, 0x4000000

    .line 9
    and-int/2addr p0, p1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final D(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final E([II)I
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x4

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    return p0
.end method

.method private static final F([II)I
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    return p0
.end method

.method private static final G([II)I
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x3

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    return p0
.end method

.method private static final H([II)Z
    .locals 1

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    const/high16 p1, 0x10000000

    .line 9
    and-int/2addr p0, p1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final I([II)Z
    .locals 1

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    const/high16 p1, 0x8000000

    .line 9
    and-int/2addr p0, p1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final J([II)Z
    .locals 1

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    const/high16 p1, 0x20000000

    .line 9
    and-int/2addr p0, p1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final K([IIIZZZII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/high16 p3, 0x40000000    # 2.0f

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move p3, v0

    .line 8
    .line 9
    :goto_0
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/high16 p4, 0x20000000

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    move p4, v0

    .line 14
    .line 15
    :goto_1
    if-eqz p5, :cond_2

    .line 16
    .line 17
    const/high16 p5, 0x10000000

    .line 18
    goto :goto_2

    .line 19
    :cond_2
    move p5, v0

    .line 20
    .line 21
    :goto_2
    mul-int/lit8 p1, p1, 0x5

    .line 22
    .line 23
    aput p2, p0, p1

    .line 24
    .line 25
    add-int/lit8 p2, p1, 0x1

    .line 26
    or-int/2addr p3, p4

    .line 27
    or-int/2addr p3, p5

    .line 28
    .line 29
    aput p3, p0, p2

    .line 30
    .line 31
    add-int/lit8 p2, p1, 0x2

    .line 32
    .line 33
    aput p6, p0, p2

    .line 34
    .line 35
    add-int/lit8 p2, p1, 0x3

    .line 36
    .line 37
    aput v0, p0, p2

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x4

    .line 40
    .line 41
    aput p7, p0, p1

    .line 42
    return-void
.end method

.method private static final L([II)Z
    .locals 1

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    const/high16 p1, 0x40000000    # 2.0f

    .line 9
    and-int/2addr p0, p1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final M([II)I
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    aget p0, p0, p1

    .line 5
    return p0
.end method

.method private static final N(Ljava/util/ArrayList;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;II)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->S(Ljava/util/ArrayList;II)I

    .line 4
    move-result p0

    .line 5
    .line 6
    if-ltz p0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 10
    neg-int p0, p0

    .line 11
    :goto_0
    return p0
.end method

.method private static final O([II)I
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    .line 9
    const p1, 0x3ffffff

    .line 10
    and-int/2addr p0, p1

    .line 11
    return p0
.end method

.method private static final P([II)I
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x4

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    return p0
.end method

.method private static final Q([II)I
    .locals 1

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    add-int/lit8 v0, p1, 0x4

    .line 5
    .line 6
    aget v0, p0, v0

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    aget p0, p0, p1

    .line 11
    .line 12
    shr-int/lit8 p0, p0, 0x1e

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Landroidx/compose/runtime/SlotTableKt;->D(I)I

    .line 16
    move-result p0

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method private static final R([II)I
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    return p0
.end method

.method private static final S(Ljava/util/ArrayList;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;II)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :goto_0
    if-gt v1, v0, :cond_3

    .line 10
    .line 11
    add-int v2, v1, v0

    .line 12
    .line 13
    ushr-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    check-cast v3, Landroidx/compose/runtime/Anchor;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Landroidx/compose/runtime/Anchor;->a()I

    .line 23
    move-result v3

    .line 24
    .line 25
    if-gez v3, :cond_0

    .line 26
    add-int/2addr v3, p2

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/t;->l(II)I

    .line 30
    move-result v3

    .line 31
    .line 32
    if-gez v3, :cond_1

    .line 33
    .line 34
    add-int/lit8 v1, v2, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    if-lez v3, :cond_2

    .line 38
    .line 39
    add-int/lit8 v0, v2, -0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v2

    .line 42
    .line 43
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 44
    neg-int p0, v1

    .line 45
    return p0
.end method

.method private static final T([II)I
    .locals 1

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    add-int/lit8 v0, p1, 0x4

    .line 5
    .line 6
    aget v0, p0, v0

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    aget p0, p0, p1

    .line 11
    .line 12
    shr-int/lit8 p0, p0, 0x1c

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Landroidx/compose/runtime/SlotTableKt;->D(I)I

    .line 16
    move-result p0

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method private static final U([IIZ)V
    .locals 1

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    aget p2, p0, p1

    .line 9
    .line 10
    const/high16 v0, 0x4000000

    .line 11
    or-int/2addr p2, v0

    .line 12
    .line 13
    aput p2, p0, p1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    aget p2, p0, p1

    .line 17
    .line 18
    .line 19
    const v0, -0x4000001

    .line 20
    and-int/2addr p2, v0

    .line 21
    .line 22
    aput p2, p0, p1

    .line 23
    :goto_0
    return-void
.end method

.method private static final V([III)V
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x4

    .line 5
    .line 6
    aput p2, p0, p1

    .line 7
    return-void
.end method

.method private static final W([III)V
    .locals 0

    .line 1
    .line 2
    if-ltz p2, :cond_0

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x5

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x3

    .line 7
    .line 8
    aput p2, p0, p1

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p1, "Failed requirement."

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method private static final X([IIZ)V
    .locals 1

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    aget p2, p0, p1

    .line 9
    .line 10
    const/high16 v0, 0x8000000

    .line 11
    or-int/2addr p2, v0

    .line 12
    .line 13
    aput p2, p0, p1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    aget p2, p0, p1

    .line 17
    .line 18
    .line 19
    const v0, -0x8000001

    .line 20
    and-int/2addr p2, v0

    .line 21
    .line 22
    aput p2, p0, p1

    .line 23
    :goto_0
    return-void
.end method

.method private static final Y([III)V
    .locals 2

    .line 1
    .line 2
    if-ltz p2, :cond_0

    .line 3
    .line 4
    .line 5
    const v0, 0x3ffffff

    .line 6
    .line 7
    if-ge p2, v0, :cond_0

    .line 8
    .line 9
    mul-int/lit8 p1, p1, 0x5

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    aget v0, p0, p1

    .line 14
    .line 15
    const/high16 v1, -0x4000000

    .line 16
    and-int/2addr v0, v1

    .line 17
    or-int/2addr p2, v0

    .line 18
    .line 19
    aput p2, p0, p1

    .line 20
    return-void

    .line 21
    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p1, "Failed requirement."

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method

.method private static final Z([III)V
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x5

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    aput p2, p0, p1

    .line 7
    return-void
.end method

.method public static final synthetic a([II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->A([II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b([II)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->B([II)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic c([II)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->C([II)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/runtime/SlotTableKt;->D(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic e([II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->E([II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic f([II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->F([II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic g([II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->G([II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic h([II)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->H([II)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic i([II)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->I([II)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic j([II)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->J([II)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic k([IIIZZZII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p7}, Landroidx/compose/runtime/SlotTableKt;->K([IIIZZZII)V

    .line 4
    return-void
.end method

.method public static final synthetic l([II)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->L([II)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic m([II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->M([II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic n(Ljava/util/ArrayList;II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->N(Ljava/util/ArrayList;II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic o([II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->O([II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic p([II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->P([II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic q([II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->Q([II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic r([II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->R([II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic s(Ljava/util/ArrayList;II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->S(Ljava/util/ArrayList;II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic t([II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->T([II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic u([IIZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->U([IIZ)V

    .line 4
    return-void
.end method

.method public static final synthetic v([III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->V([III)V

    .line 4
    return-void
.end method

.method public static final synthetic w([III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->W([III)V

    .line 4
    return-void
.end method

.method public static final synthetic x([IIZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->X([IIZ)V

    .line 4
    return-void
.end method

.method public static final synthetic y([III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->Y([III)V

    .line 4
    return-void
.end method

.method public static final synthetic z([III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->Z([III)V

    .line 4
    return-void
.end method
