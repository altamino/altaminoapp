.class public final Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/platform/ViewConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/LayoutNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x28

    return-wide v0
.end method

.method public b()F
    .locals 1

    .line 1
    const/high16 v0, 0x41800000    # 16.0f

    return v0
.end method

.method public c()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/unit/DpSize$Companion;->b()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
