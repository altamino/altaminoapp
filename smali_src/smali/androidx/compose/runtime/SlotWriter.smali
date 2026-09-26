.class public final Landroidx/compose/runtime/SlotWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/SlotWriter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 5 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 6 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,3391:1\n4234#2,5:3392\n4234#2,5:3397\n4234#2,5:3402\n4234#2,5:3407\n4234#2,5:3413\n4234#2,5:3418\n4234#2,5:3423\n4234#2,5:3428\n4234#2,5:3433\n4234#2,5:3446\n4234#2,5:3465\n4234#2,5:3470\n4234#2,5:3475\n1#3:3412\n162#4,8:3438\n162#4,8:3451\n3271#5,6:3459\n32#6,6:3480\n79#6,3:3486\n32#6,4:3489\n82#6,2:3493\n37#6:3495\n84#6:3496\n223#6,3:3497\n62#6,4:3500\n226#6,2:3504\n67#6:3506\n228#6:3507\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter\n*L\n1325#1:3392,5\n1349#1:3397,5\n1362#1:3402,5\n1365#1:3407,5\n1405#1:3413,5\n1420#1:3418,5\n1472#1:3423,5\n1512#1:3428,5\n1912#1:3433,5\n2187#1:3446,5\n2477#1:3465,5\n2489#1:3470,5\n2680#1:3475,5\n2170#1:3438,8\n2259#1:3451,8\n2279#1:3459,6\n2776#1:3480,6\n2946#1:3486,3\n2946#1:3489,4\n2946#1:3493,2\n2946#1:3495\n2946#1:3496\n2949#1:3497,3\n2949#1:3500,4\n2949#1:3504,2\n2949#1:3506\n2949#1:3507\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/runtime/SlotWriter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private anchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private closed:Z

.field private currentGroup:I

.field private currentGroupEnd:I

.field private currentSlot:I

.field private currentSlotEnd:I

.field private final endStack:Landroidx/compose/runtime/IntStack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private groupGapLen:I

.field private groupGapStart:I

.field private groups:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private insertCount:I

.field private nodeCount:I

.field private final nodeCountStack:Landroidx/compose/runtime/IntStack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parent:I

.field private pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private slots:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private slotsGapLen:I

.field private slotsGapOwner:I

.field private slotsGapStart:I

