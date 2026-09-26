.class final Landroidx/compose/material/SwipeableKt$swipeable$3$3$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwipeableKt$swipeable$3$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableKt$swipeable$3$3$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,890:1\n1#2:891\n*E\n"
.end annotation


# instance fields
.field final synthetic $anchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $thresholds:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "TT;TT;",
            "Landroidx/compose/material/ThresholdConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Le8/p;Landroidx/compose/ui/unit/Density;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
            "Le8/p<",
            "-TT;-TT;+",
            "Landroidx/compose/material/ThresholdConfig;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SwipeableKt$swipeable$3$3$1;->$anchors:Ljava/util/Map;

    iput-object p2, p0, Landroidx/compose/material/SwipeableKt$swipeable$3$3$1;->$thresholds:Le8/p;

    iput-object p3, p0, Landroidx/compose/material/SwipeableKt$swipeable$3$3$1;->$density:Landroidx/compose/ui/unit/Density;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(FF)Ljava/lang/Float;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableKt$swipeable$3$3$1;->$anchors:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/collections/p0;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/material/SwipeableKt$swipeable$3$3$1;->$anchors:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/collections/p0;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/compose/material/SwipeableKt$swipeable$3$3$1;->$thresholds:Le8/p;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v0, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/material/SwipeableKt$swipeable$3$3$1;->$density:Landroidx/compose/ui/unit/Density;

    .line 29
    .line 30
    check-cast v0, Landroidx/compose/material/ThresholdConfig;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1, p1, p2}, Landroidx/compose/material/ThresholdConfig;->a(Landroidx/compose/ui/unit/Density;FF)F

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 6
    move-result p1

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SwipeableKt$swipeable$3$3$1;->a(FF)Ljava/lang/Float;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
