.class public final Landroidx/compose/ui/input/pointer/ConsumedData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private downChange:Z

.field private positionChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/ui/input/pointer/ConsumedData;-><init>(ZZILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->positionChange:Z

    iput-boolean p2, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->downChange:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/jvm/internal/k;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/input/pointer/ConsumedData;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->downChange:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->positionChange:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->downChange:Z

    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->positionChange:Z

    return-void
.end method
