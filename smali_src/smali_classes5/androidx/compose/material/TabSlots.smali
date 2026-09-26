.class final enum Landroidx/compose/material/TabSlots;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/material/TabSlots;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/material/TabSlots;

.field public static final enum Divider:Landroidx/compose/material/TabSlots;

.field public static final enum Indicator:Landroidx/compose/material/TabSlots;

.field public static final enum Tabs:Landroidx/compose/material/TabSlots;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/TabSlots;

    .line 3
    .line 4
    const-string v1, "Tabs"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/compose/material/TabSlots;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Landroidx/compose/material/TabSlots;->Tabs:Landroidx/compose/material/TabSlots;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/material/TabSlots;

    .line 13
    .line 14
    const-string v1, "Divider"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Landroidx/compose/material/TabSlots;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Landroidx/compose/material/TabSlots;->Divider:Landroidx/compose/material/TabSlots;

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/material/TabSlots;

    .line 23
    .line 24
    const-string v1, "Indicator"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Landroidx/compose/material/TabSlots;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Landroidx/compose/material/TabSlots;->Indicator:Landroidx/compose/material/TabSlots;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroidx/compose/material/TabSlots;->a()[Landroidx/compose/material/TabSlots;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sput-object v0, Landroidx/compose/material/TabSlots;->$VALUES:[Landroidx/compose/material/TabSlots;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method private static final synthetic a()[Landroidx/compose/material/TabSlots;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/compose/material/TabSlots;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/material/TabSlots;->Tabs:Landroidx/compose/material/TabSlots;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/compose/material/TabSlots;->Divider:Landroidx/compose/material/TabSlots;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/compose/material/TabSlots;->Indicator:Landroidx/compose/material/TabSlots;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material/TabSlots;
    .locals 1

    const-class v0, Landroidx/compose/material/TabSlots;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/TabSlots;

    return-object p0
.end method

.method public static values()[Landroidx/compose/material/TabSlots;
    .locals 1

    sget-object v0, Landroidx/compose/material/TabSlots;->$VALUES:[Landroidx/compose/material/TabSlots;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/material/TabSlots;

    return-object v0
.end method
