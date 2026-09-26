.class public final Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwipeableKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;F)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInspectableValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1\n+ 2 Swipeable.kt\nandroidx/compose/material/SwipeableKt\n*L\n1#1,170:1\n575#2,11:171\n*E\n"
.end annotation


# instance fields
.field final synthetic $anchors$inlined:Ljava/util/Map;

.field final synthetic $enabled$inlined:Z

.field final synthetic $interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $orientation$inlined:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $resistance$inlined:Landroidx/compose/material/ResistanceConfig;

.field final synthetic $reverseDirection$inlined:Z

.field final synthetic $state$inlined:Landroidx/compose/material/SwipeableState;

.field final synthetic $thresholds$inlined:Le8/p;

.field final synthetic $velocityThreshold$inlined:F


# direct methods
.method public constructor <init>(Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$state$inlined:Landroidx/compose/material/SwipeableState;

    iput-object p2, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$anchors$inlined:Ljava/util/Map;

    iput-object p3, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$orientation$inlined:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p4, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    iput-boolean p5, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$reverseDirection$inlined:Z

    iput-object p6, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p7, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$thresholds$inlined:Le8/p;

    iput-object p8, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$resistance$inlined:Landroidx/compose/material/ResistanceConfig;

    iput p9, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$velocityThreshold$inlined:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/platform/InspectorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "swipeable"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "state"

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$state$inlined:Landroidx/compose/material/SwipeableState;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "anchors"

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$anchors$inlined:Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v1, "orientation"

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$orientation$inlined:Landroidx/compose/foundation/gestures/Orientation;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-boolean v1, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    const-string v2, "enabled"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iget-boolean v1, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$reverseDirection$inlined:Z

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v2, "reverseDirection"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    const-string v1, "interactionSource"

    .line 80
    .line 81
    iget-object v2, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    const-string v1, "thresholds"

    .line 91
    .line 92
    iget-object v2, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$thresholds$inlined:Le8/p;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    const-string v1, "resistance"

    .line 102
    .line 103
    iget-object v2, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$resistance$inlined:Landroidx/compose/material/ResistanceConfig;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    iget v0, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$velocityThreshold$inlined:F

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    const-string v1, "velocityThreshold"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1, v0}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->a(Landroidx/compose/ui/platform/InspectorInfo;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
