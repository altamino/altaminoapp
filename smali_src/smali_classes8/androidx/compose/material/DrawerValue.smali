.class public final enum Landroidx/compose/material/DrawerValue;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/material/DrawerValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/material/DrawerValue;

.field public static final enum Closed:Landroidx/compose/material/DrawerValue;

.field public static final enum Open:Landroidx/compose/material/DrawerValue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/DrawerValue;

    .line 3
    .line 4
    const-string v1, "Closed"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/compose/material/DrawerValue;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/material/DrawerValue;

    .line 13
    .line 14
    const-string v1, "Open"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Landroidx/compose/material/DrawerValue;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Landroidx/compose/material/DrawerValue;->Open:Landroidx/compose/material/DrawerValue;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroidx/compose/material/DrawerValue;->a()[Landroidx/compose/material/DrawerValue;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Landroidx/compose/material/DrawerValue;->$VALUES:[Landroidx/compose/material/DrawerValue;

    .line 27
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

.method private static final synthetic a()[Landroidx/compose/material/DrawerValue;
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/compose/material/DrawerValue;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/compose/material/DrawerValue;->Open:Landroidx/compose/material/DrawerValue;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material/DrawerValue;
    .locals 1

    const-class v0, Landroidx/compose/material/DrawerValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/DrawerValue;

    return-object p0
.end method

.method public static values()[Landroidx/compose/material/DrawerValue;
    .locals 1

    sget-object v0, Landroidx/compose/material/DrawerValue;->$VALUES:[Landroidx/compose/material/DrawerValue;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/material/DrawerValue;

    return-object v0
.end method
