.class public final Landroidx/compose/foundation/layout/RowScopeInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/RowScope;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Row.kt\nandroidx/compose/foundation/layout/RowScopeInstance\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,272:1\n1#2:273\n135#3:274\n135#3:275\n135#3:276\n135#3:277\n*S KotlinDebug\n*F\n+ 1 Row.kt\nandroidx/compose/foundation/layout/RowScopeInstance\n*L\n227#1:274\n241#1:275\n252#1:276\n265#1:277\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/RowScopeInstance;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

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
.method public a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;
    .locals 4
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    float-to-double v0, p2

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmpl-double v0, v0, v2

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Landroidx/compose/foundation/layout/LayoutWeightImpl;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Landroidx/compose/foundation/layout/RowScopeInstance$weight$$inlined$debugInspectorInfo$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p2, p3}, Landroidx/compose/foundation/layout/RowScopeInstance$weight$$inlined$debugInspectorInfo$1;-><init>(FZ)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-direct {v0, p2, p3, v1}, Landroidx/compose/foundation/layout/LayoutWeightImpl;-><init>(FZLe8/l;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    .line 40
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    const-string p3, "invalid weight "

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p2, "; must be greater than zero"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p2
.end method

.method public b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Alignment$Vertical;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "alignment"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/layout/VerticalAlignModifier;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Landroidx/compose/foundation/layout/RowScopeInstance$align$$inlined$debugInspectorInfo$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p2}, Landroidx/compose/foundation/layout/RowScopeInstance$align$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-direct {v0, p2, v1}, Landroidx/compose/foundation/layout/VerticalAlignModifier;-><init>(Landroidx/compose/ui/Alignment$Vertical;Le8/l;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
