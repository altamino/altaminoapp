.class public final Landroidx/compose/foundation/text/TextFieldScrollerPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldScroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldScroll.kt\nandroidx/compose/foundation/text/TextFieldScrollerPosition\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,356:1\n76#2:357\n102#2,2:358\n76#2:360\n102#2,2:361\n76#2:363\n102#2,2:364\n*S KotlinDebug\n*F\n+ 1 TextFieldScroll.kt\nandroidx/compose/foundation/text/TextFieldScrollerPosition\n*L\n240#1:357\n240#1:358,2\n246#1:360\n246#1:361,2\n261#1:363\n261#1:364,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/foundation/text/TextFieldScrollerPosition;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final maximum$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final offset$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final orientation$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousCursorRect:Landroidx/compose/ui/geometry/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousSelection:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->Companion:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;

    .line 11
    .line 12
    sget-object v1, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$2;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->a(Le8/p;Le8/l;)Landroidx/compose/runtime/saveable/Saver;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->Saver:Landroidx/compose/runtime/saveable/Saver;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 8
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;-><init>(Landroidx/compose/foundation/gestures/Orientation;FILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;F)V
    .locals 2
    .param p1    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "initialOrientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->offset$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p2, 0x0

    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->maximum$delegate:Landroidx/compose/runtime/MutableState;

    .line 4
    sget-object p2, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->previousCursorRect:Landroidx/compose/ui/geometry/Rect;

    .line 5
    sget-object p2, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/TextRange$Companion;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->previousSelection:J

    .line 6
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->p()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->orientation$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/Orientation;FILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;-><init>(Landroidx/compose/foundation/gestures/Orientation;F)V

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method private final g(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->maximum$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final b(FFI)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->d()F

    .line 4
    move-result v0

    .line 5
    int-to-float p3, p3

    .line 6
    .line 7
    add-float v1, v0, p3

    .line 8
    .line 9
    cmpl-float v2, p2, v1

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    :goto_0
    sub-float/2addr p2, v1

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    cmpg-float v2, p1, v0

    .line 16
    .line 17
    if-gez v2, :cond_1

    .line 18
    .line 19
    sub-float v3, p2, p1

    .line 20
    .line 21
    cmpl-float v3, v3, p3

    .line 22
    .line 23
    if-lez v3, :cond_1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    if-gez v2, :cond_2

    .line 27
    sub-float/2addr p2, p1

    .line 28
    .line 29
    cmpg-float p2, p2, p3

    .line 30
    .line 31
    if-gtz p2, :cond_2

    .line 32
    .line 33
    sub-float p2, p1, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 p2, 0x0

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->d()F

    .line 39
    move-result p1

    .line 40
    add-float/2addr p1, p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->h(F)V

    .line 44
    return-void
.end method

.method public final c()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->maximum$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final d()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->offset$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final e(J)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->previousSelection:J

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 21
    move-result v0

    .line 22
    .line 23
    iget-wide v1, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->previousSelection:J

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 33
    move-result p1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 38
    move-result p1

    .line 39
    :goto_0
    return p1
.end method

.method public final f()Landroidx/compose/foundation/gestures/Orientation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->orientation$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/gestures/Orientation;

    .line 9
    return-object v0
.end method

.method public final h(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->offset$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public final i(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->previousSelection:J

    return-void
.end method

.method public final j(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/geometry/Rect;II)V
    .locals 2
    .param p1    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "orientation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "cursorRect"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sub-int/2addr p4, p3

    .line 12
    int-to-float p4, p4

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p4}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->g(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 19
    move-result v0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->previousCursorRect:Landroidx/compose/ui/geometry/Rect;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 25
    move-result v1

    .line 26
    .line 27
    cmpg-float v0, v0, v1

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 33
    move-result v0

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->previousCursorRect:Landroidx/compose/ui/geometry/Rect;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 39
    move-result v1

    .line 40
    .line 41
    cmpg-float v0, v0, v1

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    goto :goto_3

    .line 45
    .line 46
    :cond_0
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 47
    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    const/4 p1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    .line 53
    :goto_0
    if-eqz p1, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 57
    move-result v0

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 62
    move-result v0

    .line 63
    .line 64
    :goto_1
    if-eqz p1, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 68
    move-result p1

    .line 69
    goto :goto_2

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 73
    move-result p1

    .line 74
    .line 75
    .line 76
    :goto_2
    invoke-virtual {p0, v0, p1, p3}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->b(FFI)V

    .line 77
    .line 78
    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->previousCursorRect:Landroidx/compose/ui/geometry/Rect;

    .line 79
    .line 80
    .line 81
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->d()F

    .line 82
    move-result p1

    .line 83
    const/4 p2, 0x0

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p2, p4}, Lj8/m;->m(FFF)F

    .line 87
    move-result p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->h(F)V

    .line 91
    return-void
.end method
