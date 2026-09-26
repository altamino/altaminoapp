.class public final Landroidx/work/impl/constraints/trackers/BatteryNotLowTrackerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BATTERY_LOW_THRESHOLD:F = 0.15f

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "BatteryNotLowTracker"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/work/Logger;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "tagWithPrefix(\"BatteryNotLowTracker\")"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    sput-object v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTrackerKt;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTrackerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