.field private final startStack:Landroidx/compose/runtime/IntStack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final table:Landroidx/compose/runtime/SlotTable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/SlotWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/SlotWriter$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/SlotTable;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "table"

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
    iput-object p1, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->f()[I

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->j()[Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->e()Ljava/util/ArrayList;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->g()I

    .line 32
    move-result v0

    .line 33
    .line 34
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 37
    array-length v0, v0

    .line 38
    .line 39
    div-int/lit8 v0, v0, 0x5

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->g()I

    .line 43
    move-result v1

    .line 44
    sub-int/2addr v0, v1

    .line 45
    .line 46
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->g()I

    .line 50
    move-result v0

    .line 51
    .line 52
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->m()I

    .line 56
    move-result v0

    .line 57
    .line 58
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 61
    array-length v0, v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->m()I

    .line 65
    move-result v1

    .line 66
    sub-int/2addr v0, v1

    .line 67
    .line 68
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->g()I

    .line 72
    move-result p1

    .line 73
    .line 74
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 75
    .line 76
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 77
    .line 78
    .line 79
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 80
    .line 81
    iput-object p1, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 82
    .line 83
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 84
    .line 85
    .line 86
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 87
    .line 88
    iput-object p1, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    .line 89
    .line 90
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 91
    .line 92
    .line 93
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 94
    .line 95
    iput-object p1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 96
    const/4 p1, -0x1

    .line 97
    .line 98
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 99
    return-void
.end method

.method private final A0(I)I
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->W()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, p1

    .line 10
    .line 11
    add-int/lit8 p1, v1, 0x2

    .line 12
    :goto_0
    return p1
.end method

.method private final B0(II)I
    .locals 0

    .line 1
    .line 2
    if-ge p1, p2, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->W()I

    .line 7
    move-result p2

    .line 8
    sub-int/2addr p2, p1

    .line 9
    .line 10
    add-int/lit8 p2, p2, 0x2

    .line 11
    neg-int p1, p2

    .line 12
    :goto_0
    return p1
.end method

.method private final C([II)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->f([II)I

    .line 8
    move-result p1

    .line 9
    .line 10
    shr-int/lit8 p1, p1, 0x1d

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/SlotTableKt;->d(I)I

    .line 14
    move-result p1

    .line 15
    add-int/2addr v0, p1

    .line 16
    return v0
.end method

.method private final C0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/PrioritySet;->b()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/PrioritySet;->d()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->b1(ILandroidx/compose/runtime/PrioritySet;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method private final D0(II)Z
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 3
    add-int/2addr p2, p1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->S()I

    .line 7
    move-result v1

    .line 8
    sub-int/2addr v1, v0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p2, v1}, Landroidx/compose/runtime/SlotTableKt;->n(Ljava/util/ArrayList;II)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v1

    .line 21
    .line 22
    if-lt v0, v1, :cond_0

    .line 23
    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    move v3, v2

    .line 29
    .line 30
    :goto_0
    if-ltz v0, :cond_3

    .line 31
    .line 32
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    const-string v5, "anchors[index]"

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    check-cast v4, Landroidx/compose/runtime/Anchor;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->B(Landroidx/compose/runtime/Anchor;)I

    .line 47
    move-result v5

    .line 48
    .line 49
    if-lt v5, p1, :cond_3

    .line 50
    .line 51
    if-ge v5, p2, :cond_2

    .line 52
    .line 53
    const/high16 v1, -0x80000000

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/Anchor;->c(I)V

    .line 57
    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    add-int/lit8 v3, v0, 0x1

    .line 61
    :cond_1
    move v1, v0

    .line 62
    .line 63
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_3
    if-ge v1, v3, :cond_4

    .line 67
    const/4 v2, 0x1

    .line 68
    .line 69
    :cond_4
    if-eqz v2, :cond_5

    .line 70
    .line 71
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 79
    :cond_5
    return v2
.end method

.method private final E(I)Z
    .locals 3

    .line 1
    .line 2
    add-int/lit8 v0, p1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->c0(I)I

    .line 6
    move-result v1

    .line 7
    add-int/2addr p1, v1

    .line 8
    .line 9
    :goto_0
    if-ge v0, p1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->b([II)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->c0(I)I

    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method private final F0(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-lez p2, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->q0(I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    xor-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->D0(II)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    :cond_0
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 23
    .line 24
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 25
    add-int/2addr v1, p2

    .line 26
    .line 27
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 28
    .line 29
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 30
    .line 31
    if-le v1, p1, :cond_1

    .line 32
    sub-int/2addr v1, p2

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 36
    move-result p1

    .line 37
    .line 38
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 39
    .line 40
    :cond_1
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 41
    .line 42
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 43
    .line 44
    if-lt p1, v1, :cond_2

    .line 45
    sub-int/2addr p1, p2

    .line 46
    .line 47
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 48
    .line 49
    :cond_2
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->H(I)Z

    .line 53
    move-result p1

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->a1(I)V

    .line 61
    :cond_3
    return v0
.end method

.method private final G(I)Z
    .locals 1

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->b([II)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method private final G0(III)V
    .locals 2

    .line 1
    .line 2
    if-lez p2, :cond_0

    .line 3
    .line 4
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 5
    .line 6
    add-int v1, p1, p2

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v1, p3}, Landroidx/compose/runtime/SlotWriter;->s0(II)V

    .line 10
    .line 11
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 12
    add-int/2addr v0, p2

    .line 13
    .line 14
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 15
    .line 16
    iget-object p3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p3, v0, p1, v1}, Lkotlin/collections/l;->r([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 21
    .line 22
    iget p3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 23
    .line 24
    if-lt p3, p1, :cond_0

    .line 25
    sub-int/2addr p3, p2

    .line 26
    .line 27
    iput p3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 28
    :cond_0
    return-void
.end method

.method private final H(I)Z
    .locals 1

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->c([II)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method private final I(III)I
    .locals 0

    .line 1
    if-gez p1, :cond_0

    sub-int/2addr p3, p2

    add-int/2addr p3, p1

    add-int/lit8 p1, p3, 0x1

    :cond_0
    return p1
.end method

.method private final I0()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->S()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 7
    sub-int/2addr v0, v1

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->h()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    .line 16
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 17
    return v0
.end method

.method private final J(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method private final J0()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->S()I

    .line 6
    move-result v1

    .line 7
    .line 8
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 9
    sub-int/2addr v1, v2

    .line 10
    .line 11
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 12
    sub-int/2addr v1, v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->i(I)V

    .line 16
    return-void
.end method

.method private final K([II)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->S()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lt p2, v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 9
    array-length p1, p1

    .line 10
    .line 11
    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 12
    sub-int/2addr p1, p2

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->e([II)I

    .line 17
    move-result p1

    .line 18
    .line 19
    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 22
    array-length v0, v0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/SlotWriter;->I(III)I

    .line 26
    move-result p1

    .line 27
    :goto_0
    return p1
.end method

.method private final L(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method private final M(IIII)I
    .locals 0

    .line 1
    if-le p1, p2, :cond_0

    sub-int/2addr p4, p3

    sub-int/2addr p4, p1

    add-int/lit8 p4, p4, 0x1

    neg-int p1, p4

    :cond_0
    return p1
.end method

.method private final R(III)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/SlotWriter;->B0(II)I

    .line 6
    move-result p1

    .line 7
    .line 8
    :goto_0
    if-ge p3, p2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p3}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Landroidx/compose/runtime/SlotTableKt;->z([III)V

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p3}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 27
    move-result v0

    .line 28
    add-int/2addr v0, p3

    .line 29
    .line 30
    add-int/lit8 v1, p3, 0x1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p3, v0, v1}, Landroidx/compose/runtime/SlotWriter;->R(III)V

    .line 34
    move p3, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method private final R0([II)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->S()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lt p2, v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 9
    array-length p1, p1

    .line 10
    .line 11
    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 12
    sub-int/2addr p1, p2

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->t([II)I

    .line 17
    move-result p1

    .line 18
    .line 19
    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 22
    array-length v0, v0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/SlotWriter;->I(III)I

    .line 26
    move-result p1

    .line 27
    :goto_0
    return p1
.end method

.method private final S()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    div-int/lit8 v0, v0, 0x5

    .line 6
    return v0
.end method

.method private final V0(ILjava/lang/Object;ZLjava/lang/Object;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v10, p4

    .line 6
    .line 7
    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 8
    const/4 v11, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    move v2, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v11

    .line 15
    .line 16
    :goto_0
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 17
    .line 18
    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/IntStack;->i(I)V

    .line 22
    .line 23
    if-eqz v2, :cond_7

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->h0(I)V

    .line 27
    .line 28
    iget v12, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v12}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 32
    move-result v4

    .line 33
    .line 34
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    if-eq v1, v5, :cond_1

    .line 41
    move v13, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v13, v11

    .line 44
    .line 45
    :goto_1
    if-nez p3, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    if-eq v10, v2, :cond_2

    .line 52
    move v14, v3

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v14, v11

    .line 55
    .line 56
    :goto_2
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 57
    .line 58
    iget v8, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 59
    .line 60
    iget v9, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 61
    move v3, v4

    .line 62
    .line 63
    move/from16 v4, p1

    .line 64
    .line 65
    move/from16 v5, p3

    .line 66
    move v6, v13

    .line 67
    move v7, v14

    .line 68
    .line 69
    .line 70
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/SlotTableKt;->k([IIIZZZII)V

    .line 71
    .line 72
    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 73
    .line 74
    iput v2, v0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 75
    .line 76
    add-int v2, p3, v13

    .line 77
    add-int/2addr v2, v14

    .line 78
    .line 79
    if-lez v2, :cond_6

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v2, v12}, Landroidx/compose/runtime/SlotWriter;->i0(II)V

    .line 83
    .line 84
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 85
    .line 86
    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 87
    .line 88
    if-eqz p3, :cond_3

    .line 89
    .line 90
    add-int/lit8 v4, v3, 0x1

    .line 91
    .line 92
    aput-object v10, v2, v3

    .line 93
    move v3, v4

    .line 94
    .line 95
    :cond_3
    if-eqz v13, :cond_4

    .line 96
    .line 97
    add-int/lit8 v4, v3, 0x1

    .line 98
    .line 99
    aput-object v1, v2, v3

    .line 100
    move v3, v4

    .line 101
    .line 102
    :cond_4
    if-eqz v14, :cond_5

    .line 103
    .line 104
    add-int/lit8 v1, v3, 0x1

    .line 105
    .line 106
    aput-object v10, v2, v3

    .line 107
    move v3, v1

    .line 108
    .line 109
    :cond_5
    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 110
    .line 111
    :cond_6
    iput v11, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 112
    .line 113
    add-int/lit8 v1, v12, 0x1

    .line 114
    .line 115
    iput v12, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 116
    .line 117
    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 118
    goto :goto_4

    .line 119
    .line 120
    :cond_7
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 121
    .line 122
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/IntStack;->i(I)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->J0()V

    .line 129
    .line 130
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 134
    move-result v2

    .line 135
    .line 136
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 140
    move-result-object v4

    .line 141
    .line 142
    .line 143
    invoke-static {v10, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    move-result v4

    .line 145
    .line 146
    if-nez v4, :cond_9

    .line 147
    .line 148
    if-eqz p3, :cond_8

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v10}, Landroidx/compose/runtime/SlotWriter;->e1(Ljava/lang/Object;)V

    .line 152
    goto :goto_3

    .line 153
    .line 154
    .line 155
    :cond_8
    invoke-virtual {p0, v10}, Landroidx/compose/runtime/SlotWriter;->Z0(Ljava/lang/Object;)V

    .line 156
    .line 157
    :cond_9
    :goto_3
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, v4, v2}, Landroidx/compose/runtime/SlotWriter;->R0([II)I

    .line 161
    move-result v4

    .line 162
    .line 163
    iput v4, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 164
    .line 165
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 166
    .line 167
    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 168
    add-int/2addr v5, v3

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, v5}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 172
    move-result v3

    .line 173
    .line 174
    .line 175
    invoke-direct {p0, v4, v3}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 176
    move-result v3

    .line 177
    .line 178
    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 179
    .line 180
    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 181
    .line 182
    .line 183
    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->o([II)I

    .line 184
    move-result v3

    .line 185
    .line 186
    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 187
    .line 188
    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 189
    .line 190
    add-int/lit8 v3, v1, 0x1

    .line 191
    .line 192
    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 193
    .line 194
    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 195
    .line 196
    .line 197
    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 198
    move-result v2

    .line 199
    add-int/2addr v1, v2

    .line 200
    .line 201
    :goto_4
    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 202
    return-void
.end method

.method private final Y0(II)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->S()I

    .line 6
    move-result v1

    .line 7
    sub-int/2addr v1, v0

    .line 8
    .line 9
    const-string v0, "anchors[index]"

    .line 10
    .line 11
    if-ge p1, p2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-static {v2, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->n(Ljava/util/ArrayList;II)I

    .line 17
    move-result p1

    .line 18
    .line 19
    :goto_0
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v2

    .line 24
    .line 25
    if-ge p1, v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast v2, Landroidx/compose/runtime/Anchor;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/compose/runtime/Anchor;->a()I

    .line 40
    move-result v3

    .line 41
    .line 42
    if-gez v3, :cond_1

    .line 43
    add-int/2addr v3, v1

    .line 44
    .line 45
    if-ge v3, p2, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Anchor;->c(I)V

    .line 49
    .line 50
    add-int/lit8 p1, p1, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2, v1}, Landroidx/compose/runtime/SlotTableKt;->n(Ljava/util/ArrayList;II)I

    .line 57
    move-result p1

    .line 58
    .line 59
    :goto_1
    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result p2

    .line 64
    .line 65
    if-ge p1, p2, :cond_1

    .line 66
    .line 67
    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    .line 74
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    check-cast p2, Landroidx/compose/runtime/Anchor;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroidx/compose/runtime/Anchor;->a()I

    .line 80
    move-result v2

    .line 81
    .line 82
    if-ltz v2, :cond_1

    .line 83
    .line 84
    sub-int v2, v1, v2

    .line 85
    neg-int v2, v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/Anchor;->c(I)V

    .line 89
    .line 90
    add-int/lit8 p1, p1, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    return-void
.end method

.method private final Z(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public static final synthetic a(Landroidx/compose/runtime/SlotWriter;I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->G(I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final a1(I)V
    .locals 3

    .line 1
    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/runtime/PrioritySet;

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v2, v1, v2}, Landroidx/compose/runtime/PrioritySet;-><init>(Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/PrioritySet;->a(I)V

    .line 19
    :cond_1
    return-void
.end method

.method public static final synthetic b(Landroidx/compose/runtime/SlotWriter;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->J(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final b1(ILandroidx/compose/runtime/PrioritySet;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->E(I)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->c([II)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eq v2, v1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/SlotTableKt;->u([IIZ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->y0(I)I

    .line 25
    move-result p1

    .line 26
    .line 27
    if-ltz p1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/PrioritySet;->a(I)V

    .line 31
    :cond_0
    return-void
.end method

.method public static final synthetic c(Landroidx/compose/runtime/SlotWriter;[II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final c1([III)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 7
    array-length v2, v2

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p3, v0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->M(IIII)I

    .line 11
    move-result p3

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SlotTableKt;->v([III)V

    .line 15
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/runtime/SlotWriter;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->L(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic e(Landroidx/compose/runtime/SlotWriter;IIII)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/SlotWriter;->M(IIII)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic f(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method private final f1(ILjava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 7
    array-length v2, v1

    .line 8
    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    .line 20
    :goto_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->x0([II)I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->L(I)I

    .line 32
    move-result v0

    .line 33
    .line 34
    aput-object p2, p1, v0

    .line 35
    return-void

    .line 36
    .line 37
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v0, "Updating the node of a group at "

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p1, " that was not created with as a node group"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 65
    .line 66
    new-instance p1, Lw7/i;

    .line 67
    .line 68
    .line 69
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 70
    throw p1
.end method

.method public static final synthetic g(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 3
    return p0
.end method

.method public static final synthetic h(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 3
    return p0
.end method

.method private final h0(I)V
    .locals 11

    .line 1
    .line 2
    if-lez p1, :cond_5

    .line 3
    .line 4
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->q0(I)V

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 10
    .line 11
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 14
    array-length v4, v3

    .line 15
    .line 16
    div-int/lit8 v4, v4, 0x5

    .line 17
    .line 18
    sub-int v5, v4, v2

    .line 19
    const/4 v6, 0x0

    .line 20
    .line 21
    if-ge v2, p1, :cond_0

    .line 22
    .line 23
    mul-int/lit8 v7, v4, 0x2

    .line 24
    .line 25
    add-int v8, v5, p1

    .line 26
    .line 27
    .line 28
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 29
    move-result v7

    .line 30
    .line 31
    const/16 v8, 0x20

    .line 32
    .line 33
    .line 34
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result v7

    .line 36
    .line 37
    mul-int/lit8 v8, v7, 0x5

    .line 38
    .line 39
    new-array v8, v8, [I

    .line 40
    sub-int/2addr v7, v5

    .line 41
    add-int/2addr v2, v1

    .line 42
    .line 43
    add-int v9, v1, v7

    .line 44
    .line 45
    mul-int/lit8 v10, v1, 0x5

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v8, v6, v6, v10}, Lkotlin/collections/l;->g([I[IIII)[I

    .line 49
    .line 50
    mul-int/lit8 v9, v9, 0x5

    .line 51
    .line 52
    mul-int/lit8 v2, v2, 0x5

    .line 53
    .line 54
    mul-int/lit8 v4, v4, 0x5

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v8, v9, v2, v4}, Lkotlin/collections/l;->g([I[IIII)[I

    .line 58
    .line 59
    iput-object v8, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 60
    move v2, v7

    .line 61
    .line 62
    :cond_0
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 63
    .line 64
    if-lt v3, v1, :cond_1

    .line 65
    add-int/2addr v3, p1

    .line 66
    .line 67
    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 68
    .line 69
    :cond_1
    add-int v3, v1, p1

    .line 70
    .line 71
    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 72
    sub-int/2addr v2, p1

    .line 73
    .line 74
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 75
    .line 76
    if-lez v5, :cond_2

    .line 77
    add-int/2addr v0, p1

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->J(I)I

    .line 81
    move-result v0

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    move v0, v6

    .line 84
    .line 85
    :goto_0
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 86
    .line 87
    if-ge v2, v1, :cond_3

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_3
    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 91
    .line 92
    :goto_1
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 93
    .line 94
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 95
    array-length v4, v4

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v0, v6, v2, v4}, Landroidx/compose/runtime/SlotWriter;->M(IIII)I

    .line 99
    move-result v0

    .line 100
    move v2, v1

    .line 101
    .line 102
    :goto_2
    if-ge v2, v3, :cond_4

    .line 103
    .line 104
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 105
    .line 106
    .line 107
    invoke-static {v4, v2, v0}, Landroidx/compose/runtime/SlotTableKt;->v([III)V

    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 110
    goto :goto_2

    .line 111
    .line 112
    :cond_4
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 113
    .line 114
    if-lt v0, v1, :cond_5

    .line 115
    add-int/2addr v0, p1

    .line 116
    .line 117
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 118
    :cond_5
    return-void
.end method

.method public static final synthetic i(Landroidx/compose/runtime/SlotWriter;)[I
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 3
    return-object p0
.end method

.method private final i0(II)V
    .locals 9

    .line 1
    .line 2
    if-lez p1, :cond_3

    .line 3
    .line 4
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/SlotWriter;->s0(II)V

    .line 8
    .line 9
    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 10
    .line 11
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 12
    .line 13
    if-ge v0, p1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 16
    array-length v2, v1

    .line 17
    .line 18
    sub-int v3, v2, v0

    .line 19
    .line 20
    mul-int/lit8 v4, v2, 0x2

    .line 21
    .line 22
    add-int v5, v3, p1

    .line 23
    .line 24
    .line 25
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v4

    .line 27
    .line 28
    const/16 v5, 0x20

    .line 29
    .line 30
    .line 31
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v4

    .line 33
    .line 34
    new-array v5, v4, [Ljava/lang/Object;

    .line 35
    const/4 v6, 0x0

    .line 36
    move v7, v6

    .line 37
    .line 38
    :goto_0
    if-ge v7, v4, :cond_0

    .line 39
    const/4 v8, 0x0

    .line 40
    .line 41
    aput-object v8, v5, v7

    .line 42
    .line 43
    add-int/lit8 v7, v7, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sub-int/2addr v4, v3

    .line 46
    add-int/2addr v0, p2

    .line 47
    .line 48
    add-int v3, p2, v4

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v5, v6, v6, p2}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v5, v3, v0, v2}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 55
    .line 56
    iput-object v5, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 57
    move v0, v4

    .line 58
    .line 59
    :cond_1
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 60
    .line 61
    if-lt v1, p2, :cond_2

    .line 62
    add-int/2addr v1, p1

    .line 63
    .line 64
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 65
    :cond_2
    add-int/2addr p2, p1

    .line 66
    .line 67
    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 68
    sub-int/2addr v0, p1

    .line 69
    .line 70
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 71
    :cond_3
    return-void
.end method

.method public static final synthetic j(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 3
    return p0
.end method

.method public static final synthetic k(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static final synthetic l(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 3
    return p0
.end method

.method public static final synthetic m(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 3
    return p0
.end method

.method public static synthetic m0(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->l0(I)V

    .line 10
    return-void
.end method

.method public static final synthetic n(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 3
    return p0
.end method

.method private final n0(III)V
    .locals 5

    .line 1
    add-int/2addr p3, p1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->W()I

    .line 5
    move-result v0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p1, v0}, Landroidx/compose/runtime/SlotTableKt;->n(Ljava/util/ArrayList;II)I

    .line 11
    move-result v1

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    if-ltz v1, :cond_0

    .line 19
    .line 20
    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v3

    .line 25
    .line 26
    if-ge v1, v3, :cond_0

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    const-string v4, "anchors[index]"

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    check-cast v3, Landroidx/compose/runtime/Anchor;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SlotWriter;->B(Landroidx/compose/runtime/Anchor;)I

    .line 43
    move-result v4

    .line 44
    .line 45
    if-lt v4, p1, :cond_0

    .line 46
    .line 47
    if-ge v4, p3, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    sub-int/2addr p2, p1

    .line 58
    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 61
    move-result p1

    .line 62
    const/4 p3, 0x0

    .line 63
    .line 64
    :goto_1
    if-ge p3, p1, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    check-cast v1, Landroidx/compose/runtime/Anchor;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->B(Landroidx/compose/runtime/Anchor;)I

    .line 74
    move-result v3

    .line 75
    add-int/2addr v3, p2

    .line 76
    .line 77
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 78
    .line 79
    if-lt v3, v4, :cond_1

    .line 80
    .line 81
    sub-int v4, v0, v3

    .line 82
    neg-int v4, v4

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/Anchor;->c(I)V

    .line 86
    goto :goto_2

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/Anchor;->c(I)V

    .line 90
    .line 91
    :goto_2
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/SlotTableKt;->n(Ljava/util/ArrayList;II)I

    .line 95
    move-result v3

    .line 96
    .line 97
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 101
    .line 102
    add-int/lit8 p3, p3, 0x1

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    return-void
.end method

.method public static final synthetic o(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->h0(I)V

    .line 4
    return-void
.end method

.method public static final synthetic p(Landroidx/compose/runtime/SlotWriter;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->i0(II)V

    .line 4
    return-void
.end method

.method public static final synthetic q(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->q0(I)V

    .line 4
    return-void
.end method

.method private final q0(I)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 5
    .line 6
    if-eq v1, p1, :cond_7

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    xor-int/2addr v2, v3

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->Y0(II)V

    .line 20
    .line 21
    :cond_0
    if-lez v0, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 24
    .line 25
    mul-int/lit8 v4, p1, 0x5

    .line 26
    .line 27
    mul-int/lit8 v5, v0, 0x5

    .line 28
    .line 29
    mul-int/lit8 v6, v1, 0x5

    .line 30
    .line 31
    if-ge p1, v1, :cond_1

    .line 32
    add-int/2addr v5, v4

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v2, v5, v4, v6}, Lkotlin/collections/l;->g([I[IIII)[I

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    add-int v7, v6, v5

    .line 39
    add-int/2addr v4, v5

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v2, v6, v7, v4}, Lkotlin/collections/l;->g([I[IIII)[I

    .line 43
    .line 44
    :cond_2
    :goto_0
    if-ge p1, v1, :cond_3

    .line 45
    .line 46
    add-int v1, p1, v0

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->S()I

    .line 50
    move-result v2

    .line 51
    .line 52
    if-ge v1, v2, :cond_4

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    const/4 v3, 0x0

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->X(Z)V

    .line 58
    .line 59
    :cond_5
    :goto_2
    if-ge v1, v2, :cond_7

    .line 60
    .line 61
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v1}, Landroidx/compose/runtime/SlotTableKt;->r([II)I

    .line 65
    move-result v3

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->A0(I)I

    .line 69
    move-result v4

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v4, p1}, Landroidx/compose/runtime/SlotWriter;->B0(II)I

    .line 73
    move-result v4

    .line 74
    .line 75
    if-eq v4, v3, :cond_6

    .line 76
    .line 77
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 78
    .line 79
    .line 80
    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/SlotTableKt;->z([III)V

    .line 81
    .line 82
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    if-ne v1, p1, :cond_5

    .line 85
    add-int/2addr v1, v0

    .line 86
    goto :goto_2

    .line 87
    .line 88
    :cond_7
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 89
    return-void
.end method

.method public static final synthetic r(Landroidx/compose/runtime/SlotWriter;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->s0(II)V

    .line 4
    return-void
.end method

.method public static final synthetic s(Landroidx/compose/runtime/SlotWriter;II)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->F0(II)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final s0(II)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 5
    .line 6
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 7
    .line 8
    if-eq v1, p1, :cond_1

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 11
    .line 12
    if-ge p1, v1, :cond_0

    .line 13
    .line 14
    add-int v4, p1, v0

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v3, v4, p1, v1}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    add-int v4, v1, v0

    .line 21
    .line 22
    add-int v5, p1, v0

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v3, v1, v4, v5}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 26
    :goto_0
    const/4 v1, 0x0

    .line 27
    .line 28
    add-int v4, p1, v0

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v1, p1, v4}, Lkotlin/collections/l;->r([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 32
    :cond_1
    const/4 v1, 0x1

    .line 33
    add-int/2addr p2, v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->W()I

    .line 37
    move-result v3

    .line 38
    .line 39
    .line 40
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 41
    move-result p2

    .line 42
    .line 43
    if-eq v2, p2, :cond_a

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 46
    array-length v3, v3

    .line 47
    sub-int/2addr v3, v0

    .line 48
    const/4 v0, 0x0

    .line 49
    .line 50
    if-ge p2, v2, :cond_5

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 54
    move-result v4

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 58
    move-result v2

    .line 59
    .line 60
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 61
    .line 62
    :cond_2
    :goto_1
    if-ge v4, v2, :cond_9

    .line 63
    .line 64
    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 65
    .line 66
    .line 67
    invoke-static {v6, v4}, Landroidx/compose/runtime/SlotTableKt;->e([II)I

    .line 68
    move-result v6

    .line 69
    .line 70
    if-ltz v6, :cond_3

    .line 71
    move v7, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move v7, v0

    .line 74
    .line 75
    :goto_2
    if-eqz v7, :cond_4

    .line 76
    .line 77
    iget-object v7, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 78
    .line 79
    sub-int v6, v3, v6

    .line 80
    add-int/2addr v6, v1

    .line 81
    neg-int v6, v6

    .line 82
    .line 83
    .line 84
    invoke-static {v7, v4, v6}, Landroidx/compose/runtime/SlotTableKt;->v([III)V

    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    if-ne v4, v5, :cond_2

    .line 89
    .line 90
    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 91
    add-int/2addr v4, v6

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_4
    const-string p1, "Unexpected anchor value, expected a positive anchor"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 102
    .line 103
    new-instance p1, Lw7/i;

    .line 104
    .line 105
    .line 106
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 107
    throw p1

    .line 108
    .line 109
    .line 110
    :cond_5
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 111
    move-result v2

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 115
    move-result v4

    .line 116
    .line 117
    :cond_6
    :goto_3
    if-ge v2, v4, :cond_9

    .line 118
    .line 119
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 120
    .line 121
    .line 122
    invoke-static {v5, v2}, Landroidx/compose/runtime/SlotTableKt;->e([II)I

    .line 123
    move-result v5

    .line 124
    .line 125
    if-gez v5, :cond_7

    .line 126
    move v6, v1

    .line 127
    goto :goto_4

    .line 128
    :cond_7
    move v6, v0

    .line 129
    .line 130
    :goto_4
    if-eqz v6, :cond_8

    .line 131
    .line 132
    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 133
    add-int/2addr v5, v3

    .line 134
    add-int/2addr v5, v1

    .line 135
    .line 136
    .line 137
    invoke-static {v6, v2, v5}, Landroidx/compose/runtime/SlotTableKt;->v([III)V

    .line 138
    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 140
    .line 141
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 142
    .line 143
    if-ne v2, v5, :cond_6

    .line 144
    .line 145
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 146
    add-int/2addr v2, v5

    .line 147
    goto :goto_3

    .line 148
    .line 149
    :cond_8
    const-string p1, "Unexpected anchor value, expected a negative anchor"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 157
    .line 158
    new-instance p1, Lw7/i;

    .line 159
    .line 160
    .line 161
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 162
    throw p1

    .line 163
    .line 164
    :cond_9
    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 165
    .line 166
    :cond_a
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 167
    return-void
.end method

.method public static final synthetic t(Landroidx/compose/runtime/SlotWriter;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/SlotWriter;->G0(III)V

    .line 4
    return-void
.end method

.method public static final synthetic u(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 3
    return-void
.end method

.method public static final synthetic v(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 3
    return-void
.end method

.method public static final synthetic w(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 3
    return-void
.end method

.method public static final synthetic x(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 3
    return-void
.end method

.method private final x0([II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public static final synthetic y(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->a1(I)V

    .line 4
    return-void
.end method

.method private final z0([II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->r([II)I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->A0(I)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method


# virtual methods
.method public final A(I)Landroidx/compose/runtime/Anchor;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->W()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->s(Ljava/util/ArrayList;II)I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-gez v1, :cond_1

    .line 13
    .line 14
    new-instance v2, Landroidx/compose/runtime/Anchor;

    .line 15
    .line 16
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 17
    .line 18
    if-gt p1, v3, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->W()I

    .line 23
    move-result v3

    .line 24
    sub-int/2addr v3, p1

    .line 25
    neg-int p1, v3

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-direct {v2, p1}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    neg-int p1, v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string v0, "get(location)"

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    move-object v2, p1

    .line 46
    .line 47
    check-cast v2, Landroidx/compose/runtime/Anchor;

    .line 48
    :goto_1
    return-object v2
.end method

.method public final B(Landroidx/compose/runtime/Anchor;)I
    .locals 1
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "anchor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->a()I

    .line 9
    move-result p1

    .line 10
    .line 11
    if-gez p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->W()I

    .line 15
    move-result v0

    .line 16
    add-int/2addr p1, v0

    .line 17
    :cond_0
    return p1
.end method

.method public final D()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->J0()V

    .line 12
    :cond_0
    return-void
.end method

.method public final E0()Z
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->N0()I

    .line 12
    move-result v2

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v3}, Landroidx/compose/runtime/PrioritySet;->b()Z

    .line 20
    move-result v4

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/compose/runtime/PrioritySet;->c()I

    .line 26
    move-result v4

    .line 27
    .line 28
    if-lt v4, v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Landroidx/compose/runtime/PrioritySet;->d()I

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 35
    sub-int/2addr v3, v0

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v0, v3}, Landroidx/compose/runtime/SlotWriter;->F0(II)Z

    .line 39
    move-result v3

    .line 40
    .line 41
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 42
    sub-int/2addr v4, v1

    .line 43
    .line 44
    add-int/lit8 v5, v0, -0x1

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v1, v4, v5}, Landroidx/compose/runtime/SlotWriter;->G0(III)V

    .line 48
    .line 49
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 50
    .line 51
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 52
    .line 53
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 54
    sub-int/2addr v0, v2

    .line 55
    .line 56
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 57
    return v3

    .line 58
    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string v1, "Cannot remove group while inserting"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    throw v0
.end method

.method public final F()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->d()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->W()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->q0(I)V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 21
    array-length v0, v0

    .line 22
    .line 23
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 24
    sub-int/2addr v0, v1

    .line 25
    .line 26
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->s0(II)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->C0()V

    .line 33
    .line 34
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 37
    .line 38
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 39
    .line 40
    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 41
    .line 42
    iget v7, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 43
    .line 44
    iget-object v8, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 45
    move-object v3, p0

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/runtime/SlotTable;->c(Landroidx/compose/runtime/SlotWriter;[II[Ljava/lang/Object;ILjava/util/ArrayList;)V

    .line 49
    return-void
.end method

.method public final H0()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->C0()V

    .line 14
    .line 15
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->S()I

    .line 19
    move-result v0

    .line 20
    .line 21
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 22
    sub-int/2addr v0, v2

    .line 23
    .line 24
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 25
    .line 26
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 27
    .line 28
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 29
    .line 30
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 31
    return-void

    .line 32
    .line 33
    :cond_1
    const-string v0, "Cannot reset when inserting"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 41
    .line 42
    new-instance v0, Lw7/i;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 46
    throw v0
.end method

.method public final K0(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->R0([II)I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 15
    .line 16
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 17
    const/4 v3, 0x1

    .line 18
    add-int/2addr v2, v3

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 26
    move-result v1

    .line 27
    .line 28
    add-int v2, v0, p1

    .line 29
    .line 30
    if-lt v2, v0, :cond_0

    .line 31
    .line 32
    if-ge v2, v1, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v3, 0x0

    .line 35
    .line 36
    :goto_0
    if-eqz v3, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->L(I)I

    .line 40
    move-result p1

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 43
    .line 44
    aget-object v1, v0, p1

    .line 45
    .line 46
    aput-object p2, v0, p1

    .line 47
    return-object v1

    .line 48
    .line 49
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v0, "Write to an invalid slot index "

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string p1, " for group "

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 82
    .line 83
    new-instance p1, Lw7/i;

    .line 84
    .line 85
    .line 86
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 87
    throw p1
.end method

.method public final L0(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    move v1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    .line 12
    :goto_0
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 15
    sub-int/2addr v0, v2

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->L(I)I

    .line 19
    move-result v0

    .line 20
    .line 21
    aput-object p1, v1, v0

    .line 22
    return-void

    .line 23
    .line 24
    :cond_1
    const-string p1, "Writing to an invalid slot"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 32
    .line 33
    new-instance p1, Lw7/i;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 37
    throw p1
.end method

.method public final M0()Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->i0(II)V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 13
    .line 14
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 15
    .line 16
    add-int/lit8 v2, v1, 0x1

    .line 17
    .line 18
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->L(I)I

    .line 22
    move-result v1

    .line 23
    .line 24
    aget-object v0, v0, v1

    .line 25
    return-object v0
.end method

.method public final N()I
    .locals 10

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    .line 11
    :goto_0
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 12
    .line 13
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 14
    .line 15
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v5}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 19
    move-result v6

    .line 20
    .line 21
    iget v7, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 22
    .line 23
    sub-int v8, v3, v5

    .line 24
    .line 25
    iget-object v9, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 26
    .line 27
    .line 28
    invoke-static {v9, v6}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 29
    move-result v9

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v6, v8}, Landroidx/compose/runtime/SlotTableKt;->w([III)V

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v6, v7}, Landroidx/compose/runtime/SlotTableKt;->y([III)V

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->h()I

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v9, :cond_1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v1, v7

    .line 52
    :goto_1
    add-int/2addr v0, v1

    .line 53
    .line 54
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0, v5}, Landroidx/compose/runtime/SlotWriter;->z0([II)I

    .line 60
    move-result v0

    .line 61
    .line 62
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_2
    if-ne v3, v4, :cond_c

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v6}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 72
    move-result v0

    .line 73
    .line 74
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v6}, Landroidx/compose/runtime/SlotTableKt;->o([II)I

    .line 78
    move-result v1

    .line 79
    .line 80
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v6, v8}, Landroidx/compose/runtime/SlotTableKt;->w([III)V

    .line 84
    .line 85
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v6, v7}, Landroidx/compose/runtime/SlotTableKt;->y([III)V

    .line 89
    .line 90
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Landroidx/compose/runtime/IntStack;->h()I

    .line 94
    move-result v3

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->I0()I

    .line 98
    .line 99
    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 100
    .line 101
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v4, v5}, Landroidx/compose/runtime/SlotWriter;->z0([II)I

    .line 105
    move-result v4

    .line 106
    .line 107
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Landroidx/compose/runtime/IntStack;->h()I

    .line 111
    move-result v5

    .line 112
    .line 113
    iput v5, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 114
    .line 115
    if-ne v4, v3, :cond_4

    .line 116
    .line 117
    if-eqz v9, :cond_3

    .line 118
    goto :goto_2

    .line 119
    .line 120
    :cond_3
    sub-int v2, v7, v1

    .line 121
    :goto_2
    add-int/2addr v5, v2

    .line 122
    .line 123
    iput v5, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 124
    goto :goto_5

    .line 125
    :cond_4
    sub-int/2addr v8, v0

    .line 126
    .line 127
    if-eqz v9, :cond_5

    .line 128
    move v0, v2

    .line 129
    goto :goto_3

    .line 130
    .line 131
    :cond_5
    sub-int v0, v7, v1

    .line 132
    .line 133
    :goto_3
    if-nez v8, :cond_6

    .line 134
    .line 135
    if-eqz v0, :cond_b

    .line 136
    .line 137
    :cond_6
    :goto_4
    if-eqz v4, :cond_b

    .line 138
    .line 139
    if-eq v4, v3, :cond_b

    .line 140
    .line 141
    if-nez v0, :cond_7

    .line 142
    .line 143
    if-eqz v8, :cond_b

    .line 144
    .line 145
    .line 146
    :cond_7
    invoke-direct {p0, v4}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 147
    move-result v1

    .line 148
    .line 149
    if-eqz v8, :cond_8

    .line 150
    .line 151
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 152
    .line 153
    .line 154
    invoke-static {v5, v1}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 155
    move-result v5

    .line 156
    add-int/2addr v5, v8

    .line 157
    .line 158
    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 159
    .line 160
    .line 161
    invoke-static {v6, v1, v5}, Landroidx/compose/runtime/SlotTableKt;->w([III)V

    .line 162
    .line 163
    :cond_8
    if-eqz v0, :cond_9

    .line 164
    .line 165
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 166
    .line 167
    .line 168
    invoke-static {v5, v1}, Landroidx/compose/runtime/SlotTableKt;->o([II)I

    .line 169
    move-result v6

    .line 170
    add-int/2addr v6, v0

    .line 171
    .line 172
    .line 173
    invoke-static {v5, v1, v6}, Landroidx/compose/runtime/SlotTableKt;->y([III)V

    .line 174
    .line 175
    :cond_9
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 176
    .line 177
    .line 178
    invoke-static {v5, v1}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 179
    move-result v1

    .line 180
    .line 181
    if-eqz v1, :cond_a

    .line 182
    move v0, v2

    .line 183
    .line 184
    :cond_a
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, v1, v4}, Landroidx/compose/runtime/SlotWriter;->z0([II)I

    .line 188
    move-result v4

    .line 189
    goto :goto_4

    .line 190
    .line 191
    :cond_b
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 192
    add-int/2addr v1, v0

    .line 193
    .line 194
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 195
    :goto_5
    return v7

    .line 196
    .line 197
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 198
    .line 199
    const-string v1, "Expected to be at the end of a group"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    .line 206
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 207
    throw v0
.end method

.method public final N0()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v1, v2

    .line 16
    .line 17
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v2, v1}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 27
    move-result v1

    .line 28
    .line 29
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->o([II)I

    .line 45
    move-result v0

    .line 46
    :goto_0
    return v0
.end method

.method public final O()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 3
    .line 4
    if-lez v0, :cond_3

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->b()I

    .line 16
    move-result v0

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->b()I

    .line 22
    move-result v1

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    .line 29
    :goto_0
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->I0()I

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_1
    const-string/jumbo v0, "startGroup/endGroup mismatch while inserting"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 43
    .line 44
    new-instance v0, Lw7/i;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 48
    throw v0

    .line 49
    :cond_2
    :goto_1
    return-void

    .line 50
    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v1, "Unbalanced begin/end insert"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0
.end method

.method public final O0()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 17
    return-void
.end method

.method public final P(I)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 3
    .line 4
    if-gtz v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 7
    .line 8
    if-eq v0, p1, :cond_1

    .line 9
    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 13
    .line 14
    if-ge p1, v1, :cond_0

    .line 15
    .line 16
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 17
    .line 18
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 19
    .line 20
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 21
    .line 22
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->T0()V

    .line 26
    .line 27
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 28
    .line 29
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 30
    .line 31
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v2, "Started group at "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p1, " must be a subgroup of the group at "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw v0

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 69
    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string v0, "Cannot call ensureStarted() while inserting"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p1
.end method

.method public final P0(II)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->R0([II)I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 22
    move-result p1

    .line 23
    add-int/2addr p2, v0

    .line 24
    .line 25
    if-gt v0, p2, :cond_0

    .line 26
    .line 27
    if-ge p2, p1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->L(I)I

    .line 31
    move-result p1

    .line 32
    .line 33
    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 34
    .line 35
    aget-object p1, p2, p1

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_0
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public final Q(Landroidx/compose/runtime/Anchor;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "anchor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->e(Landroidx/compose/runtime/SlotWriter;)I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->P(I)V

    .line 13
    return-void
.end method

.method public final Q0(Landroidx/compose/runtime/Anchor;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "anchor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->B(Landroidx/compose/runtime/Anchor;)I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->P0(II)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final S0(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/compose/runtime/SlotWriter;->V0(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 5
    return-void
.end method

.method public final T()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    return v0
.end method

.method public final T0()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v2, v1, v2, v0}, Landroidx/compose/runtime/SlotWriter;->V0(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v1, "Key must be supplied when inserting"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw v0
.end method

.method public final U()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    return v0
.end method

.method public final U0(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/SlotWriter;->V0(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 11
    return-void
.end method

.method public final V()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    return v0
.end method

.method public final W()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->S()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 7
    sub-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public final W0(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const/16 v1, 0x7d

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v1, p1, v2, v0}, Landroidx/compose/runtime/SlotWriter;->V0(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 13
    return-void
.end method

.method public final X()Landroidx/compose/runtime/SlotTable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public final X0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->M0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->L0(Ljava/lang/Object;)V

    .line 8
    return-object v0
.end method

.method public final Y(I)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->h([II)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->C([II)I

    .line 20
    move-result p1

    .line 21
    .line 22
    aget-object p1, v0, p1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    :goto_0
    return-object p1
.end method

.method public final Z0(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->h([II)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/SlotWriter;->C([II)I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->L(I)I

    .line 26
    move-result v0

    .line 27
    .line 28
    aput-object p1, v1, v0

    .line 29
    return-void

    .line 30
    .line 31
    :cond_0
    const-string p1, "Updating the data of a group that was not created with a data slot"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 39
    .line 40
    new-instance p1, Lw7/i;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 44
    throw p1
.end method

.method public final a0(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->m([II)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final b0(I)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->j([II)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 17
    .line 18
    .line 19
    invoke-static {v1, p1}, Landroidx/compose/runtime/SlotTableKt;->q([II)I

    .line 20
    move-result p1

    .line 21
    .line 22
    aget-object p1, v0, p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return-object p1
.end method

.method public final c0(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final d0()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 15
    .line 16
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->c0(I)I

    .line 20
    move-result v3

    .line 21
    add-int/2addr v2, v3

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 29
    move-result v1

    .line 30
    .line 31
    new-instance v2, Landroidx/compose/runtime/SlotWriter$groupSlots$1;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v0, v1, p0}, Landroidx/compose/runtime/SlotWriter$groupSlots$1;-><init>(IILandroidx/compose/runtime/SlotWriter;)V

    .line 35
    return-object v2
.end method

.method public final d1(Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "anchor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->e(Landroidx/compose/runtime/SlotWriter;)I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->f1(ILjava/lang/Object;)V

    .line 13
    return-void
.end method

.method public final e0(I)Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/SlotWriter;->f0(II)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e1(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->f1(ILjava/lang/Object;)V

    .line 6
    return-void
.end method

.method public final f0(II)Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 8
    goto :goto_1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->g(I)I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-le p2, v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->c0(I)I

    .line 20
    move-result v0

    .line 21
    :goto_0
    add-int/2addr v0, p2

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->c(I)I

    .line 28
    move-result v0

    .line 29
    .line 30
    if-gez v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->c0(I)I

    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->S()I

    .line 39
    move-result v2

    .line 40
    .line 41
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 42
    sub-int/2addr v2, v3

    .line 43
    .line 44
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/IntStack;->f(I)I

    .line 48
    move-result v0

    .line 49
    .line 50
    sub-int v0, v2, v0

    .line 51
    .line 52
    :goto_1
    if-le p1, p2, :cond_3

    .line 53
    .line 54
    if-ge p1, v0, :cond_3

    .line 55
    const/4 v1, 0x1

    .line 56
    :cond_3
    return v1
.end method

.method public final g0(I)Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-le p1, v0, :cond_0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-lt p1, v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final j0()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public final k0(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final l0(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->i([II)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/SlotTableKt;->x([IIZ)V

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->c([II)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->y0(I)I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->a1(I)V

    .line 34
    :cond_0
    return-void
.end method

.method public final o0(Landroidx/compose/runtime/SlotTable;I)Ljava/util/List;
    .locals 7
    .param p1    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotTable;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string/jumbo v0, "table"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->g()I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 26
    .line 27
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->f()[I

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->g()I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->j()[Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->m()I

    .line 45
    move-result v3

    .line 46
    .line 47
    iput-object p2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 48
    .line 49
    iput-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->e()Ljava/util/ArrayList;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    iput-object v5, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 56
    .line 57
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 58
    array-length p2, p2

    .line 59
    .line 60
    div-int/lit8 p2, p2, 0x5

    .line 61
    sub-int/2addr p2, v0

    .line 62
    .line 63
    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 64
    .line 65
    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 66
    array-length p2, v1

    .line 67
    sub-int/2addr p2, v3

    .line 68
    .line 69
    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 70
    .line 71
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    move-object v1, p1

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/runtime/SlotTable;->v([II[Ljava/lang/Object;ILjava/util/ArrayList;)V

    .line 78
    .line 79
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 80
    return-object p1

    .line 81
    .line 82
    .line 83
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->t()Landroidx/compose/runtime/SlotWriter;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    .line 87
    const/4 v4, 0x1

    .line 88
    const/4 v5, 0x1

    .line 89
    move-object v1, p1

    .line 90
    move v2, p2

    .line 91
    move-object v3, p0

    .line 92
    .line 93
    .line 94
    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/SlotWriter$Companion;->a(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZ)Ljava/util/List;

    .line 95
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 99
    return-object p2

    .line 100
    :catchall_0
    move-exception p2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 104
    throw p2

    .line 105
    .line 106
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    const-string p2, "Failed requirement."

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    move-result-object p2

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    throw p1
.end method

.method public final p0(I)V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 5
    .line 6
    if-nez v1, :cond_9

    .line 7
    .line 8
    const-string v1, "Parameter offset is out of bounds"

    .line 9
    .line 10
    if-ltz p1, :cond_8

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 16
    .line 17
    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 18
    .line 19
    iget v4, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 20
    .line 21
    move/from16 v5, p1

    .line 22
    move v6, v2

    .line 23
    .line 24
    :goto_0
    if-lez v5, :cond_2

    .line 25
    .line 26
    iget-object v7, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v6}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 30
    move-result v8

    .line 31
    .line 32
    .line 33
    invoke-static {v7, v8}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 34
    move-result v7

    .line 35
    add-int/2addr v6, v7

    .line 36
    .line 37
    if-gt v6, v4, :cond_1

    .line 38
    .line 39
    add-int/lit8 v5, v5, -0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v2

    .line 51
    .line 52
    :cond_2
    iget-object v1, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v6}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 56
    move-result v4

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v4}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 60
    move-result v1

    .line 61
    .line 62
    iget v4, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 63
    .line 64
    iget-object v5, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v6}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 68
    move-result v7

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v5, v7}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 72
    move-result v5

    .line 73
    .line 74
    iget-object v7, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 75
    add-int/2addr v6, v1

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v6}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 79
    move-result v8

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v7, v8}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 83
    move-result v7

    .line 84
    .line 85
    sub-int v8, v7, v5

    .line 86
    .line 87
    iget v9, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 88
    .line 89
    add-int/lit8 v9, v9, -0x1

    .line 90
    const/4 v10, 0x0

    .line 91
    .line 92
    .line 93
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 94
    move-result v9

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v8, v9}, Landroidx/compose/runtime/SlotWriter;->i0(II)V

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1}, Landroidx/compose/runtime/SlotWriter;->h0(I)V

    .line 101
    .line 102
    iget-object v9, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v6}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 106
    move-result v11

    .line 107
    .line 108
    mul-int/lit8 v11, v11, 0x5

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v2}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 112
    move-result v12

    .line 113
    .line 114
    mul-int/lit8 v12, v12, 0x5

    .line 115
    .line 116
    mul-int/lit8 v13, v1, 0x5

    .line 117
    add-int/2addr v13, v11

    .line 118
    .line 119
    .line 120
    invoke-static {v9, v9, v12, v11, v13}, Lkotlin/collections/l;->g([I[IIII)[I

    .line 121
    .line 122
    if-lez v8, :cond_3

    .line 123
    .line 124
    iget-object v11, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 125
    .line 126
    add-int v12, v5, v8

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v12}, Landroidx/compose/runtime/SlotWriter;->L(I)I

    .line 130
    move-result v12

    .line 131
    add-int/2addr v7, v8

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v7}, Landroidx/compose/runtime/SlotWriter;->L(I)I

    .line 135
    move-result v7

    .line 136
    .line 137
    .line 138
    invoke-static {v11, v11, v4, v12, v7}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 139
    :cond_3
    add-int/2addr v5, v8

    .line 140
    .line 141
    sub-int v4, v5, v4

    .line 142
    .line 143
    iget v7, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 144
    .line 145
    iget v11, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 146
    .line 147
    iget-object v12, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 148
    array-length v12, v12

    .line 149
    .line 150
    iget v13, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 151
    .line 152
    add-int v14, v2, v1

    .line 153
    move v15, v2

    .line 154
    .line 155
    :goto_1
    if-ge v15, v14, :cond_5

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, v15}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 159
    move-result v10

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, v9, v10}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 163
    move-result v16

    .line 164
    .line 165
    move/from16 v17, v7

    .line 166
    .line 167
    sub-int v7, v16, v4

    .line 168
    .line 169
    move/from16 v16, v4

    .line 170
    .line 171
    if-ge v13, v10, :cond_4

    .line 172
    const/4 v4, 0x0

    .line 173
    goto :goto_2

    .line 174
    .line 175
    :cond_4
    move/from16 v4, v17

    .line 176
    .line 177
    .line 178
    :goto_2
    invoke-direct {v0, v7, v4, v11, v12}, Landroidx/compose/runtime/SlotWriter;->M(IIII)I

    .line 179
    move-result v4

    .line 180
    .line 181
    .line 182
    invoke-direct {v0, v9, v10, v4}, Landroidx/compose/runtime/SlotWriter;->c1([III)V

    .line 183
    .line 184
    add-int/lit8 v15, v15, 0x1

    .line 185
    .line 186
    move/from16 v4, v16

    .line 187
    .line 188
    move/from16 v7, v17

    .line 189
    const/4 v10, 0x0

    .line 190
    goto :goto_1

    .line 191
    .line 192
    .line 193
    :cond_5
    invoke-direct {v0, v6, v2, v1}, Landroidx/compose/runtime/SlotWriter;->n0(III)V

    .line 194
    .line 195
    .line 196
    invoke-direct {v0, v6, v1}, Landroidx/compose/runtime/SlotWriter;->F0(II)Z

    .line 197
    move-result v1

    .line 198
    .line 199
    xor-int/lit8 v1, v1, 0x1

    .line 200
    .line 201
    if-eqz v1, :cond_7

    .line 202
    .line 203
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 204
    .line 205
    .line 206
    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/SlotWriter;->R(III)V

    .line 207
    .line 208
    if-lez v8, :cond_6

    .line 209
    .line 210
    add-int/lit8 v6, v6, -0x1

    .line 211
    .line 212
    .line 213
    invoke-direct {v0, v5, v8, v6}, Landroidx/compose/runtime/SlotWriter;->G0(III)V

    .line 214
    :cond_6
    return-void

    .line 215
    .line 216
    :cond_7
    const-string v1, "Unexpectedly removed anchors"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 220
    move-result-object v1

    .line 221
    .line 222
    .line 223
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 224
    .line 225
    new-instance v1, Lw7/i;

    .line 226
    .line 227
    .line 228
    invoke-direct {v1}, Lw7/i;-><init>()V

    .line 229
    throw v1

    .line 230
    .line 231
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 235
    move-result-object v1

    .line 236
    .line 237
    .line 238
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 239
    throw v2

    .line 240
    .line 241
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 242
    .line 243
    const-string v2, "Cannot move a group while inserting"

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 247
    move-result-object v2

    .line 248
    .line 249
    .line 250
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 251
    throw v1
.end method

.method public final r0(ILandroidx/compose/runtime/SlotTable;I)Ljava/util/List;
    .locals 9
    .param p2    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/SlotTable;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string/jumbo v0, "table"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 8
    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 12
    add-int/2addr v0, p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->c0(I)I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->X(Z)V

    .line 25
    .line 26
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 27
    .line 28
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 29
    .line 30
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->z(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->T0()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->D()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotTable;->t()Landroidx/compose/runtime/SlotWriter;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    :try_start_0
    sget-object v3, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x1

    .line 48
    move-object v4, p1

    .line 49
    move v5, p3

    .line 50
    move-object v6, p0

    .line 51
    .line 52
    .line 53
    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SlotWriter$Companion;->a(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZ)Ljava/util/List;

    .line 54
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->O()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->N()I

    .line 64
    .line 65
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 66
    .line 67
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 68
    .line 69
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 70
    return-object p2

    .line 71
    :catchall_0
    move-exception p2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->F()V

    .line 75
    throw p2
.end method

.method public final t0(Landroidx/compose/runtime/Anchor;ILandroidx/compose/runtime/SlotWriter;)Ljava/util/List;
    .locals 9
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Anchor;",
            "I",
            "Landroidx/compose/runtime/SlotWriter;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "anchor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "writer"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget v0, p3, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 13
    .line 14
    const-string v1, "Failed requirement."

    .line 15
    .line 16
    if-lez v0, :cond_a

    .line 17
    .line 18
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 19
    .line 20
    if-nez v0, :cond_9

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->b()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_8

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->B(Landroidx/compose/runtime/Anchor;)I

    .line 30
    move-result p1

    .line 31
    .line 32
    add-int v4, p1, p2

    .line 33
    .line 34
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 35
    .line 36
    if-gt p1, v4, :cond_7

    .line 37
    .line 38
    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 39
    .line 40
    if-ge v4, p2, :cond_7

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->y0(I)I

    .line 44
    move-result p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->c0(I)I

    .line 48
    move-result v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->k0(I)Z

    .line 52
    move-result v1

    .line 53
    const/4 v8, 0x1

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    move v1, v8

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->w0(I)I

    .line 61
    move-result v1

    .line 62
    .line 63
    :goto_0
    sget-object v2, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    move-object v3, p0

    .line 67
    move-object v5, p3

    .line 68
    .line 69
    .line 70
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/SlotWriter$Companion;->a(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZ)Ljava/util/List;

    .line 71
    move-result-object p3

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->a1(I)V

    .line 75
    const/4 v2, 0x0

    .line 76
    .line 77
    if-lez v1, :cond_1

    .line 78
    move v3, v8

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move v3, v2

    .line 81
    .line 82
    :goto_1
    if-lt p2, p1, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 86
    move-result v4

    .line 87
    .line 88
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 89
    .line 90
    .line 91
    invoke-static {v5, v4}, Landroidx/compose/runtime/SlotTableKt;->g([II)I

    .line 92
    move-result v6

    .line 93
    sub-int/2addr v6, v0

    .line 94
    .line 95
    .line 96
    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/SlotTableKt;->w([III)V

    .line 97
    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 101
    .line 102
    .line 103
    invoke-static {v5, v4}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 104
    move-result v5

    .line 105
    .line 106
    if-eqz v5, :cond_2

    .line 107
    move v3, v2

    .line 108
    goto :goto_2

    .line 109
    .line 110
    :cond_2
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 111
    .line 112
    .line 113
    invoke-static {v5, v4}, Landroidx/compose/runtime/SlotTableKt;->o([II)I

    .line 114
    move-result v6

    .line 115
    sub-int/2addr v6, v1

    .line 116
    .line 117
    .line 118
    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/SlotTableKt;->y([III)V

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_2
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->y0(I)I

    .line 122
    move-result p2

    .line 123
    goto :goto_1

    .line 124
    .line 125
    :cond_4
    if-eqz v3, :cond_6

    .line 126
    .line 127
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 128
    .line 129
    if-lt p1, v1, :cond_5

    .line 130
    goto :goto_3

    .line 131
    :cond_5
    move v8, v2

    .line 132
    .line 133
    .line 134
    :goto_3
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->X(Z)V

    .line 135
    .line 136
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 137
    sub-int/2addr p1, v1

    .line 138
    .line 139
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 140
    :cond_6
    return-object p3

    .line 141
    .line 142
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 146
    move-result-object p2

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    throw p1

    .line 151
    .line 152
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    move-result-object p2

    .line 157
    .line 158
    .line 159
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    throw p1

    .line 161
    .line 162
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 166
    move-result-object p2

    .line 167
    .line 168
    .line 169
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    throw p1

    .line 171
    .line 172
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 176
    move-result-object p2

    .line 177
    .line 178
    .line 179
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
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
    const-string v1, "SlotWriter(current = "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " end="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, " size = "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->W()I

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, " gap="

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const/16 v1, 0x2d

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 55
    .line 56
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 57
    add-int/2addr v1, v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const/16 v1, 0x29

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public final u0(I)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->x0([II)I

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->L(I)I

    .line 24
    move-result p1

    .line 25
    .line 26
    aget-object p1, v0, p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    return-object p1
.end method

.method public final v0(Landroidx/compose/runtime/Anchor;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "anchor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->e(Landroidx/compose/runtime/SlotWriter;)I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->u0(I)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final w0(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->o([II)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final y0(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->z0([II)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final z(I)V
    .locals 1

    .line 1
    .line 2
    if-ltz p1, :cond_4

    .line 3
    .line 4
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    .line 5
    .line 6
    if-gtz v0, :cond_3

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 12
    add-int/2addr v0, p1

    .line 13
    .line 14
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 15
    .line 16
    if-lt v0, p1, :cond_1

    .line 17
    .line 18
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 19
    .line 20
    if-gt v0, p1, :cond_1

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    .line 25
    :goto_0
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->Z(I)I

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/SlotWriter;->K([II)I

    .line 37
    move-result p1

    .line 38
    .line 39
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 40
    .line 41
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 42
    return-void

    .line 43
    .line 44
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v0, "Cannot seek outside the current group ("

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const/16 v0, 0x2d

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const/16 v0, 0x29

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 84
    .line 85
    new-instance p1, Lw7/i;

    .line 86
    .line 87
    .line 88
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 89
    throw p1

    .line 90
    .line 91
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v0, "Cannot call seek() while inserting"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p1

    .line 102
    .line 103
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    const-string v0, "Cannot seek backwards"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p1
.end method
