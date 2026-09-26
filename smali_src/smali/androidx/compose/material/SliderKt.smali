.class public final Landroidx/compose/material/SliderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 9 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 10 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 11 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,1163:1\n25#2:1164\n36#2:1172\n25#2:1180\n25#2:1187\n36#2:1194\n460#2,13:1221\n473#2,3:1238\n460#2,13:1262\n36#2:1280\n36#2:1287\n473#2,3:1294\n460#2,13:1318\n25#2:1332\n50#2:1339\n49#2:1340\n473#2,3:1348\n83#2,3:1367\n1057#3,6:1165\n1057#3,6:1173\n1057#3,6:1181\n1057#3,6:1188\n1057#3,6:1195\n1057#3,6:1281\n1057#3,6:1288\n1057#3,6:1333\n1057#3,6:1341\n1057#3,6:1370\n1#4:1171\n93#5:1179\n93#5:1201\n93#5:1236\n89#5:1237\n93#5:1277\n89#5:1278\n89#5:1279\n67#6,6:1202\n73#6:1234\n77#6:1242\n67#6,6:1243\n73#6:1275\n77#6:1298\n67#6,6:1299\n73#6:1331\n77#6:1352\n75#7:1208\n76#7,11:1210\n89#7:1241\n75#7:1249\n76#7,11:1251\n89#7:1297\n75#7:1305\n76#7,11:1307\n89#7:1351\n76#8:1209\n76#8:1235\n76#8:1250\n76#8:1276\n76#8:1306\n155#9:1347\n155#9:1377\n155#9:1378\n155#9:1379\n155#9:1380\n155#9:1381\n155#9:1382\n155#9:1383\n2190#10,14:1353\n135#11:1376\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt\n*L\n153#1:1164\n158#1:1172\n293#1:1180\n294#1:1187\n298#1:1194\n577#1:1221,13\n577#1:1238,3\n621#1:1262,13\n647#1:1280\n658#1:1287\n621#1:1294,3\n679#1:1318,13\n680#1:1332\n681#1:1339\n681#1:1340\n679#1:1348,3\n823#1:1367,3\n153#1:1165,6\n158#1:1173,6\n293#1:1181,6\n294#1:1188,6\n298#1:1195,6\n647#1:1281,6\n658#1:1288,6\n680#1:1333,6\n681#1:1341,6\n823#1:1370,6\n164#1:1179\n305#1:1201\n587#1:1236\n588#1:1237\n631#1:1277\n632#1:1278\n633#1:1279\n577#1:1202,6\n577#1:1234\n577#1:1242\n621#1:1243,6\n621#1:1275\n621#1:1298\n679#1:1299,6\n679#1:1331\n679#1:1352\n577#1:1208\n577#1:1210,11\n577#1:1241\n621#1:1249\n621#1:1251,11\n621#1:1297\n679#1:1305\n679#1:1307,11\n679#1:1351\n577#1:1209\n581#1:1235\n621#1:1250\n625#1:1276\n679#1:1306\n707#1:1347\n1123#1:1377\n1124#1:1378\n1125#1:1379\n1126#1:1380\n1129#1:1381\n1130#1:1382\n1131#1:1383\n781#1:1353,14\n907#1:1376\n*E\n"
.end annotation


# static fields
.field private static final DefaultSliderConstraints:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SliderHeight:F

.field private static final SliderMinWidth:F

.field private static final SliderToTickAnimation:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ThumbDefaultElevation:F

.field private static final ThumbPressedElevation:F

.field private static final ThumbRadius:F

.field private static final ThumbRippleRadius:F

.field private static final TrackHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 7
    move-result v0

    .line 8
    .line 9
    sput v0, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .line 10
    .line 11
    const/16 v0, 0x18

    .line 12
    int-to-float v0, v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 16
    move-result v0

    .line 17
    .line 18
    sput v0, Landroidx/compose/material/SliderKt;->ThumbRippleRadius:F

    .line 19
    const/4 v0, 0x1

    .line 20
    int-to-float v1, v0

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 24
    move-result v1

    .line 25
    .line 26
    sput v1, Landroidx/compose/material/SliderKt;->ThumbDefaultElevation:F

    .line 27
    const/4 v1, 0x6

    .line 28
    int-to-float v1, v1

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 32
    move-result v1

    .line 33
    .line 34
    sput v1, Landroidx/compose/material/SliderKt;->ThumbPressedElevation:F

    .line 35
    const/4 v1, 0x4

    .line 36
    int-to-float v1, v1

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 40
    move-result v1

    .line 41
    .line 42
    sput v1, Landroidx/compose/material/SliderKt;->TrackHeight:F

    .line 43
    .line 44
    const/16 v1, 0x30

    .line 45
    int-to-float v1, v1

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 49
    move-result v1

    .line 50
    .line 51
    sput v1, Landroidx/compose/material/SliderKt;->SliderHeight:F

    .line 52
    .line 53
    const/16 v2, 0x90

    .line 54
    int-to-float v2, v2

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 58
    move-result v2

    .line 59
    .line 60
    sput v2, Landroidx/compose/material/SliderKt;->SliderMinWidth:F

    .line 61
    .line 62
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x2

    .line 65
    const/4 v6, 0x0

    .line 66
    .line 67
    .line 68
    invoke-static {v3, v2, v4, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->F(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v4, v1, v0, v6}, Landroidx/compose/foundation/layout/SizeKt;->q(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    sput-object v0, Landroidx/compose/material/SliderKt;->DefaultSliderConstraints:Landroidx/compose/ui/Modifier;

    .line 76
    .line 77
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    .line 78
    .line 79
    const/16 v2, 0x64

    .line 80
    const/4 v3, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    const/4 v5, 0x6

    .line 83
    move-object v1, v0

    .line 84
    .line 85
    .line 86
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/k;)V

    .line 87
    .line 88
    sput-object v0, Landroidx/compose/material/SliderKt;->SliderToTickAnimation:Landroidx/compose/animation/core/TweenSpec;

    .line 89
    return-void
.end method

.method private static final A(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZZFLj8/e;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;ZZF",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/p<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;>;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    const/4 v0, 0x5

    .line 4
    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    aput-object p1, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    aput-object p2, v0, v1

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    .line 15
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    const/4 v1, 0x3

    .line 20
    .line 21
    .line 22
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    aput-object v2, v0, v1

    .line 26
    const/4 v1, 0x4

    .line 27
    .line 28
    aput-object p8, v0, v1

    .line 29
    .line 30
    new-instance v1, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1;

    .line 31
    const/4 v11, 0x0

    .line 32
    move-object v2, v1

    .line 33
    move-object v3, p1

    .line 34
    move-object v4, p2

    .line 35
    move-object v5, p3

    .line 36
    .line 37
    move-object/from16 v6, p4

    .line 38
    .line 39
    move-object/from16 v7, p10

    .line 40
    .line 41
    move/from16 v8, p6

    .line 42
    .line 43
    move/from16 v9, p7

    .line 44
    .line 45
    move-object/from16 v10, p9

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v2 .. v11}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZFLandroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 49
    move-object v2, p0

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->d(Landroidx/compose/ui/Modifier;[Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, p0

    .line 56
    move-object v0, v2

    .line 57
    :goto_0
    return-object v0
.end method

.method private static final B(FFFFF)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/material/SliderKt;->y(FFF)F

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p3, p4, p0}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static final C(FFLj8/e;FF)Lj8/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;FF)",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, v0, p3, p4}, Landroidx/compose/material/SliderKt;->B(FFFFF)F

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Ljava/lang/Number;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 24
    move-result p2

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->B(FFFFF)F

    .line 28
    move-result p0

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p0}, Lj8/m;->b(FF)Lj8/e;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private static final D(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLe8/l;Lj8/e;I)Landroidx/compose/ui/Modifier;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p5}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-interface {p5}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Ljava/lang/Number;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lj8/m;->m(FFF)F

    .line 24
    move-result v7

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/material/SliderKt$sliderSemantics$1;

    .line 27
    move-object v2, v0

    .line 28
    move v3, p3

    .line 29
    move-object v4, p5

    .line 30
    move v5, p6

    .line 31
    move-object v6, p2

    .line 32
    move-object v8, p4

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v2 .. v8}, Landroidx/compose/material/SliderKt$sliderSemantics$1;-><init>(ZLj8/e;ILjava/util/List;FLe8/l;)V

    .line 36
    const/4 p2, 0x1

    .line 37
    const/4 p3, 0x0

    .line 38
    const/4 p4, 0x0

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p4, v0, p2, p3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p1, p5, p6}, Landroidx/compose/foundation/ProgressSemanticsKt;->b(Landroidx/compose/ui/Modifier;FLj8/e;I)Landroidx/compose/ui/Modifier;

    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method private static final E(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)Landroidx/compose/ui/Modifier;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "FZ",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;Z)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;

    .line 9
    move-object v1, v0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move v4, p3

    .line 13
    move v5, p4

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    move-object/from16 v7, p6

    .line 18
    .line 19
    move-object/from16 v8, p7

    .line 20
    .line 21
    move/from16 v9, p8

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v1 .. v9}, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    :goto_0
    new-instance v10, Landroidx/compose/material/SliderKt$sliderTapModifier$2;

    .line 32
    move-object v1, v10

    .line 33
    .line 34
    move/from16 v2, p8

    .line 35
    move-object v3, p1

    .line 36
    move-object v4, p2

    .line 37
    move v5, p3

    .line 38
    move v6, p4

    .line 39
    .line 40
    move-object/from16 v7, p7

    .line 41
    .line 42
    move-object/from16 v8, p5

    .line 43
    .line 44
    move-object/from16 v9, p6

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v1 .. v9}, Landroidx/compose/material/SliderKt$sliderTapModifier$2;-><init>(ZLandroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 48
    move-object v1, p0

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method private static final F(FLjava/util/List;FF)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;FF)F"
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Iterable;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    :goto_0
    move-object p1, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v1, v0

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Number;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p3, v1}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 37
    move-result v1

    .line 38
    sub-float/2addr v1, p0

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    move-object v3, v2

    .line 48
    .line 49
    check-cast v3, Ljava/lang/Number;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 53
    move-result v3

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p3, v3}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 57
    move-result v3

    .line 58
    sub-float/2addr v3, p0

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 62
    move-result v3

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 66
    move-result v4

    .line 67
    .line 68
    if-lez v4, :cond_3

    .line 69
    move-object v0, v2

    .line 70
    move v1, v3

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v2

    .line 75
    .line 76
    if-nez v2, :cond_2

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :goto_1
    check-cast p1, Ljava/lang/Float;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 85
    move-result p0

    .line 86
    .line 87
    .line 88
    invoke-static {p2, p3, p0}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 89
    move-result p0

    .line 90
    :cond_4
    return p0
.end method

