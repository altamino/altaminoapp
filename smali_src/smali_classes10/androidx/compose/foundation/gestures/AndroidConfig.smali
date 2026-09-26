.class final Landroidx/compose/foundation/gestures/AndroidConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollConfig;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidScrollable.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidScrollable.android.kt\nandroidx/compose/foundation/gestures/AndroidConfig\n+ 2 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,35:1\n57#2,3:36\n60#2,2:43\n62#2:46\n32#3,4:39\n37#3:45\n155#4:47\n*S KotlinDebug\n*F\n+ 1 AndroidScrollable.android.kt\nandroidx/compose/foundation/gestures/AndroidConfig\n*L\n33#1:36,3\n33#1:43,2\n33#1:46\n33#1:39,4\n33#1:45\n33#1:47\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/gestures/AndroidConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/gestures/AndroidConfig;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/AndroidConfig;-><init>()V

    sput-object v0, Landroidx/compose/foundation/gestures/AndroidConfig;->INSTANCE:Landroidx/compose/foundation/gestures/AndroidConfig;

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
.method public a(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/input/pointer/PointerEvent;J)J
    .locals 6
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p3, "$this$calculateMouseWheelScroll"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "event"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    sget-object p3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 20
    move-result-wide p3

    .line 21
    .line 22
    .line 23
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 24
    move-result-object p3

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 28
    move-result p4

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    :goto_0
    if-ge v0, p4, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 41
    move-result-wide v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->j()J

    .line 45
    move-result-wide v4

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 49
    move-result-wide v1

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 60
    move-result-wide p2

    .line 61
    .line 62
    const/16 p4, 0x40

    .line 63
    int-to-float p4, p4

    .line 64
    .line 65
    .line 66
    invoke-static {p4}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 67
    move-result p4

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, p4}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 71
    move-result p1

    .line 72
    neg-float p1, p1

    .line 73
    .line 74
    .line 75
    invoke-static {p2, p3, p1}, Landroidx/compose/ui/geometry/Offset;->s(JF)J

    .line 76
    move-result-wide p1

    .line 77
    return-wide p1
.end method
