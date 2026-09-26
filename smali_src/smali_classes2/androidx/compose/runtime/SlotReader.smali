.class public final Landroidx/compose/runtime/SlotReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n*L\n1#1,3391:1\n1#2:3392\n3271#3,6:3393\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotReader\n*L\n1030#1:3393,6\n*E\n"
.end annotation


# instance fields
.field private currentEnd:I

.field private currentGroup:I

.field private currentSlot:I

.field private currentSlotEnd:I

.field private emptyCount:I

.field private final groups:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final groupsSize:I

.field private parent:I

.field private final slots:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final slotsSize:I

.field private final table:Landroidx/compose/runtime/SlotTable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "table"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->f()[I

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->g()I

    .line 20
    move-result v0

    .line 21
    .line 22
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->j()[Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iput-object v1, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->m()I

    .line 32
    move-result p1

    .line 33
    .line 34
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    .line 35
    .line 36
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 37
    const/4 p1, -0x1

    .line 38
    .line 39
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 40
    return-void
.end method

.method private final J([II)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->p([II)I

    .line 12
    move-result p1

    .line 13
    .line 14
    aget-object p1, v0, p1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1
.end method

.method private final L([II)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->j([II)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->q([II)I

    .line 12
    move-result p1

    .line 13
    .line 14
    aget-object p1, v0, p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method private final b([II)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->h([II)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->a([II)I

    .line 12
    move-result p1

    .line 13
    .line 14
    aget-object p1, v0, p1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final A(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->L([II)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final B(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final C(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->i([II)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final D(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->j([II)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final E()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->r()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public final F()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final G(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final H()Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 3
    .line 4
    if-gtz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 18
    .line 19
    aget-object v0, v1, v0

    .line 20
    return-object v0

    .line 21
    .line 22
    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final I(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->J([II)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method public final K(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->o([II)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final M(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->r([II)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final N(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 7
    .line 8
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->r([II)I

    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, -0x1

    .line 19
    .line 20
    :goto_0
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 21
    .line 22
    if-gez p1, :cond_1

    .line 23
    .line 24
    iget p1, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .line 25
    .line 26
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 33
    move-result v0

    .line 34
    add-int/2addr p1, v0

    .line 35
    .line 36
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 37
    :goto_1
    const/4 p1, 0x0

    .line 38
    .line 39
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 40
    .line 41
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    .line 42
    return-void

    .line 43
    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v0, "Cannot reposition while in an empty region"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1
.end method

.method public final O(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p1

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 10
    .line 11
    if-lt v1, p1, :cond_0

    .line 12
    .line 13
    if-gt v1, v0, :cond_0

    .line 14
    .line 15
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 16
    .line 17
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 21
    .line 22
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v2, "Index "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p1, " is not a parent of "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0
.end method

.method public final P()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 19
    .line 20
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->o([II)I

    .line 24
    move-result v0

    .line 25
    .line 26
    :goto_0
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v1}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 32
    move-result v2

    .line 33
    add-int/2addr v1, v2

    .line 34
    .line 35
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 36
    return v0

    .line 37
    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v1, "Cannot skip while in an empty region"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method

.method public final Q()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "Cannot skip the enclosing group while in an empty region"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public final R()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 3
    .line 4
    if-gtz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->r([II)I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 19
    .line 20
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 26
    move-result v1

    .line 27
    add-int/2addr v0, v1

    .line 28
    .line 29
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 30
    .line 31
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 32
    .line 33
    add-int/lit8 v1, v0, 0x1

    .line 34
    .line 35
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->t([II)I

    .line 41
    move-result v2

    .line 42
    .line 43
    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 44
    .line 45
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .line 46
    .line 47
    add-int/lit8 v2, v2, -0x1

    .line 48
    .line 49
    if-lt v0, v2, :cond_0

    .line 50
    .line 51
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->e([II)I

    .line 58
    move-result v0

    .line 59
    .line 60
    :goto_0
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string v1, "Invalid slot table detected"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    throw v0

    .line 74
    :cond_2
    :goto_1
    return-void
.end method

.method public final S()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 3
    .line 4
    if-gtz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->R()V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "Expected a node group"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0

    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final a(I)Landroidx/compose/runtime/Anchor;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->e()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->s(Ljava/util/ArrayList;II)I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-gez v1, :cond_0

    .line 15
    .line 16
    new-instance v2, Landroidx/compose/runtime/Anchor;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, p1}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    neg-int p1, v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-string v0, "get(location)"

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    move-object v2, p1

    .line 37
    .line 38
    check-cast v2, Landroidx/compose/runtime/Anchor;

    .line 39
    :goto_0
    return-object v2
.end method

.method public final c()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/SlotTable;->b(Landroidx/compose/runtime/SlotReader;)V

    .line 6
    return-void
.end method

.method public final e(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->c([II)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final f()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "Unbalanced begin/end empty"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public final g()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 13
    .line 14
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->r([II)I

    .line 18
    move-result v0

    .line 19
    .line 20
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 21
    .line 22
    if-gez v0, :cond_0

    .line 23
    .line 24
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 31
    move-result v1

    .line 32
    add-int/2addr v0, v1

    .line 33
    .line 34
    :goto_0
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string v1, "endGroup() not called at the end of a group"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0

    .line 48
    :cond_2
    :goto_1
    return-void
.end method

.method public final h()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 13
    const/4 v2, 0x0

    .line 14
    move v8, v2

    .line 15
    .line 16
    :goto_0
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 17
    .line 18
    if-ge v1, v2, :cond_2

    .line 19
    .line 20
    new-instance v2, Landroidx/compose/runtime/KeyInfo;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v1}, Landroidx/compose/runtime/SlotTableKt;->m([II)I

    .line 26
    move-result v4

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v3, v1}, Landroidx/compose/runtime/SlotReader;->L([II)Ljava/lang/Object;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v1}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    const/4 v3, 0x1

    .line 42
    :goto_1
    move v7, v3

    .line 43
    goto :goto_2

    .line 44
    .line 45
    :cond_1
    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v1}, Landroidx/compose/runtime/SlotTableKt;->o([II)I

    .line 49
    move-result v3

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :goto_2
    add-int/lit8 v9, v8, 0x1

    .line 53
    move-object v3, v2

    .line 54
    move v6, v1

    .line 55
    .line 56
    .line 57
    invoke-direct/range {v3 .. v8}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v1}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 66
    move-result v2

    .line 67
    add-int/2addr v1, v2

    .line 68
    move v8, v9

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    return-object v0
.end method

.method public final i(ILe8/p;)V
    .locals 4
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le8/p<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->t([II)I

    .line 11
    move-result v0

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->g()I

    .line 19
    move-result v1

    .line 20
    .line 21
    if-ge p1, v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->f()[I

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-static {v1, p1}, Landroidx/compose/runtime/SlotTableKt;->e([II)I

    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->m()I

    .line 38
    move-result p1

    .line 39
    :goto_0
    move v1, v0

    .line 40
    .line 41
    :goto_1
    if-ge v1, p1, :cond_1

    .line 42
    .line 43
    sub-int v2, v1, v0

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 50
    .line 51
    aget-object v3, v3, v1

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v2, v3}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    return-void
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    return v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    return v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotReader;->b([II)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v0

    .line 19
    :goto_0
    return-object v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    return v0
.end method

.method public final n()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->m([II)I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final o()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotReader;->L([II)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public final p()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final q()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 5
    .line 6
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->t([II)I

    .line 10
    move-result v1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    return v0
.end method

.method public final t()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->o([II)I

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
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
    const-string v1, "SlotReader(current="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", key="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->n()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, ", parent="

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, ", end="

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const/16 v1, 0x29

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public final u()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    return v0
.end method

.method public final v()Landroidx/compose/runtime/SlotTable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public final w(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->b([II)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final x(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->y(II)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final y(II)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->t([II)I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .line 11
    .line 12
    if-ge p1, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 15
    .line 16
    .line 17
    invoke-static {v1, p1}, Landroidx/compose/runtime/SlotTableKt;->e([II)I

    .line 18
    move-result p1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget p1, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    .line 22
    :goto_0
    add-int/2addr v0, p2

    .line 23
    .line 24
    if-ge v0, p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object p1, p1, v0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    :goto_1
    return-object p1
.end method

.method public final z(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->m([II)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method