.method private static final G(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    goto :goto_1

    .line 8
    .line 9
    :cond_0
    add-int/lit8 v0, p0, 0x2

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    :goto_0
    if-ge v2, v0, :cond_1

    .line 18
    int-to-float v3, v2

    .line 19
    .line 20
    add-int/lit8 v4, p0, 0x1

    .line 21
    int-to-float v4, v4

    .line 22
    div-float/2addr v3, v4

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object p0, v1

    .line 34
    :goto_1
    return-object p0
.end method

.method private static final a(Le8/l;Lj8/e;Lj8/e;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V
    .locals 15
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;F",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    move/from16 v10, p6

    .line 10
    .line 11
    .line 12
    const v0, -0x2c580438

    .line 13
    .line 14
    move-object/from16 v1, p5

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v11

    .line 19
    .line 20
    and-int/lit8 v0, v10, 0xe

    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x4

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {v11, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    move v0, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v1

    .line 34
    :goto_0
    or-int/2addr v0, v10

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v10

    .line 37
    .line 38
    :goto_1
    and-int/lit8 v3, v10, 0x70

    .line 39
    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 44
    move-result v3

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    const/16 v3, 0x20

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :cond_2
    const/16 v3, 0x10

    .line 52
    :goto_2
    or-int/2addr v0, v3

    .line 53
    .line 54
    :cond_3
    and-int/lit16 v3, v10, 0x380

    .line 55
    .line 56
    if-nez v3, :cond_5

    .line 57
    .line 58
    .line 59
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 61
    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    const/16 v3, 0x100

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_4
    const/16 v3, 0x80

    .line 68
    :goto_3
    or-int/2addr v0, v3

    .line 69
    .line 70
    :cond_5
    and-int/lit16 v3, v10, 0x1c00

    .line 71
    .line 72
    if-nez v3, :cond_7

    .line 73
    .line 74
    .line 75
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 76
    move-result v3

    .line 77
    .line 78
    if-eqz v3, :cond_6

    .line 79
    .line 80
    const/16 v3, 0x800

    .line 81
    goto :goto_4

    .line 82
    .line 83
    :cond_6
    const/16 v3, 0x400

    .line 84
    :goto_4
    or-int/2addr v0, v3

    .line 85
    .line 86
    .line 87
    :cond_7
    const v3, 0xe000

    .line 88
    and-int/2addr v3, v10

    .line 89
    .line 90
    move/from16 v12, p4

    .line 91
    .line 92
    if-nez v3, :cond_9

    .line 93
    .line 94
    .line 95
    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 96
    move-result v3

    .line 97
    .line 98
    if-eqz v3, :cond_8

    .line 99
    .line 100
    const/16 v3, 0x4000

    .line 101
    goto :goto_5

    .line 102
    .line 103
    :cond_8
    const/16 v3, 0x2000

    .line 104
    :goto_5
    or-int/2addr v0, v3

    .line 105
    .line 106
    .line 107
    :cond_9
    const v3, 0xb6db

    .line 108
    and-int/2addr v0, v3

    .line 109
    .line 110
    const/16 v3, 0x2492

    .line 111
    .line 112
    if-ne v0, v3, :cond_b

    .line 113
    .line 114
    .line 115
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->b()Z

    .line 116
    move-result v0

    .line 117
    .line 118
    if-nez v0, :cond_a

    .line 119
    goto :goto_6

    .line 120
    .line 121
    .line 122
    :cond_a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    .line 123
    goto :goto_8

    .line 124
    :cond_b
    :goto_6
    const/4 v0, 0x5

    .line 125
    .line 126
    new-array v3, v0, [Ljava/lang/Object;

    .line 127
    const/4 v13, 0x0

    .line 128
    .line 129
    aput-object v7, v3, v13

    .line 130
    const/4 v4, 0x1

    .line 131
    .line 132
    aput-object v6, v3, v4

    .line 133
    .line 134
    .line 135
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 136
    move-result-object v4

    .line 137
    .line 138
    aput-object v4, v3, v1

    .line 139
    const/4 v1, 0x3

    .line 140
    .line 141
    aput-object v9, v3, v1

    .line 142
    .line 143
    aput-object v8, v3, v2

    .line 144
    .line 145
    .line 146
    const v1, -0x21de6e89

    .line 147
    .line 148
    .line 149
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 150
    move v1, v13

    .line 151
    move v2, v1

    .line 152
    .line 153
    :goto_7
    if-ge v1, v0, :cond_c

    .line 154
    .line 155
    aget-object v4, v3, v1

    .line 156
    .line 157
    .line 158
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 159
    move-result v4

    .line 160
    or-int/2addr v2, v4

    .line 161
    .line 162
    add-int/lit8 v1, v1, 0x1

    .line 163
    goto :goto_7

    .line 164
    .line 165
    .line 166
    :cond_c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    if-nez v2, :cond_d

    .line 170
    .line 171
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 175
    move-result-object v1

    .line 176
    .line 177
    if-ne v0, v1, :cond_e

    .line 178
    .line 179
    :cond_d
    new-instance v14, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$1$1;

    .line 180
    move-object v0, v14

    .line 181
    .line 182
    move-object/from16 v1, p1

    .line 183
    move-object v2, p0

    .line 184
    .line 185
    move/from16 v3, p4

    .line 186
    .line 187
    move-object/from16 v4, p3

    .line 188
    .line 189
    move-object/from16 v5, p2

    .line 190
    .line 191
    .line 192
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$1$1;-><init>(Lj8/e;Le8/l;FLandroidx/compose/runtime/MutableState;Lj8/e;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 199
    .line 200
    check-cast v0, Le8/a;

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v11, v13}, Landroidx/compose/runtime/EffectsKt;->h(Le8/a;Landroidx/compose/runtime/Composer;I)V

    .line 204
    .line 205
    .line 206
    :goto_8
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 207
    move-result-object v11

    .line 208
    .line 209
    if-nez v11, :cond_f

    .line 210
    goto :goto_9

    .line 211
    .line 212
    :cond_f
    new-instance v13, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$2;

    .line 213
    move-object v0, v13

    .line 214
    move-object v1, p0

    .line 215
    .line 216
    move-object/from16 v2, p1

    .line 217
    .line 218
    move-object/from16 v3, p2

    .line 219
    .line 220
    move-object/from16 v4, p3

    .line 221
    .line 222
    move/from16 v5, p4

    .line 223
    .line 224
    move/from16 v6, p6

    .line 225
    .line 226
    .line 227
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$2;-><init>(Le8/l;Lj8/e;Lj8/e;Landroidx/compose/runtime/MutableState;FI)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v11, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 231
    :goto_9
    return-void
.end method

.method public static final b(Lj8/e;Le8/l;Landroidx/compose/ui/Modifier;ZLj8/e;ILe8/a;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V
    .locals 41
    .param p0    # Lj8/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lj8/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/material/SliderColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Le8/l<",
            "-",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;I",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v12, p0

    .line 3
    .line 4
    move-object/from16 v13, p1

    .line 5
    .line 6
    move/from16 v14, p9

    .line 7
    .line 8
    move/from16 v15, p10

    .line 9
    .line 10
    const-string/jumbo v0, "values"

    .line 11
    .line 12
    .line 13
    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "onValueChange"

    .line 16
    .line 17
    .line 18
    invoke-static {v13, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v0, -0x5cc177f3

    .line 22
    .line 23
    move-object/from16 v1, p8

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 27
    move-result-object v11

    .line 28
    .line 29
    and-int/lit8 v0, v15, 0x1

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    or-int/lit8 v0, v14, 0x6

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    and-int/lit8 v0, v14, 0xe

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    const/4 v0, 0x4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x2

    .line 48
    :goto_0
    or-int/2addr v0, v14

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v0, v14

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v3, v15, 0x2

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    or-int/lit8 v0, v0, 0x30

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_3
    and-int/lit8 v3, v14, 0x70

    .line 60
    .line 61
    if-nez v3, :cond_5

    .line 62
    .line 63
    .line 64
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    const/16 v3, 0x20

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_4
    const/16 v3, 0x10

    .line 73
    :goto_2
    or-int/2addr v0, v3

    .line 74
    .line 75
    :cond_5
    :goto_3
    and-int/lit8 v3, v15, 0x4

    .line 76
    .line 77
    if-eqz v3, :cond_7

    .line 78
    .line 79
    or-int/lit16 v0, v0, 0x180

    .line 80
    .line 81
    :cond_6
    move-object/from16 v4, p2

    .line 82
    goto :goto_5

    .line 83
    .line 84
    :cond_7
    and-int/lit16 v4, v14, 0x380

    .line 85
    .line 86
    if-nez v4, :cond_6

    .line 87
    .line 88
    move-object/from16 v4, p2

    .line 89
    .line 90
    .line 91
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 92
    move-result v5

    .line 93
    .line 94
    if-eqz v5, :cond_8

    .line 95
    .line 96
    const/16 v5, 0x100

    .line 97
    goto :goto_4

    .line 98
    .line 99
    :cond_8
    const/16 v5, 0x80

    .line 100
    :goto_4
    or-int/2addr v0, v5

    .line 101
    .line 102
    :goto_5
    and-int/lit8 v5, v15, 0x8

    .line 103
    .line 104
    if-eqz v5, :cond_a

    .line 105
    .line 106
    or-int/lit16 v0, v0, 0xc00

    .line 107
    .line 108
    :cond_9
    move/from16 v6, p3

    .line 109
    goto :goto_7

    .line 110
    .line 111
    :cond_a
    and-int/lit16 v6, v14, 0x1c00

    .line 112
    .line 113
    if-nez v6, :cond_9

    .line 114
    .line 115
    move/from16 v6, p3

    .line 116
    .line 117
    .line 118
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 119
    move-result v7

    .line 120
    .line 121
    if-eqz v7, :cond_b

    .line 122
    .line 123
    const/16 v7, 0x800

    .line 124
    goto :goto_6

    .line 125
    .line 126
    :cond_b
    const/16 v7, 0x400

    .line 127
    :goto_6
    or-int/2addr v0, v7

    .line 128
    .line 129
    .line 130
    :goto_7
    const v7, 0xe000

    .line 131
    and-int/2addr v7, v14

    .line 132
    .line 133
    if-nez v7, :cond_e

    .line 134
    .line 135
    and-int/lit8 v7, v15, 0x10

    .line 136
    .line 137
    if-nez v7, :cond_c

    .line 138
    .line 139
    move-object/from16 v7, p4

    .line 140
    .line 141
    .line 142
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 143
    move-result v8

    .line 144
    .line 145
    if-eqz v8, :cond_d

    .line 146
    .line 147
    const/16 v8, 0x4000

    .line 148
    goto :goto_8

    .line 149
    .line 150
    :cond_c
    move-object/from16 v7, p4

    .line 151
    .line 152
    :cond_d
    const/16 v8, 0x2000

    .line 153
    :goto_8
    or-int/2addr v0, v8

    .line 154
    goto :goto_9

    .line 155
    .line 156
    :cond_e
    move-object/from16 v7, p4

    .line 157
    .line 158
    :goto_9
    and-int/lit8 v8, v15, 0x20

    .line 159
    .line 160
    if-eqz v8, :cond_10

    .line 161
    .line 162
    const/high16 v9, 0x30000

    .line 163
    or-int/2addr v0, v9

    .line 164
    .line 165
    :cond_f
    move/from16 v9, p5

    .line 166
    goto :goto_b

    .line 167
    .line 168
    :cond_10
    const/high16 v9, 0x70000

    .line 169
    and-int/2addr v9, v14

    .line 170
    .line 171
    if-nez v9, :cond_f

    .line 172
    .line 173
    move/from16 v9, p5

    .line 174
    .line 175
    .line 176
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 177
    move-result v10

    .line 178
    .line 179
    if-eqz v10, :cond_11

    .line 180
    .line 181
    const/high16 v10, 0x20000

    .line 182
    goto :goto_a

    .line 183
    .line 184
    :cond_11
    const/high16 v10, 0x10000

    .line 185
    :goto_a
    or-int/2addr v0, v10

    .line 186
    .line 187
    :goto_b
    and-int/lit8 v10, v15, 0x40

    .line 188
    .line 189
    if-eqz v10, :cond_12

    .line 190
    .line 191
    const/high16 v16, 0x180000

    .line 192
    .line 193
    or-int v0, v0, v16

    .line 194
    .line 195
    move-object/from16 v1, p6

    .line 196
    goto :goto_d

    .line 197
    .line 198
    :cond_12
    const/high16 v16, 0x380000

    .line 199
    .line 200
    and-int v16, v14, v16

    .line 201
    .line 202
    move-object/from16 v1, p6

    .line 203
    .line 204
    if-nez v16, :cond_14

    .line 205
    .line 206
    .line 207
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 208
    move-result v16

    .line 209
    .line 210
    if-eqz v16, :cond_13

    .line 211
    .line 212
    const/high16 v16, 0x100000

    .line 213
    goto :goto_c

    .line 214
    .line 215
    :cond_13
    const/high16 v16, 0x80000

    .line 216
    .line 217
    :goto_c
    or-int v0, v0, v16

    .line 218
    .line 219
    :cond_14
    :goto_d
    const/high16 v16, 0x1c00000

    .line 220
    .line 221
    and-int v16, v14, v16

    .line 222
    .line 223
    if-nez v16, :cond_17

    .line 224
    .line 225
    and-int/lit16 v2, v15, 0x80

    .line 226
    .line 227
    if-nez v2, :cond_15

    .line 228
    .line 229
    move-object/from16 v2, p7

    .line 230
    .line 231
    .line 232
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 233
    move-result v16

    .line 234
    .line 235
    if-eqz v16, :cond_16

    .line 236
    .line 237
    const/high16 v16, 0x800000

    .line 238
    goto :goto_e

    .line 239
    .line 240
    :cond_15
    move-object/from16 v2, p7

    .line 241
    .line 242
    :cond_16
    const/high16 v16, 0x400000

    .line 243
    .line 244
    :goto_e
    or-int v0, v0, v16

    .line 245
    goto :goto_f

    .line 246
    .line 247
    :cond_17
    move-object/from16 v2, p7

    .line 248
    .line 249
    .line 250
    :goto_f
    const v16, 0x16db6db

    .line 251
    .line 252
    and-int v1, v0, v16

    .line 253
    .line 254
    .line 255
    const v2, 0x492492

    .line 256
    .line 257
    if-ne v1, v2, :cond_19

    .line 258
    .line 259
    .line 260
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->b()Z

    .line 261
    move-result v1

    .line 262
    .line 263
    if-nez v1, :cond_18

    .line 264
    goto :goto_10

    .line 265
    .line 266
    .line 267
    :cond_18
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    .line 268
    .line 269
    move-object/from16 v8, p7

    .line 270
    move-object v3, v4

    .line 271
    move v4, v6

    .line 272
    move-object v5, v7

    .line 273
    move v6, v9

    .line 274
    move-object v14, v11

    .line 275
    .line 276
    move-object/from16 v7, p6

    .line 277
    .line 278
    goto/16 :goto_16

    .line 279
    .line 280
    .line 281
    :cond_19
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->J()V

    .line 282
    .line 283
    and-int/lit8 v1, v14, 0x1

    .line 284
    .line 285
    .line 286
    const v16, -0xe001

    .line 287
    const/4 v2, 0x1

    .line 288
    .line 289
    if-eqz v1, :cond_1d

    .line 290
    .line 291
    .line 292
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->h()Z

    .line 293
    move-result v1

    .line 294
    .line 295
    if-eqz v1, :cond_1a

    .line 296
    goto :goto_11

    .line 297
    .line 298
    .line 299
    :cond_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    .line 300
    .line 301
    and-int/lit8 v1, v15, 0x10

    .line 302
    .line 303
    if-eqz v1, :cond_1b

    .line 304
    .line 305
    and-int v0, v0, v16

    .line 306
    .line 307
    :cond_1b
    and-int/lit16 v1, v15, 0x80

    .line 308
    .line 309
    if-eqz v1, :cond_1c

    .line 310
    .line 311
    .line 312
    const v1, -0x1c00001

    .line 313
    and-int/2addr v0, v1

    .line 314
    .line 315
    :cond_1c
    move-object/from16 v20, p6

    .line 316
    .line 317
    move-object/from16 v21, p7

    .line 318
    move v3, v0

    .line 319
    .line 320
    move-object/from16 v16, v4

    .line 321
    .line 322
    move/from16 v17, v6

    .line 323
    .line 324
    move-object/from16 v18, v7

    .line 325
    .line 326
    move/from16 v19, v9

    .line 327
    .line 328
    goto/16 :goto_15

    .line 329
    .line 330
    :cond_1d
    :goto_11
    if-eqz v3, :cond_1e

    .line 331
    .line 332
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 333
    goto :goto_12

    .line 334
    :cond_1e
    move-object v1, v4

    .line 335
    .line 336
    :goto_12
    if-eqz v5, :cond_1f

    .line 337
    move v6, v2

    .line 338
    .line 339
    :cond_1f
    and-int/lit8 v3, v15, 0x10

    .line 340
    .line 341
    if-eqz v3, :cond_20

    .line 342
    const/4 v3, 0x0

    .line 343
    .line 344
    const/high16 v4, 0x3f800000    # 1.0f

    .line 345
    .line 346
    .line 347
    invoke-static {v3, v4}, Lj8/m;->b(FF)Lj8/e;

    .line 348
    move-result-object v3

    .line 349
    .line 350
    and-int v0, v0, v16

    .line 351
    move-object v7, v3

    .line 352
    .line 353
    :cond_20
    if-eqz v8, :cond_21

    .line 354
    const/4 v3, 0x0

    .line 355
    move v9, v3

    .line 356
    .line 357
    :cond_21
    if-eqz v10, :cond_22

    .line 358
    const/4 v3, 0x0

    .line 359
    goto :goto_13

    .line 360
    .line 361
    :cond_22
    move-object/from16 v3, p6

    .line 362
    .line 363
    :goto_13
    and-int/lit16 v4, v15, 0x80

    .line 364
    .line 365
    if-eqz v4, :cond_23

    .line 366
    .line 367
    sget-object v16, Landroidx/compose/material/SliderDefaults;->INSTANCE:Landroidx/compose/material/SliderDefaults;

    .line 368
    .line 369
    const-wide/16 v17, 0x0

    .line 370
    .line 371
    const-wide/16 v19, 0x0

    .line 372
    .line 373
    const-wide/16 v21, 0x0

    .line 374
    .line 375
    const-wide/16 v23, 0x0

    .line 376
    .line 377
    const-wide/16 v25, 0x0

    .line 378
    .line 379
    const-wide/16 v27, 0x0

    .line 380
    .line 381
    const-wide/16 v29, 0x0

    .line 382
    .line 383
    const-wide/16 v31, 0x0

    .line 384
    .line 385
    const-wide/16 v33, 0x0

    .line 386
    .line 387
    const-wide/16 v35, 0x0

    .line 388
    .line 389
    const/16 v38, 0x0

    .line 390
    .line 391
    const/16 v39, 0x6

    .line 392
    .line 393
    const/16 v40, 0x3ff

    .line 394
    .line 395
    move-object/from16 v37, v11

    .line 396
    .line 397
    .line 398
    invoke-virtual/range {v16 .. v40}, Landroidx/compose/material/SliderDefaults;->a(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SliderColors;

    .line 399
    move-result-object v4

    .line 400
    .line 401
    .line 402
    const v5, -0x1c00001

    .line 403
    and-int/2addr v0, v5

    .line 404
    .line 405
    move-object/from16 v16, v1

    .line 406
    .line 407
    move-object/from16 v20, v3

    .line 408
    .line 409
    move-object/from16 v21, v4

    .line 410
    .line 411
    :goto_14
    move/from16 v17, v6

    .line 412
    .line 413
    move-object/from16 v18, v7

    .line 414
    .line 415
    move/from16 v19, v9

    .line 416
    move v3, v0

    .line 417
    goto :goto_15

    .line 418
    .line 419
    :cond_23
    move-object/from16 v21, p7

    .line 420
    .line 421
    move-object/from16 v16, v1

    .line 422
    .line 423
    move-object/from16 v20, v3

    .line 424
    goto :goto_14

    .line 425
    .line 426
    .line 427
    :goto_15
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->A()V

    .line 428
    .line 429
    .line 430
    const v0, -0x1d58f75c

    .line 431
    .line 432
    .line 433
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 434
    .line 435
    .line 436
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 437
    move-result-object v1

    .line 438
    .line 439
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 443
    move-result-object v5

    .line 444
    .line 445
    if-ne v1, v5, :cond_24

    .line 446
    .line 447
    .line 448
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 449
    move-result-object v1

    .line 450
    .line 451
    .line 452
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    :cond_24
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 456
    move-object v5, v1

    .line 457
    .line 458
    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 459
    .line 460
    .line 461
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 462
    .line 463
    .line 464
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 465
    move-result-object v0

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 469
    move-result-object v1

    .line 470
    .line 471
    if-ne v0, v1, :cond_25

    .line 472
    .line 473
    .line 474
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 475
    move-result-object v0

    .line 476
    .line 477
    .line 478
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    :cond_25
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 482
    move-object v6, v0

    .line 483
    .line 484
    check-cast v6, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 485
    .line 486
    if-ltz v19, :cond_29

    .line 487
    .line 488
    shr-int/lit8 v0, v3, 0x3

    .line 489
    .line 490
    and-int/lit8 v0, v0, 0xe

    .line 491
    .line 492
    .line 493
    invoke-static {v13, v11, v0}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 494
    move-result-object v7

    .line 495
    .line 496
    .line 497
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 498
    move-result-object v0

    .line 499
    .line 500
    .line 501
    const v1, 0x44faf204

    .line 502
    .line 503
    .line 504
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 505
    .line 506
    .line 507
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 508
    move-result v0

    .line 509
    .line 510
    .line 511
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 512
    move-result-object v1

    .line 513
    .line 514
    if-nez v0, :cond_26

    .line 515
    .line 516
    .line 517
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 518
    move-result-object v0

    .line 519
    .line 520
    if-ne v1, v0, :cond_27

    .line 521
    .line 522
    .line 523
    :cond_26
    invoke-static/range {v19 .. v19}, Landroidx/compose/material/SliderKt;->G(I)Ljava/util/List;

    .line 524
    move-result-object v1

    .line 525
    .line 526
    .line 527
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    :cond_27
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 531
    move-object v8, v1

    .line 532
    .line 533
    check-cast v8, Ljava/util/List;

    .line 534
    .line 535
    .line 536
    invoke-static/range {v16 .. v16}, Landroidx/compose/material/TouchTargetKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 537
    move-result-object v22

    .line 538
    .line 539
    sget v0, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .line 540
    const/4 v1, 0x4

    .line 541
    int-to-float v1, v1

    .line 542
    mul-float/2addr v1, v0

    .line 543
    .line 544
    .line 545
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 546
    move-result v23

    .line 547
    const/4 v1, 0x2

    .line 548
    int-to-float v1, v1

    .line 549
    mul-float/2addr v0, v1

    .line 550
    .line 551
    .line 552
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 553
    move-result v24

    .line 554
    .line 555
    const/16 v25, 0x0

    .line 556
    .line 557
    const/16 v26, 0x0

    .line 558
    .line 559
    const/16 v27, 0xc

    .line 560
    .line 561
    const/16 v28, 0x0

    .line 562
    .line 563
    .line 564
    invoke-static/range {v22 .. v28}, Landroidx/compose/foundation/layout/SizeKt;->w(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 565
    move-result-object v22

    .line 566
    .line 567
    const/16 v23, 0x0

    .line 568
    .line 569
    const/16 v24, 0x0

    .line 570
    .line 571
    new-instance v10, Landroidx/compose/material/SliderKt$RangeSlider$2;

    .line 572
    move-object v0, v10

    .line 573
    .line 574
    move-object/from16 v1, v18

    .line 575
    move v9, v2

    .line 576
    .line 577
    move-object/from16 v2, p0

    .line 578
    move-object v4, v7

    .line 579
    .line 580
    move/from16 v7, v17

    .line 581
    move v12, v9

    .line 582
    .line 583
    move/from16 v9, v19

    .line 584
    move-object v13, v10

    .line 585
    .line 586
    move-object/from16 v10, v21

    .line 587
    move-object v14, v11

    .line 588
    .line 589
    move-object/from16 v11, v20

    .line 590
    .line 591
    .line 592
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/SliderKt$RangeSlider$2;-><init>(Lj8/e;Lj8/e;ILandroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/util/List;ILandroidx/compose/material/SliderColors;Le8/a;)V

    .line 593
    .line 594
    .line 595
    const v0, 0x26e5bb63

    .line 596
    .line 597
    .line 598
    invoke-static {v14, v0, v12, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 599
    move-result-object v0

    .line 600
    .line 601
    const/16 v1, 0xc00

    .line 602
    const/4 v2, 0x6

    .line 603
    .line 604
    move-object/from16 p2, v22

    .line 605
    .line 606
    move-object/from16 p3, v23

    .line 607
    .line 608
    move/from16 p4, v24

    .line 609
    .line 610
    move-object/from16 p5, v0

    .line 611
    .line 612
    move-object/from16 p6, v14

    .line 613
    .line 614
    move/from16 p7, v1

    .line 615
    .line 616
    move/from16 p8, v2

    .line 617
    .line 618
    .line 619
    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLe8/q;Landroidx/compose/runtime/Composer;II)V

    .line 620
    .line 621
    move-object/from16 v3, v16

    .line 622
    .line 623
    move/from16 v4, v17

    .line 624
    .line 625
    move-object/from16 v5, v18

    .line 626
    .line 627
    move/from16 v6, v19

    .line 628
    .line 629
    move-object/from16 v7, v20

    .line 630
    .line 631
    move-object/from16 v8, v21

    .line 632
    .line 633
    .line 634
    :goto_16
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 635
    move-result-object v11

    .line 636
    .line 637
    if-nez v11, :cond_28

    .line 638
    goto :goto_17

    .line 639
    .line 640
    :cond_28
    new-instance v12, Landroidx/compose/material/SliderKt$RangeSlider$3;

    .line 641
    move-object v0, v12

    .line 642
    .line 643
    move-object/from16 v1, p0

    .line 644
    .line 645
    move-object/from16 v2, p1

    .line 646
    .line 647
    move/from16 v9, p9

    .line 648
    .line 649
    move/from16 v10, p10

    .line 650
    .line 651
    .line 652
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/SliderKt$RangeSlider$3;-><init>(Lj8/e;Le8/l;Landroidx/compose/ui/Modifier;ZLj8/e;ILe8/a;Landroidx/compose/material/SliderColors;II)V

    .line 653
    .line 654
    .line 655
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 656
    :goto_17
    return-void

    .line 657
    .line 658
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 659
    .line 660
    const-string/jumbo v1, "steps should be >= 0"

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 664
    move-result-object v1

    .line 665
    .line 666
    .line 667
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 668
    throw v0
.end method

.method private static final c(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZFF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, -0x109f9c61

    .line 4
    .line 5
    move-object/from16 v1, p11

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/material/Strings$Companion;->g()I

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x6

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v0, v3}, Landroidx/compose/material/Strings_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 20
    move-result-object v11

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/material/Strings$Companion;->f()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0, v3}, Landroidx/compose/material/Strings_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 28
    move-result-object v12

    .line 29
    .line 30
    sget-object v1, Landroidx/compose/material/SliderKt;->DefaultSliderConstraints:Landroidx/compose/ui/Modifier;

    .line 31
    .line 32
    move-object/from16 v13, p8

    .line 33
    .line 34
    .line 35
    invoke-interface {v13, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    const v2, 0x2bb5b5d7

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 43
    .line 44
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4, v0, v4}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    const v5, -0x4ee9b9da

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 63
    move-result-object v5

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 73
    move-result-object v6

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 77
    move-result-object v6

    .line 78
    .line 79
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 83
    move-result-object v7

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 87
    move-result-object v7

    .line 88
    .line 89
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 90
    .line 91
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 95
    move-result-object v9

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 103
    move-result-object v10

    .line 104
    .line 105
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 106
    .line 107
    if-nez v10, :cond_0

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 111
    .line 112
    .line 113
    :cond_0
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 117
    move-result v10

    .line 118
    .line 119
    if-eqz v10, :cond_1

    .line 120
    .line 121
    .line 122
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 123
    goto :goto_0

    .line 124
    .line 125
    .line 126
    :cond_1
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 127
    .line 128
    .line 129
    :goto_0
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 133
    move-result-object v9

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 137
    move-result-object v10

    .line 138
    .line 139
    .line 140
    invoke-static {v9, v3, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    .line 147
    invoke-static {v9, v5, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 151
    move-result-object v3

    .line 152
    .line 153
    .line 154
    invoke-static {v9, v6, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 158
    move-result-object v3

    .line 159
    .line 160
    .line 161
    invoke-static {v9, v7, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 165
    .line 166
    .line 167
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 168
    move-result-object v3

    .line 169
    .line 170
    .line 171
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 172
    move-result-object v3

    .line 173
    .line 174
    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v4

    .line 177
    .line 178
    .line 179
    invoke-interface {v1, v3, v0, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    const v1, 0x7ab4aae9

    .line 183
    .line 184
    .line 185
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 186
    .line 187
    .line 188
    const v1, -0x7f65a980

    .line 189
    .line 190
    .line 191
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 192
    .line 193
    sget-object v14, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 194
    .line 195
    .line 196
    const v1, 0x79d8e259

    .line 197
    .line 198
    .line 199
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    .line 206
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 207
    move-result-object v1

    .line 208
    .line 209
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 210
    .line 211
    sget v3, Landroidx/compose/material/SliderKt;->TrackHeight:F

    .line 212
    .line 213
    .line 214
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 215
    move-result v8

    .line 216
    .line 217
    sget v3, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .line 218
    .line 219
    .line 220
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 221
    move-result v7

    .line 222
    .line 223
    move/from16 v15, p5

    .line 224
    .line 225
    .line 226
    invoke-interface {v1, v15}, Landroidx/compose/ui/unit/Density;->P(F)F

    .line 227
    move-result v1

    .line 228
    .line 229
    sget-object v4, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 230
    const/4 v4, 0x2

    .line 231
    int-to-float v4, v4

    .line 232
    mul-float/2addr v3, v4

    .line 233
    .line 234
    .line 235
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 236
    move-result v16

    .line 237
    .line 238
    mul-float v3, v1, p1

    .line 239
    .line 240
    .line 241
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 242
    move-result v17

    .line 243
    .line 244
    mul-float v1, v1, p2

    .line 245
    .line 246
    .line 247
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 248
    move-result v18

    .line 249
    .line 250
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->h()Landroidx/compose/ui/Alignment;

    .line 254
    move-result-object v1

    .line 255
    .line 256
    .line 257
    invoke-interface {v14, v10, v1}, Landroidx/compose/foundation/layout/BoxScope;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    .line 258
    move-result-object v1

    .line 259
    const/4 v2, 0x0

    .line 260
    const/4 v3, 0x0

    .line 261
    const/4 v9, 0x1

    .line 262
    .line 263
    .line 264
    invoke-static {v1, v2, v9, v3}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 265
    move-result-object v1

    .line 266
    .line 267
    shr-int/lit8 v6, p12, 0x9

    .line 268
    .line 269
    and-int/lit8 v2, v6, 0x70

    .line 270
    .line 271
    const/high16 v3, 0x40000

    .line 272
    or-int/2addr v2, v3

    .line 273
    .line 274
    shl-int/lit8 v3, p12, 0x6

    .line 275
    .line 276
    and-int/lit16 v4, v3, 0x380

    .line 277
    or-int/2addr v2, v4

    .line 278
    .line 279
    and-int/lit16 v4, v3, 0x1c00

    .line 280
    or-int/2addr v2, v4

    .line 281
    .line 282
    .line 283
    const v19, 0xe000

    .line 284
    .line 285
    and-int v3, v3, v19

    .line 286
    .line 287
    or-int v20, v2, v3

    .line 288
    .line 289
    move-object/from16 v2, p4

    .line 290
    .line 291
    move/from16 v3, p0

    .line 292
    .line 293
    move/from16 v4, p1

    .line 294
    .line 295
    move/from16 v5, p2

    .line 296
    move v13, v6

    .line 297
    .line 298
    move-object/from16 v6, p3

    .line 299
    move v15, v9

    .line 300
    move-object v9, v0

    .line 301
    .line 302
    move-object/from16 p11, v12

    .line 303
    move-object v12, v10

    .line 304
    .line 305
    move/from16 v10, v20

    .line 306
    .line 307
    .line 308
    invoke-static/range {v1 .. v10}, Landroidx/compose/material/SliderKt;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V

    .line 309
    .line 310
    .line 311
    const v10, 0x44faf204

    .line 312
    .line 313
    .line 314
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 315
    .line 316
    .line 317
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 318
    move-result v1

    .line 319
    .line 320
    .line 321
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 322
    move-result-object v2

    .line 323
    .line 324
    if-nez v1, :cond_2

    .line 325
    .line 326
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 330
    move-result-object v1

    .line 331
    .line 332
    if-ne v2, v1, :cond_3

    .line 333
    .line 334
    :cond_2
    new-instance v2, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$2$1;

    .line 335
    .line 336
    .line 337
    invoke-direct {v2, v11}, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$2$1;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    :cond_3
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 344
    .line 345
    check-cast v2, Le8/l;

    .line 346
    .line 347
    .line 348
    invoke-static {v12, v15, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLe8/l;)Landroidx/compose/ui/Modifier;

    .line 349
    move-result-object v1

    .line 350
    .line 351
    move-object/from16 v11, p6

    .line 352
    .line 353
    .line 354
    invoke-static {v1, v15, v11}, Landroidx/compose/foundation/FocusableKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 355
    move-result-object v1

    .line 356
    .line 357
    move-object/from16 v9, p9

    .line 358
    .line 359
    .line 360
    invoke-interface {v1, v9}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 361
    move-result-object v2

    .line 362
    .line 363
    and-int/lit16 v1, v13, 0x1c00

    .line 364
    .line 365
    .line 366
    const v13, 0x180006

    .line 367
    or-int/2addr v1, v13

    .line 368
    .line 369
    and-int v19, p12, v19

    .line 370
    .line 371
    or-int v1, v1, v19

    .line 372
    .line 373
    shl-int/lit8 v3, p12, 0xf

    .line 374
    .line 375
    const/high16 v4, 0x70000

    .line 376
    .line 377
    and-int v20, v3, v4

    .line 378
    .line 379
    or-int v21, v1, v20

    .line 380
    move-object v1, v14

    .line 381
    .line 382
    move/from16 v3, v17

    .line 383
    .line 384
    move-object/from16 v4, p6

    .line 385
    .line 386
    move-object/from16 v5, p4

    .line 387
    .line 388
    move/from16 v6, p0

    .line 389
    .line 390
    move/from16 v7, v16

    .line 391
    move-object v8, v0

    .line 392
    .line 393
    move/from16 v9, v21

    .line 394
    .line 395
    .line 396
    invoke-static/range {v1 .. v9}, Landroidx/compose/material/SliderKt;->f(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V

    .line 397
    .line 398
    .line 399
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 400
    .line 401
    move-object/from16 v1, p11

    .line 402
    .line 403
    .line 404
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 405
    move-result v2

    .line 406
    .line 407
    .line 408
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 409
    move-result-object v3

    .line 410
    .line 411
    if-nez v2, :cond_4

    .line 412
    .line 413
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 417
    move-result-object v2

    .line 418
    .line 419
    if-ne v3, v2, :cond_5

    .line 420
    .line 421
    :cond_4
    new-instance v3, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$3$1;

    .line 422
    .line 423
    .line 424
    invoke-direct {v3, v1}, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$3$1;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    :cond_5
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 431
    .line 432
    check-cast v3, Le8/l;

    .line 433
    .line 434
    .line 435
    invoke-static {v12, v15, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLe8/l;)Landroidx/compose/ui/Modifier;

    .line 436
    move-result-object v1

    .line 437
    .line 438
    move-object/from16 v10, p7

    .line 439
    .line 440
    .line 441
    invoke-static {v1, v15, v10}, Landroidx/compose/foundation/FocusableKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 442
    move-result-object v1

    .line 443
    .line 444
    move-object/from16 v12, p10

    .line 445
    .line 446
    .line 447
    invoke-interface {v1, v12}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 448
    move-result-object v2

    .line 449
    .line 450
    shr-int/lit8 v1, p12, 0xc

    .line 451
    .line 452
    and-int/lit16 v1, v1, 0x1c00

    .line 453
    or-int/2addr v1, v13

    .line 454
    .line 455
    or-int v1, v1, v19

    .line 456
    .line 457
    or-int v9, v1, v20

    .line 458
    move-object v1, v14

    .line 459
    .line 460
    move/from16 v3, v18

    .line 461
    .line 462
    move-object/from16 v4, p7

    .line 463
    .line 464
    move-object/from16 v5, p4

    .line 465
    .line 466
    move/from16 v6, p0

    .line 467
    .line 468
    move/from16 v7, v16

    .line 469
    move-object v8, v0

    .line 470
    .line 471
    .line 472
    invoke-static/range {v1 .. v9}, Landroidx/compose/material/SliderKt;->f(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V

    .line 473
    .line 474
    .line 475
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 476
    .line 477
    .line 478
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 479
    .line 480
    .line 481
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 482
    .line 483
    .line 484
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 485
    .line 486
    .line 487
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 488
    .line 489
    .line 490
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 491
    .line 492
    .line 493
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 494
    move-result-object v14

    .line 495
    .line 496
    if-nez v14, :cond_6

    .line 497
    goto :goto_1

    .line 498
    .line 499
    :cond_6
    new-instance v15, Landroidx/compose/material/SliderKt$RangeSliderImpl$2;

    .line 500
    move-object v0, v15

    .line 501
    .line 502
    move/from16 v1, p0

    .line 503
    .line 504
    move/from16 v2, p1

    .line 505
    .line 506
    move/from16 v3, p2

    .line 507
    .line 508
    move-object/from16 v4, p3

    .line 509
    .line 510
    move-object/from16 v5, p4

    .line 511
    .line 512
    move/from16 v6, p5

    .line 513
    .line 514
    move-object/from16 v7, p6

    .line 515
    .line 516
    move-object/from16 v8, p7

    .line 517
    .line 518
    move-object/from16 v9, p8

    .line 519
    .line 520
    move-object/from16 v10, p9

    .line 521
    .line 522
    move-object/from16 v11, p10

    .line 523
    .line 524
    move/from16 v12, p12

    .line 525
    .line 526
    move/from16 v13, p13

    .line 527
    .line 528
    .line 529
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/SliderKt$RangeSliderImpl$2;-><init>(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;II)V

    .line 530
    .line 531
    .line 532
    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 533
    :goto_1
    return-void
.end method

.method public static final d(FLe8/l;Landroidx/compose/ui/Modifier;ZLj8/e;ILe8/a;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V
    .locals 37
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lj8/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/material/SliderColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;I",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/material/SliderColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v2, p1

    .line 3
    .line 4
    move/from16 v10, p10

    .line 5
    .line 6
    move/from16 v11, p11

    .line 7
    .line 8
    const-string v0, "onValueChange"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, -0x74f6dbdc

    .line 15
    .line 16
    move-object/from16 v1, p9

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    and-int/lit8 v1, v11, 0x1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    or-int/lit8 v1, v10, 0x6

    .line 27
    move v4, v1

    .line 28
    .line 29
    move/from16 v1, p0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    and-int/lit8 v1, v10, 0xe

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    move/from16 v1, p0

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 40
    move-result v4

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    const/4 v4, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v4, 0x2

    .line 46
    :goto_0
    or-int/2addr v4, v10

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_2
    move/from16 v1, p0

    .line 50
    move v4, v10

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v5, v11, 0x2

    .line 53
    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    or-int/lit8 v4, v4, 0x30

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_3
    and-int/lit8 v5, v10, 0x70

    .line 60
    .line 61
    if-nez v5, :cond_5

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 65
    move-result v5

    .line 66
    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    const/16 v5, 0x20

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_4
    const/16 v5, 0x10

    .line 73
    :goto_2
    or-int/2addr v4, v5

    .line 74
    .line 75
    :cond_5
    :goto_3
    and-int/lit8 v5, v11, 0x4

    .line 76
    .line 77
    if-eqz v5, :cond_7

    .line 78
    .line 79
    or-int/lit16 v4, v4, 0x180

    .line 80
    .line 81
    :cond_6
    move-object/from16 v6, p2

    .line 82
    goto :goto_5

    .line 83
    .line 84
    :cond_7
    and-int/lit16 v6, v10, 0x380

    .line 85
    .line 86
    if-nez v6, :cond_6

    .line 87
    .line 88
    move-object/from16 v6, p2

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 92
    move-result v7

    .line 93
    .line 94
    if-eqz v7, :cond_8

    .line 95
    .line 96
    const/16 v7, 0x100

    .line 97
    goto :goto_4

    .line 98
    .line 99
    :cond_8
    const/16 v7, 0x80

    .line 100
    :goto_4
    or-int/2addr v4, v7

    .line 101
    .line 102
    :goto_5
    and-int/lit8 v7, v11, 0x8

    .line 103
    .line 104
    if-eqz v7, :cond_a

    .line 105
    .line 106
    or-int/lit16 v4, v4, 0xc00

    .line 107
    .line 108
    :cond_9
    move/from16 v8, p3

    .line 109
    goto :goto_7

    .line 110
    .line 111
    :cond_a
    and-int/lit16 v8, v10, 0x1c00

    .line 112
    .line 113
    if-nez v8, :cond_9

    .line 114
    .line 115
    move/from16 v8, p3

    .line 116
    .line 117
    .line 118
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 119
    move-result v9

    .line 120
    .line 121
    if-eqz v9, :cond_b

    .line 122
    .line 123
    const/16 v9, 0x800

    .line 124
    goto :goto_6

    .line 125
    .line 126
    :cond_b
    const/16 v9, 0x400

    .line 127
    :goto_6
    or-int/2addr v4, v9

    .line 128
    .line 129
    .line 130
    :goto_7
    const v9, 0xe000

    .line 131
    and-int/2addr v9, v10

    .line 132
    .line 133
    if-nez v9, :cond_e

    .line 134
    .line 135
    and-int/lit8 v9, v11, 0x10

    .line 136
    .line 137
    if-nez v9, :cond_c

    .line 138
    .line 139
    move-object/from16 v9, p4

    .line 140
    .line 141
    .line 142
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 143
    move-result v12

    .line 144
    .line 145
    if-eqz v12, :cond_d

    .line 146
    .line 147
    const/16 v12, 0x4000

    .line 148
    goto :goto_8

    .line 149
    .line 150
    :cond_c
    move-object/from16 v9, p4

    .line 151
    .line 152
    :cond_d
    const/16 v12, 0x2000

    .line 153
    :goto_8
    or-int/2addr v4, v12

    .line 154
    goto :goto_9

    .line 155
    .line 156
    :cond_e
    move-object/from16 v9, p4

    .line 157
    .line 158
    :goto_9
    and-int/lit8 v12, v11, 0x20

    .line 159
    .line 160
    if-eqz v12, :cond_10

    .line 161
    .line 162
    const/high16 v13, 0x30000

    .line 163
    or-int/2addr v4, v13

    .line 164
    .line 165
    :cond_f
    move/from16 v13, p5

    .line 166
    goto :goto_b

    .line 167
    .line 168
    :cond_10
    const/high16 v13, 0x70000

    .line 169
    and-int/2addr v13, v10

    .line 170
    .line 171
    if-nez v13, :cond_f

    .line 172
    .line 173
    move/from16 v13, p5

    .line 174
    .line 175
    .line 176
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 177
    move-result v14

    .line 178
    .line 179
    if-eqz v14, :cond_11

    .line 180
    .line 181
    const/high16 v14, 0x20000

    .line 182
    goto :goto_a

    .line 183
    .line 184
    :cond_11
    const/high16 v14, 0x10000

    .line 185
    :goto_a
    or-int/2addr v4, v14

    .line 186
    .line 187
    :goto_b
    and-int/lit8 v14, v11, 0x40

    .line 188
    .line 189
    if-eqz v14, :cond_13

    .line 190
    .line 191
    const/high16 v15, 0x180000

    .line 192
    or-int/2addr v4, v15

    .line 193
    .line 194
    :cond_12
    move-object/from16 v15, p6

    .line 195
    goto :goto_d

    .line 196
    .line 197
    :cond_13
    const/high16 v15, 0x380000

    .line 198
    and-int/2addr v15, v10

    .line 199
    .line 200
    if-nez v15, :cond_12

    .line 201
    .line 202
    move-object/from16 v15, p6

    .line 203
    .line 204
    .line 205
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 206
    move-result v16

    .line 207
    .line 208
    if-eqz v16, :cond_14

    .line 209
    .line 210
    const/high16 v16, 0x100000

    .line 211
    goto :goto_c

    .line 212
    .line 213
    :cond_14
    const/high16 v16, 0x80000

    .line 214
    .line 215
    :goto_c
    or-int v4, v4, v16

    .line 216
    .line 217
    :goto_d
    and-int/lit16 v3, v11, 0x80

    .line 218
    .line 219
    if-eqz v3, :cond_15

    .line 220
    .line 221
    const/high16 v16, 0xc00000

    .line 222
    .line 223
    or-int v4, v4, v16

    .line 224
    .line 225
    move-object/from16 v1, p7

    .line 226
    goto :goto_f

    .line 227
    .line 228
    :cond_15
    const/high16 v16, 0x1c00000

    .line 229
    .line 230
    and-int v16, v10, v16

    .line 231
    .line 232
    move-object/from16 v1, p7

    .line 233
    .line 234
    if-nez v16, :cond_17

    .line 235
    .line 236
    .line 237
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 238
    move-result v16

    .line 239
    .line 240
    if-eqz v16, :cond_16

    .line 241
    .line 242
    const/high16 v16, 0x800000

    .line 243
    goto :goto_e

    .line 244
    .line 245
    :cond_16
    const/high16 v16, 0x400000

    .line 246
    .line 247
    :goto_e
    or-int v4, v4, v16

    .line 248
    .line 249
    :cond_17
    :goto_f
    const/high16 v16, 0xe000000

    .line 250
    .line 251
    and-int v16, v10, v16

    .line 252
    .line 253
    if-nez v16, :cond_1a

    .line 254
    .line 255
    and-int/lit16 v1, v11, 0x100

    .line 256
    .line 257
    if-nez v1, :cond_18

    .line 258
    .line 259
    move-object/from16 v1, p8

    .line 260
    .line 261
    .line 262
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 263
    move-result v16

    .line 264
    .line 265
    if-eqz v16, :cond_19

    .line 266
    .line 267
    const/high16 v16, 0x4000000

    .line 268
    goto :goto_10

    .line 269
    .line 270
    :cond_18
    move-object/from16 v1, p8

    .line 271
    .line 272
    :cond_19
    const/high16 v16, 0x2000000

    .line 273
    .line 274
    :goto_10
    or-int v4, v4, v16

    .line 275
    goto :goto_11

    .line 276
    .line 277
    :cond_1a
    move-object/from16 v1, p8

    .line 278
    .line 279
    .line 280
    :goto_11
    const v16, 0xb6db6db

    .line 281
    .line 282
    and-int v1, v4, v16

    .line 283
    .line 284
    .line 285
    const v6, 0x2492492

    .line 286
    .line 287
    if-ne v1, v6, :cond_1c

    .line 288
    .line 289
    .line 290
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 291
    move-result v1

    .line 292
    .line 293
    if-nez v1, :cond_1b

    .line 294
    goto :goto_12

    .line 295
    .line 296
    .line 297
    :cond_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 298
    .line 299
    move-object/from16 v3, p2

    .line 300
    move v4, v8

    .line 301
    move-object v5, v9

    .line 302
    move v6, v13

    .line 303
    move-object v7, v15

    .line 304
    .line 305
    move-object/from16 v8, p7

    .line 306
    .line 307
    move-object/from16 v9, p8

    .line 308
    .line 309
    goto/16 :goto_1b

    .line 310
    .line 311
    .line 312
    :cond_1c
    :goto_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 313
    .line 314
    and-int/lit8 v1, v10, 0x1

    .line 315
    .line 316
    .line 317
    const v6, -0xe000001

    .line 318
    .line 319
    .line 320
    const v16, -0xe001

    .line 321
    const/4 v15, 0x1

    .line 322
    .line 323
    if-eqz v1, :cond_20

    .line 324
    .line 325
    .line 326
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 327
    move-result v1

    .line 328
    .line 329
    if-eqz v1, :cond_1d

    .line 330
    goto :goto_14

    .line 331
    .line 332
    .line 333
    :cond_1d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 334
    .line 335
    and-int/lit8 v1, v11, 0x10

    .line 336
    .line 337
    if-eqz v1, :cond_1e

    .line 338
    .line 339
    and-int v4, v4, v16

    .line 340
    .line 341
    :cond_1e
    and-int/lit16 v1, v11, 0x100

    .line 342
    .line 343
    if-eqz v1, :cond_1f

    .line 344
    .line 345
    and-int v1, v4, v6

    .line 346
    .line 347
    move-object/from16 v3, p7

    .line 348
    .line 349
    move-object/from16 v4, p8

    .line 350
    move v14, v1

    .line 351
    move-object v5, v9

    .line 352
    move v7, v13

    .line 353
    .line 354
    move-object/from16 v1, p2

    .line 355
    .line 356
    move-object/from16 v9, p6

    .line 357
    .line 358
    goto/16 :goto_1a

    .line 359
    .line 360
    :cond_1f
    move-object/from16 v1, p2

    .line 361
    .line 362
    move-object/from16 v3, p7

    .line 363
    move v14, v4

    .line 364
    move-object v5, v9

    .line 365
    move v7, v13

    .line 366
    .line 367
    move-object/from16 v9, p6

    .line 368
    .line 369
    :goto_13
    move-object/from16 v4, p8

    .line 370
    .line 371
    goto/16 :goto_1a

    .line 372
    .line 373
    :cond_20
    :goto_14
    if-eqz v5, :cond_21

    .line 374
    .line 375
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 376
    goto :goto_15

    .line 377
    .line 378
    :cond_21
    move-object/from16 v1, p2

    .line 379
    .line 380
    :goto_15
    if-eqz v7, :cond_22

    .line 381
    move v8, v15

    .line 382
    .line 383
    :cond_22
    and-int/lit8 v5, v11, 0x10

    .line 384
    .line 385
    if-eqz v5, :cond_23

    .line 386
    const/4 v5, 0x0

    .line 387
    .line 388
    const/high16 v7, 0x3f800000    # 1.0f

    .line 389
    .line 390
    .line 391
    invoke-static {v5, v7}, Lj8/m;->b(FF)Lj8/e;

    .line 392
    move-result-object v5

    .line 393
    .line 394
    and-int v4, v4, v16

    .line 395
    goto :goto_16

    .line 396
    :cond_23
    move-object v5, v9

    .line 397
    .line 398
    :goto_16
    if-eqz v12, :cond_24

    .line 399
    const/4 v7, 0x0

    .line 400
    goto :goto_17

    .line 401
    :cond_24
    move v7, v13

    .line 402
    .line 403
    :goto_17
    if-eqz v14, :cond_25

    .line 404
    const/4 v9, 0x0

    .line 405
    goto :goto_18

    .line 406
    .line 407
    :cond_25
    move-object/from16 v9, p6

    .line 408
    .line 409
    :goto_18
    if-eqz v3, :cond_27

    .line 410
    .line 411
    .line 412
    const v3, -0x1d58f75c

    .line 413
    .line 414
    .line 415
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 416
    .line 417
    .line 418
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 419
    move-result-object v3

    .line 420
    .line 421
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 425
    move-result-object v12

    .line 426
    .line 427
    if-ne v3, v12, :cond_26

    .line 428
    .line 429
    .line 430
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 431
    move-result-object v3

    .line 432
    .line 433
    .line 434
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    :cond_26
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 438
    .line 439
    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 440
    goto :goto_19

    .line 441
    .line 442
    :cond_27
    move-object/from16 v3, p7

    .line 443
    .line 444
    :goto_19
    and-int/lit16 v12, v11, 0x100

    .line 445
    .line 446
    if-eqz v12, :cond_28

    .line 447
    .line 448
    sget-object v12, Landroidx/compose/material/SliderDefaults;->INSTANCE:Landroidx/compose/material/SliderDefaults;

    .line 449
    .line 450
    const-wide/16 v13, 0x0

    .line 451
    .line 452
    const-wide/16 v16, 0x0

    .line 453
    .line 454
    move-wide/from16 v15, v16

    .line 455
    .line 456
    const-wide/16 v17, 0x0

    .line 457
    .line 458
    const-wide/16 v19, 0x0

    .line 459
    .line 460
    const-wide/16 v21, 0x0

    .line 461
    .line 462
    const-wide/16 v23, 0x0

    .line 463
    .line 464
    const-wide/16 v25, 0x0

    .line 465
    .line 466
    const-wide/16 v27, 0x0

    .line 467
    .line 468
    const-wide/16 v29, 0x0

    .line 469
    .line 470
    const-wide/16 v31, 0x0

    .line 471
    .line 472
    const/16 v34, 0x0

    .line 473
    .line 474
    const/16 v35, 0x6

    .line 475
    .line 476
    const/16 v36, 0x3ff

    .line 477
    .line 478
    move-object/from16 v33, v0

    .line 479
    .line 480
    .line 481
    invoke-virtual/range {v12 .. v36}, Landroidx/compose/material/SliderDefaults;->a(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SliderColors;

    .line 482
    move-result-object v12

    .line 483
    and-int/2addr v4, v6

    .line 484
    move v14, v4

    .line 485
    move-object v4, v12

    .line 486
    goto :goto_1a

    .line 487
    :cond_28
    move v14, v4

    .line 488
    goto :goto_13

    .line 489
    .line 490
    .line 491
    :goto_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 492
    .line 493
    if-ltz v7, :cond_2c

    .line 494
    .line 495
    shr-int/lit8 v6, v14, 0x3

    .line 496
    .line 497
    and-int/lit8 v6, v6, 0xe

    .line 498
    .line 499
    .line 500
    invoke-static {v2, v0, v6}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 501
    move-result-object v20

    .line 502
    .line 503
    .line 504
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 505
    move-result-object v6

    .line 506
    .line 507
    .line 508
    const v12, 0x44faf204

    .line 509
    .line 510
    .line 511
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 512
    .line 513
    .line 514
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 515
    move-result v6

    .line 516
    .line 517
    .line 518
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 519
    move-result-object v12

    .line 520
    .line 521
    if-nez v6, :cond_29

    .line 522
    .line 523
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 527
    move-result-object v6

    .line 528
    .line 529
    if-ne v12, v6, :cond_2a

    .line 530
    .line 531
    .line 532
    :cond_29
    invoke-static {v7}, Landroidx/compose/material/SliderKt;->G(I)Ljava/util/List;

    .line 533
    move-result-object v12

    .line 534
    .line 535
    .line 536
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    :cond_2a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 540
    .line 541
    move-object/from16 v18, v12

    .line 542
    .line 543
    check-cast v18, Ljava/util/List;

    .line 544
    .line 545
    .line 546
    invoke-static {v1}, Landroidx/compose/material/TouchTargetKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 547
    move-result-object v6

    .line 548
    .line 549
    sget v12, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .line 550
    const/4 v13, 0x2

    .line 551
    int-to-float v13, v13

    .line 552
    .line 553
    mul-float v15, v12, v13

    .line 554
    .line 555
    .line 556
    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 557
    move-result v15

    .line 558
    mul-float/2addr v12, v13

    .line 559
    .line 560
    .line 561
    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 562
    move-result v12

    .line 563
    const/4 v13, 0x0

    .line 564
    .line 565
    const/16 v16, 0x0

    .line 566
    .line 567
    const/16 v17, 0xc

    .line 568
    .line 569
    const/16 v19, 0x0

    .line 570
    .line 571
    move-object/from16 p2, v6

    .line 572
    .line 573
    move/from16 p3, v15

    .line 574
    .line 575
    move/from16 p4, v12

    .line 576
    .line 577
    move/from16 p5, v13

    .line 578
    .line 579
    move/from16 p6, v16

    .line 580
    .line 581
    move/from16 p7, v17

    .line 582
    .line 583
    move-object/from16 p8, v19

    .line 584
    .line 585
    .line 586
    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/SizeKt;->w(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 587
    move-result-object v6

    .line 588
    .line 589
    move-object/from16 p2, v6

    .line 590
    .line 591
    move/from16 p3, p0

    .line 592
    .line 593
    move-object/from16 p4, v18

    .line 594
    .line 595
    move/from16 p5, v8

    .line 596
    .line 597
    move-object/from16 p6, p1

    .line 598
    .line 599
    move-object/from16 p7, v5

    .line 600
    .line 601
    move/from16 p8, v7

    .line 602
    .line 603
    .line 604
    invoke-static/range {p2 .. p8}, Landroidx/compose/material/SliderKt;->D(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLe8/l;Lj8/e;I)Landroidx/compose/ui/Modifier;

    .line 605
    move-result-object v6

    .line 606
    .line 607
    .line 608
    invoke-static {v6, v8, v3}, Landroidx/compose/foundation/FocusableKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 609
    move-result-object v6

    .line 610
    .line 611
    const/16 v22, 0x0

    .line 612
    .line 613
    const/16 v23, 0x0

    .line 614
    .line 615
    new-instance v15, Landroidx/compose/material/SliderKt$Slider$3;

    .line 616
    move-object v12, v15

    .line 617
    move-object v13, v5

    .line 618
    .line 619
    move-object/from16 p9, v1

    .line 620
    move-object v1, v15

    .line 621
    .line 622
    move/from16 v15, p0

    .line 623
    .line 624
    move-object/from16 v16, v3

    .line 625
    .line 626
    move/from16 v17, v8

    .line 627
    .line 628
    move-object/from16 v19, v4

    .line 629
    .line 630
    move-object/from16 v21, v9

    .line 631
    .line 632
    .line 633
    invoke-direct/range {v12 .. v21}, Landroidx/compose/material/SliderKt$Slider$3;-><init>(Lj8/e;IFLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/util/List;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/State;Le8/a;)V

    .line 634
    .line 635
    .line 636
    const v12, 0x7c485b8e

    .line 637
    const/4 v13, 0x1

    .line 638
    .line 639
    .line 640
    invoke-static {v0, v12, v13, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 641
    move-result-object v1

    .line 642
    .line 643
    const/16 v12, 0xc00

    .line 644
    const/4 v13, 0x6

    .line 645
    .line 646
    move-object/from16 p2, v6

    .line 647
    .line 648
    move-object/from16 p3, v22

    .line 649
    .line 650
    move/from16 p4, v23

    .line 651
    .line 652
    move-object/from16 p5, v1

    .line 653
    .line 654
    move-object/from16 p6, v0

    .line 655
    .line 656
    move/from16 p7, v12

    .line 657
    .line 658
    move/from16 p8, v13

    .line 659
    .line 660
    .line 661
    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLe8/q;Landroidx/compose/runtime/Composer;II)V

    .line 662
    move v6, v7

    .line 663
    move-object v7, v9

    .line 664
    move-object v9, v4

    .line 665
    move v4, v8

    .line 666
    move-object v8, v3

    .line 667
    .line 668
    move-object/from16 v3, p9

    .line 669
    .line 670
    .line 671
    :goto_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 672
    move-result-object v12

    .line 673
    .line 674
    if-nez v12, :cond_2b

    .line 675
    goto :goto_1c

    .line 676
    .line 677
    :cond_2b
    new-instance v13, Landroidx/compose/material/SliderKt$Slider$4;

    .line 678
    move-object v0, v13

    .line 679
    .line 680
    move/from16 v1, p0

    .line 681
    .line 682
    move-object/from16 v2, p1

    .line 683
    .line 684
    move/from16 v10, p10

    .line 685
    .line 686
    move/from16 v11, p11

    .line 687
    .line 688
    .line 689
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/SliderKt$Slider$4;-><init>(FLe8/l;Landroidx/compose/ui/Modifier;ZLj8/e;ILe8/a;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;II)V

    .line 690
    .line 691
    .line 692
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 693
    :goto_1c
    return-void

    .line 694
    .line 695
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 696
    .line 697
    const-string/jumbo v1, "steps should be >= 0"

    .line 698
    .line 699
    .line 700
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 701
    move-result-object v1

    .line 702
    .line 703
    .line 704
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 705
    throw v0
.end method

.method private static final e(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 20
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x641dece1

    .line 4
    .line 5
    move-object/from16 v1, p7

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/material/SliderKt;->DefaultSliderConstraints:Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    move-object/from16 v11, p6

    .line 14
    .line 15
    .line 16
    invoke-interface {v11, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    const v2, 0x2bb5b5d7

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 24
    .line 25
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3, v0, v3}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    const v4, -0x4ee9b9da

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 58
    move-result-object v5

    .line 59
    .line 60
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 68
    move-result-object v6

    .line 69
    .line 70
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 71
    .line 72
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 76
    move-result-object v8

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 84
    move-result-object v9

    .line 85
    .line 86
    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    .line 87
    .line 88
    if-nez v9, :cond_0

    .line 89
    .line 90
    .line 91
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 92
    .line 93
    .line 94
    :cond_0
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 95
    .line 96
    .line 97
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 98
    move-result v9

    .line 99
    .line 100
    if-eqz v9, :cond_1

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 108
    .line 109
    .line 110
    :goto_0
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 114
    move-result-object v8

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 118
    move-result-object v9

    .line 119
    .line 120
    .line 121
    invoke-static {v8, v2, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    .line 128
    invoke-static {v8, v4, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    .line 135
    invoke-static {v8, v5, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 139
    move-result-object v2

    .line 140
    .line 141
    .line 142
    invoke-static {v8, v6, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 146
    .line 147
    .line 148
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 149
    move-result-object v2

    .line 150
    .line 151
    .line 152
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 153
    move-result-object v2

    .line 154
    .line 155
    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v3

    .line 158
    .line 159
    .line 160
    invoke-interface {v1, v2, v0, v3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    const v1, 0x7ab4aae9

    .line 164
    .line 165
    .line 166
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 167
    .line 168
    .line 169
    const v1, -0x7f65a980

    .line 170
    .line 171
    .line 172
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 173
    .line 174
    sget-object v12, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 175
    .line 176
    .line 177
    const v1, 0xdc99b1b

    .line 178
    .line 179
    .line 180
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 181
    .line 182
    .line 183
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 184
    move-result-object v1

    .line 185
    .line 186
    .line 187
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 188
    move-result-object v1

    .line 189
    .line 190
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 191
    .line 192
    sget v2, Landroidx/compose/material/SliderKt;->TrackHeight:F

    .line 193
    .line 194
    .line 195
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 196
    move-result v8

    .line 197
    .line 198
    sget v2, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .line 199
    .line 200
    .line 201
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 202
    move-result v7

    .line 203
    .line 204
    move/from16 v13, p4

    .line 205
    .line 206
    .line 207
    invoke-interface {v1, v13}, Landroidx/compose/ui/unit/Density;->P(F)F

    .line 208
    move-result v1

    .line 209
    const/4 v3, 0x2

    .line 210
    int-to-float v3, v3

    .line 211
    mul-float/2addr v2, v3

    .line 212
    .line 213
    .line 214
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 215
    move-result v14

    .line 216
    .line 217
    mul-float v1, v1, p1

    .line 218
    .line 219
    .line 220
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 221
    move-result v15

    .line 222
    .line 223
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 224
    const/4 v1, 0x1

    .line 225
    const/4 v2, 0x0

    .line 226
    const/4 v3, 0x0

    .line 227
    .line 228
    .line 229
    invoke-static {v10, v3, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 230
    move-result-object v1

    .line 231
    const/4 v4, 0x0

    .line 232
    .line 233
    shr-int/lit8 v9, p8, 0x6

    .line 234
    .line 235
    and-int/lit8 v2, v9, 0x70

    .line 236
    .line 237
    .line 238
    const v3, 0x40c06

    .line 239
    or-int/2addr v2, v3

    .line 240
    .line 241
    shl-int/lit8 v3, p8, 0x6

    .line 242
    .line 243
    and-int/lit16 v3, v3, 0x380

    .line 244
    or-int/2addr v2, v3

    .line 245
    .line 246
    shl-int/lit8 v3, p8, 0x9

    .line 247
    .line 248
    .line 249
    const v16, 0xe000

    .line 250
    .line 251
    and-int v3, v3, v16

    .line 252
    .line 253
    or-int v17, v2, v3

    .line 254
    .line 255
    move-object/from16 v2, p3

    .line 256
    .line 257
    move/from16 v3, p0

    .line 258
    .line 259
    move/from16 v5, p1

    .line 260
    .line 261
    move-object/from16 v6, p2

    .line 262
    .line 263
    move/from16 v18, v9

    .line 264
    move-object v9, v0

    .line 265
    .line 266
    move-object/from16 v19, v10

    .line 267
    .line 268
    move/from16 v10, v17

    .line 269
    .line 270
    .line 271
    invoke-static/range {v1 .. v10}, Landroidx/compose/material/SliderKt;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V

    .line 272
    .line 273
    move/from16 v1, v18

    .line 274
    .line 275
    and-int/lit16 v1, v1, 0x1c00

    .line 276
    .line 277
    .line 278
    const v2, 0x180036

    .line 279
    or-int/2addr v1, v2

    .line 280
    .line 281
    shl-int/lit8 v2, p8, 0x3

    .line 282
    .line 283
    and-int v2, v2, v16

    .line 284
    or-int/2addr v1, v2

    .line 285
    .line 286
    shl-int/lit8 v2, p8, 0xf

    .line 287
    .line 288
    const/high16 v3, 0x70000

    .line 289
    and-int/2addr v2, v3

    .line 290
    .line 291
    or-int v9, v1, v2

    .line 292
    move-object v1, v12

    .line 293
    .line 294
    move-object/from16 v2, v19

    .line 295
    move v3, v15

    .line 296
    .line 297
    move-object/from16 v4, p5

    .line 298
    .line 299
    move-object/from16 v5, p3

    .line 300
    .line 301
    move/from16 v6, p0

    .line 302
    move v7, v14

    .line 303
    move-object v8, v0

    .line 304
    .line 305
    .line 306
    invoke-static/range {v1 .. v9}, Landroidx/compose/material/SliderKt;->f(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V

    .line 307
    .line 308
    .line 309
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 310
    .line 311
    .line 312
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 313
    .line 314
    .line 315
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 316
    .line 317
    .line 318
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 319
    .line 320
    .line 321
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 322
    .line 323
    .line 324
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 325
    .line 326
    .line 327
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 328
    move-result-object v9

    .line 329
    .line 330
    if-nez v9, :cond_2

    .line 331
    goto :goto_1

    .line 332
    .line 333
    :cond_2
    new-instance v10, Landroidx/compose/material/SliderKt$SliderImpl$2;

    .line 334
    move-object v0, v10

    .line 335
    .line 336
    move/from16 v1, p0

    .line 337
    .line 338
    move/from16 v2, p1

    .line 339
    .line 340
    move-object/from16 v3, p2

    .line 341
    .line 342
    move-object/from16 v4, p3

    .line 343
    .line 344
    move/from16 v5, p4

    .line 345
    .line 346
    move-object/from16 v6, p5

    .line 347
    .line 348
    move-object/from16 v7, p6

    .line 349
    .line 350
    move/from16 v8, p8

    .line 351
    .line 352
    .line 353
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/SliderKt$SliderImpl$2;-><init>(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;I)V

    .line 354
    .line 355
    .line 356
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 357
    :goto_1
    return-void
.end method

.method private static final f(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V
    .locals 28
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    move-object/from16 v4, p3

    .line 7
    .line 8
    move-object/from16 v5, p4

    .line 9
    .line 10
    move/from16 v6, p5

    .line 11
    .line 12
    move/from16 v7, p6

    .line 13
    .line 14
    move/from16 v8, p8

    .line 15
    .line 16
    .line 17
    const v0, 0x19909aaa

    .line 18
    .line 19
    move-object/from16 v3, p7

    .line 20
    .line 21
    .line 22
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    and-int/lit8 v3, v8, 0xe

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v3, 0x2

    .line 37
    :goto_0
    or-int/2addr v3, v8

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v3, v8

    .line 40
    .line 41
    :goto_1
    and-int/lit8 v9, v8, 0x70

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 47
    move-result v9

    .line 48
    .line 49
    if-eqz v9, :cond_2

    .line 50
    .line 51
    const/16 v9, 0x20

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_2
    const/16 v9, 0x10

    .line 55
    :goto_2
    or-int/2addr v3, v9

    .line 56
    .line 57
    :cond_3
    and-int/lit16 v9, v8, 0x380

    .line 58
    .line 59
    move/from16 v14, p2

    .line 60
    .line 61
    if-nez v9, :cond_5

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 65
    move-result v9

    .line 66
    .line 67
    if-eqz v9, :cond_4

    .line 68
    .line 69
    const/16 v9, 0x100

    .line 70
    goto :goto_3

    .line 71
    .line 72
    :cond_4
    const/16 v9, 0x80

    .line 73
    :goto_3
    or-int/2addr v3, v9

    .line 74
    .line 75
    :cond_5
    and-int/lit16 v9, v8, 0x1c00

    .line 76
    .line 77
    if-nez v9, :cond_7

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 81
    move-result v9

    .line 82
    .line 83
    if-eqz v9, :cond_6

    .line 84
    .line 85
    const/16 v9, 0x800

    .line 86
    goto :goto_4

    .line 87
    .line 88
    :cond_6
    const/16 v9, 0x400

    .line 89
    :goto_4
    or-int/2addr v3, v9

    .line 90
    .line 91
    .line 92
    :cond_7
    const v9, 0xe000

    .line 93
    and-int/2addr v9, v8

    .line 94
    .line 95
    if-nez v9, :cond_9

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 99
    move-result v9

    .line 100
    .line 101
    if-eqz v9, :cond_8

    .line 102
    .line 103
    const/16 v9, 0x4000

    .line 104
    goto :goto_5

    .line 105
    .line 106
    :cond_8
    const/16 v9, 0x2000

    .line 107
    :goto_5
    or-int/2addr v3, v9

    .line 108
    .line 109
    :cond_9
    const/high16 v9, 0x70000

    .line 110
    and-int/2addr v9, v8

    .line 111
    .line 112
    if-nez v9, :cond_b

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 116
    move-result v9

    .line 117
    .line 118
    if-eqz v9, :cond_a

    .line 119
    .line 120
    const/high16 v9, 0x20000

    .line 121
    goto :goto_6

    .line 122
    .line 123
    :cond_a
    const/high16 v9, 0x10000

    .line 124
    :goto_6
    or-int/2addr v3, v9

    .line 125
    .line 126
    :cond_b
    const/high16 v9, 0x380000

    .line 127
    and-int/2addr v9, v8

    .line 128
    .line 129
    if-nez v9, :cond_d

    .line 130
    .line 131
    .line 132
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 133
    move-result v9

    .line 134
    .line 135
    if-eqz v9, :cond_c

    .line 136
    .line 137
    const/high16 v9, 0x100000

    .line 138
    goto :goto_7

    .line 139
    .line 140
    :cond_c
    const/high16 v9, 0x80000

    .line 141
    :goto_7
    or-int/2addr v3, v9

    .line 142
    .line 143
    .line 144
    :cond_d
    const v9, 0x2db6db

    .line 145
    and-int/2addr v9, v3

    .line 146
    .line 147
    .line 148
    const v10, 0x92492

    .line 149
    .line 150
    if-ne v9, v10, :cond_f

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 154
    move-result v9

    .line 155
    .line 156
    if-nez v9, :cond_e

    .line 157
    goto :goto_8

    .line 158
    .line 159
    .line 160
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 161
    .line 162
    goto/16 :goto_c

    .line 163
    .line 164
    :cond_f
    :goto_8
    sget-object v16, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 165
    .line 166
    const/16 v18, 0x0

    .line 167
    .line 168
    const/16 v19, 0x0

    .line 169
    .line 170
    const/16 v20, 0x0

    .line 171
    .line 172
    const/16 v21, 0xe

    .line 173
    .line 174
    const/16 v22, 0x0

    .line 175
    .line 176
    move/from16 v17, p2

    .line 177
    .line 178
    .line 179
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 180
    move-result-object v9

    .line 181
    .line 182
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->h()Landroidx/compose/ui/Alignment;

    .line 186
    move-result-object v11

    .line 187
    .line 188
    .line 189
    invoke-interface {v1, v9, v11}, Landroidx/compose/foundation/layout/BoxScope;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    .line 190
    move-result-object v9

    .line 191
    .line 192
    .line 193
    const v11, 0x2bb5b5d7

    .line 194
    .line 195
    .line 196
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 200
    move-result-object v10

    .line 201
    const/4 v13, 0x0

    .line 202
    .line 203
    .line 204
    invoke-static {v10, v13, v0, v13}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 205
    move-result-object v10

    .line 206
    .line 207
    .line 208
    const v11, -0x4ee9b9da

    .line 209
    .line 210
    .line 211
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 212
    .line 213
    .line 214
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 215
    move-result-object v11

    .line 216
    .line 217
    .line 218
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 219
    move-result-object v11

    .line 220
    .line 221
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 222
    .line 223
    .line 224
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 225
    move-result-object v12

    .line 226
    .line 227
    .line 228
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 229
    move-result-object v12

    .line 230
    .line 231
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 232
    .line 233
    .line 234
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 235
    move-result-object v15

    .line 236
    .line 237
    .line 238
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 239
    move-result-object v15

    .line 240
    .line 241
    check-cast v15, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 242
    .line 243
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 244
    .line 245
    .line 246
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 247
    move-result-object v13

    .line 248
    .line 249
    .line 250
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 251
    move-result-object v9

    .line 252
    .line 253
    .line 254
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 255
    move-result-object v1

    .line 256
    .line 257
    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    .line 258
    .line 259
    if-nez v1, :cond_10

    .line 260
    .line 261
    .line 262
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 263
    .line 264
    .line 265
    :cond_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 266
    .line 267
    .line 268
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 269
    move-result v1

    .line 270
    .line 271
    if-eqz v1, :cond_11

    .line 272
    .line 273
    .line 274
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 275
    goto :goto_9

    .line 276
    .line 277
    .line 278
    :cond_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 279
    .line 280
    .line 281
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 282
    .line 283
    .line 284
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 285
    move-result-object v1

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 289
    move-result-object v13

    .line 290
    .line 291
    .line 292
    invoke-static {v1, v10, v13}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 296
    move-result-object v10

    .line 297
    .line 298
    .line 299
    invoke-static {v1, v11, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 303
    move-result-object v10

    .line 304
    .line 305
    .line 306
    invoke-static {v1, v12, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 310
    move-result-object v10

    .line 311
    .line 312
    .line 313
    invoke-static {v1, v15, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 314
    .line 315
    .line 316
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 317
    .line 318
    .line 319
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 320
    move-result-object v1

    .line 321
    .line 322
    .line 323
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 324
    move-result-object v1

    .line 325
    const/4 v13, 0x0

    .line 326
    .line 327
    .line 328
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    move-result-object v10

    .line 330
    .line 331
    .line 332
    invoke-interface {v9, v1, v0, v10}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    const v1, 0x7ab4aae9

    .line 336
    .line 337
    .line 338
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 339
    .line 340
    .line 341
    const v1, -0x7f65a980

    .line 342
    .line 343
    .line 344
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 345
    .line 346
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 347
    .line 348
    .line 349
    const v1, -0x2306c2d0

    .line 350
    .line 351
    .line 352
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 353
    .line 354
    .line 355
    const v1, -0x1d58f75c

    .line 356
    .line 357
    .line 358
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 359
    .line 360
    .line 361
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 362
    move-result-object v1

    .line 363
    .line 364
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 368
    move-result-object v10

    .line 369
    .line 370
    if-ne v1, v10, :cond_12

    .line 371
    .line 372
    .line 373
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->d()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 374
    move-result-object v1

    .line 375
    .line 376
    .line 377
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 381
    .line 382
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 383
    .line 384
    shr-int/lit8 v16, v3, 0x9

    .line 385
    .line 386
    and-int/lit8 v10, v16, 0xe

    .line 387
    .line 388
    .line 389
    const v11, 0x1e7b2b64

    .line 390
    .line 391
    .line 392
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 393
    .line 394
    .line 395
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 396
    move-result v11

    .line 397
    .line 398
    .line 399
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 400
    move-result v12

    .line 401
    or-int/2addr v11, v12

    .line 402
    .line 403
    .line 404
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 405
    move-result-object v12

    .line 406
    const/4 v15, 0x0

    .line 407
    .line 408
    if-nez v11, :cond_13

    .line 409
    .line 410
    .line 411
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 412
    move-result-object v9

    .line 413
    .line 414
    if-ne v12, v9, :cond_14

    .line 415
    .line 416
    :cond_13
    new-instance v12, Landroidx/compose/material/SliderKt$SliderThumb$1$1$1;

    .line 417
    .line 418
    .line 419
    invoke-direct {v12, v4, v1, v15}, Landroidx/compose/material/SliderKt$SliderThumb$1$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/d;)V

    .line 420
    .line 421
    .line 422
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 426
    .line 427
    check-cast v12, Le8/p;

    .line 428
    .line 429
    .line 430
    invoke-static {v4, v12, v0, v10}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 431
    .line 432
    .line 433
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 434
    move-result v1

    .line 435
    .line 436
    xor-int/lit8 v1, v1, 0x1

    .line 437
    .line 438
    if-eqz v1, :cond_15

    .line 439
    .line 440
    sget v1, Landroidx/compose/material/SliderKt;->ThumbPressedElevation:F

    .line 441
    goto :goto_a

    .line 442
    .line 443
    :cond_15
    sget v1, Landroidx/compose/material/SliderKt;->ThumbDefaultElevation:F

    .line 444
    .line 445
    .line 446
    :goto_a
    invoke-static {v2, v7, v7}, Landroidx/compose/foundation/layout/SizeKt;->A(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 447
    move-result-object v11

    .line 448
    const/4 v9, 0x0

    .line 449
    .line 450
    sget v10, Landroidx/compose/material/SliderKt;->ThumbRippleRadius:F

    .line 451
    .line 452
    const-wide/16 v17, 0x0

    .line 453
    .line 454
    const/16 v19, 0x36

    .line 455
    .line 456
    const/16 v20, 0x4

    .line 457
    .line 458
    move-object/from16 v23, v11

    .line 459
    .line 460
    move-wide/from16 v11, v17

    .line 461
    move-object v13, v0

    .line 462
    .line 463
    move/from16 v14, v19

    .line 464
    .line 465
    move/from16 v17, v1

    .line 466
    move-object v2, v15

    .line 467
    const/4 v1, 0x2

    .line 468
    .line 469
    move/from16 v15, v20

    .line 470
    .line 471
    .line 472
    invoke-static/range {v9 .. v15}, Landroidx/compose/material/ripple/RippleKt;->e(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 473
    move-result-object v9

    .line 474
    .line 475
    move-object/from16 v10, v23

    .line 476
    .line 477
    .line 478
    invoke-static {v10, v4, v9}, Landroidx/compose/foundation/IndicationKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    .line 479
    move-result-object v9

    .line 480
    const/4 v10, 0x0

    .line 481
    .line 482
    .line 483
    invoke-static {v9, v4, v10, v1, v2}, Landroidx/compose/foundation/HoverableKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 484
    move-result-object v18

    .line 485
    .line 486
    if-eqz v6, :cond_16

    .line 487
    .line 488
    move/from16 v19, v17

    .line 489
    goto :goto_b

    .line 490
    :cond_16
    int-to-float v1, v10

    .line 491
    .line 492
    .line 493
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 494
    move-result v1

    .line 495
    .line 496
    move/from16 v19, v1

    .line 497
    .line 498
    .line 499
    :goto_b
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->d()Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 500
    move-result-object v20

    .line 501
    .line 502
    const/16 v21, 0x0

    .line 503
    .line 504
    const-wide/16 v22, 0x0

    .line 505
    .line 506
    const-wide/16 v24, 0x0

    .line 507
    .line 508
    const/16 v26, 0x18

    .line 509
    .line 510
    const/16 v27, 0x0

    .line 511
    .line 512
    .line 513
    invoke-static/range {v18 .. v27}, Landroidx/compose/ui/draw/ShadowKt;->b(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 514
    move-result-object v1

    .line 515
    .line 516
    shr-int/lit8 v2, v3, 0xf

    .line 517
    .line 518
    and-int/lit8 v2, v2, 0xe

    .line 519
    .line 520
    and-int/lit8 v3, v16, 0x70

    .line 521
    or-int/2addr v2, v3

    .line 522
    .line 523
    .line 524
    invoke-interface {v5, v6, v0, v2}, Landroidx/compose/material/SliderColors;->c(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 525
    move-result-object v2

    .line 526
    .line 527
    .line 528
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 529
    move-result-object v2

    .line 530
    .line 531
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 535
    move-result-wide v2

    .line 536
    .line 537
    .line 538
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->d()Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 539
    move-result-object v9

    .line 540
    .line 541
    .line 542
    invoke-static {v1, v2, v3, v9}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 543
    move-result-object v1

    .line 544
    .line 545
    .line 546
    invoke-static {v1, v0, v10}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 547
    .line 548
    .line 549
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 550
    .line 551
    .line 552
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 553
    .line 554
    .line 555
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 556
    .line 557
    .line 558
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 559
    .line 560
    .line 561
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 562
    .line 563
    .line 564
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 565
    .line 566
    .line 567
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 568
    move-result-object v9

    .line 569
    .line 570
    if-nez v9, :cond_17

    .line 571
    goto :goto_d

    .line 572
    .line 573
    :cond_17
    new-instance v10, Landroidx/compose/material/SliderKt$SliderThumb$2;

    .line 574
    move-object v0, v10

    .line 575
    .line 576
    move-object/from16 v1, p0

    .line 577
    .line 578
    move-object/from16 v2, p1

    .line 579
    .line 580
    move/from16 v3, p2

    .line 581
    .line 582
    move-object/from16 v4, p3

    .line 583
    .line 584
    move-object/from16 v5, p4

    .line 585
    .line 586
    move/from16 v6, p5

    .line 587
    .line 588
    move/from16 v7, p6

    .line 589
    .line 590
    move/from16 v8, p8

    .line 591
    .line 592
    .line 593
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/SliderKt$SliderThumb$2;-><init>(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFI)V

    .line 594
    .line 595
    .line 596
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 597
    :goto_d
    return-void
.end method

.method private static final g(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V
    .locals 15
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/SliderColors;",
            "ZFF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;FF",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v2, p1

    .line 3
    .line 4
    move/from16 v3, p2

    .line 5
    .line 6
    .line 7
    const v0, 0x6d4348a2

    .line 8
    .line 9
    move-object/from16 v1, p8

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    shr-int/lit8 v1, p9, 0x6

    .line 16
    .line 17
    and-int/lit8 v1, v1, 0xe

    .line 18
    .line 19
    or-int/lit8 v1, v1, 0x30

    .line 20
    .line 21
    shl-int/lit8 v4, p9, 0x3

    .line 22
    .line 23
    and-int/lit16 v4, v4, 0x380

    .line 24
    or-int/2addr v1, v4

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    .line 28
    invoke-interface {v2, v3, v4, v0, v1}, Landroidx/compose/material/SliderColors;->a(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 29
    move-result-object v7

    .line 30
    const/4 v5, 0x1

    .line 31
    .line 32
    .line 33
    invoke-interface {v2, v3, v5, v0, v1}, Landroidx/compose/material/SliderColors;->a(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 34
    move-result-object v11

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v3, v4, v0, v1}, Landroidx/compose/material/SliderColors;->b(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 38
    move-result-object v13

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v3, v5, v0, v1}, Landroidx/compose/material/SliderColors;->b(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 42
    move-result-object v14

    .line 43
    .line 44
    new-instance v1, Landroidx/compose/material/SliderKt$Track$1;

    .line 45
    move-object v5, v1

    .line 46
    .line 47
    move/from16 v6, p6

    .line 48
    .line 49
    move/from16 v8, p7

    .line 50
    .line 51
    move/from16 v9, p4

    .line 52
    .line 53
    move/from16 v10, p3

    .line 54
    .line 55
    move-object/from16 v12, p5

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v5 .. v14}, Landroidx/compose/material/SliderKt$Track$1;-><init>(FLandroidx/compose/runtime/State;FFFLandroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 59
    .line 60
    and-int/lit8 v4, p9, 0xe

    .line 61
    move-object v5, p0

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v1, v0, v4}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 68
    move-result-object v10

    .line 69
    .line 70
    if-nez v10, :cond_0

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_0
    new-instance v11, Landroidx/compose/material/SliderKt$Track$2;

    .line 74
    move-object v0, v11

    .line 75
    move-object v1, p0

    .line 76
    .line 77
    move-object/from16 v2, p1

    .line 78
    .line 79
    move/from16 v3, p2

    .line 80
    .line 81
    move/from16 v4, p3

    .line 82
    .line 83
    move/from16 v5, p4

    .line 84
    .line 85
    move-object/from16 v6, p5

    .line 86
    .line 87
    move/from16 v7, p6

    .line 88
    .line 89
    move/from16 v8, p7

    .line 90
    .line 91
    move/from16 v9, p9

    .line 92
    .line 93
    .line 94
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SliderKt$Track$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFI)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 98
    :goto_0
    return-void
.end method

.method public static final synthetic h(Le8/l;Lj8/e;Lj8/e;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/SliderKt;->a(Le8/l;Lj8/e;Lj8/e;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic i(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p13}, Landroidx/compose/material/SliderKt;->c(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 4
    return-void
.end method

.method public static final synthetic j(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p8}, Landroidx/compose/material/SliderKt;->e(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic k(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p8}, Landroidx/compose/material/SliderKt;->f(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic l(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p9}, Landroidx/compose/material/SliderKt;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic m(Landroidx/compose/foundation/gestures/DraggableState;FFFLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->w(Landroidx/compose/foundation/gestures/DraggableState;FFFLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->x(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(FFF)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/material/SliderKt;->y(FFF)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic p()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/SliderKt;->SliderToTickAnimation:Landroidx/compose/animation/core/TweenSpec;

    return-object v0
.end method

.method public static final synthetic q(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZZFLj8/e;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p10}, Landroidx/compose/material/SliderKt;->A(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZZFLj8/e;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r(FFFFF)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->B(FFFFF)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic s(FFLj8/e;FF)Lj8/e;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->C(FFLj8/e;FF)Lj8/e;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLe8/l;Lj8/e;I)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/SliderKt;->D(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLe8/l;Lj8/e;I)Landroidx/compose/ui/Modifier;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p8}, Landroidx/compose/material/SliderKt;->E(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)Landroidx/compose/ui/Modifier;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic v(FLjava/util/List;FF)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt;->F(FLjava/util/List;FF)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final w(Landroidx/compose/foundation/gestures/DraggableState;FFFLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "FFF",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v1, 0x0

    .line 2
    .line 3
    new-instance v2, Landroidx/compose/material/SliderKt$animateToTarget$2;

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-direct {v2, p1, p2, p3, v0}, Landroidx/compose/material/SliderKt$animateToTarget$2;-><init>(FFFLkotlin/coroutines/d;)V

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move-object v3, p4

    .line 12
    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/a;->a(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/MutatePriority;Le8/p;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-ne p0, p1, :cond_0

    .line 22
    return-object p0

    .line 23
    .line 24
    :cond_0
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 25
    return-object p0
.end method

.method private static final x(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "JI",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/u<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Float;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p4, Landroidx/compose/material/SliderKt$awaitSlop$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/material/SliderKt$awaitSlop$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    new-instance v0, Landroidx/compose/material/SliderKt$awaitSlop$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p4}, Landroidx/compose/material/SliderKt$awaitSlop$1;-><init>(Lkotlin/coroutines/d;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :goto_1
    iget-object p4, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget v1, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    .line 35
    const/4 v2, 0x1

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    if-ne v1, v2, :cond_1

    .line 40
    .line 41
    iget-object p0, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lkotlin/jvm/internal/m0;

    .line 44
    .line 45
    .line 46
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    new-instance p4, Lkotlin/jvm/internal/m0;

    .line 61
    .line 62
    .line 63
    invoke-direct {p4}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 64
    .line 65
    new-instance v5, Landroidx/compose/material/SliderKt$awaitSlop$postPointerSlop$1;

    .line 66
    .line 67
    .line 68
    invoke-direct {v5, p4}, Landroidx/compose/material/SliderKt$awaitSlop$postPointerSlop$1;-><init>(Lkotlin/jvm/internal/m0;)V

    .line 69
    .line 70
    iput-object p4, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->L$0:Ljava/lang/Object;

    .line 71
    .line 72
    iput v2, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    .line 73
    move-object v1, p0

    .line 74
    move-wide v2, p1

    .line 75
    move v4, p3

    .line 76
    .line 77
    .line 78
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/DragGestureDetectorCopyKt;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 80
    .line 81
    if-ne p0, v0, :cond_3

    .line 82
    return-object v0

    .line 83
    :cond_3
    move-object v7, p4

    .line 84
    move-object p4, p0

    .line 85
    move-object p0, v7

    .line 86
    .line 87
    :goto_2
    check-cast p4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 88
    .line 89
    if-eqz p4, :cond_4

    .line 90
    .line 91
    iget p0, p0, Lkotlin/jvm/internal/m0;->element:F

    .line 92
    .line 93
    .line 94
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 95
    move-result-object p0

    .line 96
    .line 97
    .line 98
    invoke-static {p4, p0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 99
    move-result-object p0

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    const/4 p0, 0x0

    .line 102
    :goto_3
    return-object p0
.end method

.method private static final y(FFF)F
    .locals 2

    .line 1
    sub-float/2addr p1, p0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    cmpg-float v1, p1, v0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    move p2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sub-float/2addr p2, p0

    .line 10
    div-float/2addr p2, p1

    .line 11
    .line 12
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0, p0}, Lj8/m;->m(FFF)F

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final z()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    return v0
.end method
