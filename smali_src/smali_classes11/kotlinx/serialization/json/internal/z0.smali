.class public final enum Lkotlinx/serialization/json/internal/z0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/serialization/json/internal/z0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlinx/serialization/json/internal/z0;

.field public static final enum LIST:Lkotlinx/serialization/json/internal/z0;

.field public static final enum MAP:Lkotlinx/serialization/json/internal/z0;

.field public static final enum OBJ:Lkotlinx/serialization/json/internal/z0;

.field public static final enum POLY_OBJ:Lkotlinx/serialization/json/internal/z0;


# instance fields
.field public final begin:C

.field public final end:C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lkotlinx/serialization/json/internal/z0;

    .line 3
    .line 4
    const-string v1, "OBJ"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    const/16 v3, 0x7b

    .line 8
    .line 9
    const/16 v4, 0x7d

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/serialization/json/internal/z0;-><init>(Ljava/lang/String;ICC)V

    .line 13
    .line 14
    sput-object v0, Lkotlinx/serialization/json/internal/z0;->OBJ:Lkotlinx/serialization/json/internal/z0;

    .line 15
    .line 16
    new-instance v0, Lkotlinx/serialization/json/internal/z0;

    .line 17
    .line 18
    const-string v1, "LIST"

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    const/16 v5, 0x5b

    .line 22
    .line 23
    const/16 v6, 0x5d

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, v2, v5, v6}, Lkotlinx/serialization/json/internal/z0;-><init>(Ljava/lang/String;ICC)V

    .line 27
    .line 28
    sput-object v0, Lkotlinx/serialization/json/internal/z0;->LIST:Lkotlinx/serialization/json/internal/z0;

    .line 29
    .line 30
    new-instance v0, Lkotlinx/serialization/json/internal/z0;

    .line 31
    .line 32
    const-string v1, "MAP"

    .line 33
    const/4 v2, 0x2

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/serialization/json/internal/z0;-><init>(Ljava/lang/String;ICC)V

    .line 37
    .line 38
    sput-object v0, Lkotlinx/serialization/json/internal/z0;->MAP:Lkotlinx/serialization/json/internal/z0;

    .line 39
    .line 40
    new-instance v0, Lkotlinx/serialization/json/internal/z0;

    .line 41
    .line 42
    const-string v1, "POLY_OBJ"

    .line 43
    const/4 v2, 0x3

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1, v2, v5, v6}, Lkotlinx/serialization/json/internal/z0;-><init>(Ljava/lang/String;ICC)V

    .line 47
    .line 48
    sput-object v0, Lkotlinx/serialization/json/internal/z0;->POLY_OBJ:Lkotlinx/serialization/json/internal/z0;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lkotlinx/serialization/json/internal/z0;->a()[Lkotlinx/serialization/json/internal/z0;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    sput-object v0, Lkotlinx/serialization/json/internal/z0;->$VALUES:[Lkotlinx/serialization/json/internal/z0;

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CC)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-char p3, p0, Lkotlinx/serialization/json/internal/z0;->begin:C

    .line 6
    .line 7
    iput-char p4, p0, Lkotlinx/serialization/json/internal/z0;->end:C

    .line 8
    return-void
.end method

.method private static final synthetic a()[Lkotlinx/serialization/json/internal/z0;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/serialization/json/internal/z0;

    const/4 v1, 0x0

    sget-object v2, Lkotlinx/serialization/json/internal/z0;->OBJ:Lkotlinx/serialization/json/internal/z0;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkotlinx/serialization/json/internal/z0;->LIST:Lkotlinx/serialization/json/internal/z0;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkotlinx/serialization/json/internal/z0;->MAP:Lkotlinx/serialization/json/internal/z0;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lkotlinx/serialization/json/internal/z0;->POLY_OBJ:Lkotlinx/serialization/json/internal/z0;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/serialization/json/internal/z0;
    .locals 1

    const-class v0, Lkotlinx/serialization/json/internal/z0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/internal/z0;

    return-object p0
.end method

.method public static values()[Lkotlinx/serialization/json/internal/z0;
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/internal/z0;->$VALUES:[Lkotlinx/serialization/json/internal/z0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/json/internal/z0;

    return-object v0
.end method
