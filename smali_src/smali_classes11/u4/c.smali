.class public final enum Lu4/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu4/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lu4/c;

.field public static final enum HIGH_SPEED:Lu4/c;

.field public static final enum LOW_POWER:Lu4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lu4/c;

    .line 3
    .line 4
    const-string v1, "LOW_POWER"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lu4/c;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lu4/c;->LOW_POWER:Lu4/c;

    .line 11
    .line 12
    new-instance v1, Lu4/c;

    .line 13
    .line 14
    const-string v3, "HIGH_SPEED"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lu4/c;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lu4/c;->HIGH_SPEED:Lu4/c;

    .line 21
    const/4 v3, 0x2

    .line 22
    .line 23
    new-array v3, v3, [Lu4/c;

    .line 24
    .line 25
    aput-object v0, v3, v2

    .line 26
    .line 27
    aput-object v1, v3, v4

    .line 28
    .line 29
    sput-object v3, Lu4/c;->$VALUES:[Lu4/c;

    .line 30
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

.method public static valueOf(Ljava/lang/String;)Lu4/c;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lu4/c;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lu4/c;

    .line 9
    return-object p0
.end method

.method public static values()[Lu4/c;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lu4/c;->$VALUES:[Lu4/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lu4/c;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lu4/c;

    .line 9
    return-object v0
.end method
