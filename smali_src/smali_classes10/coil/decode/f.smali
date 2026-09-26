.class public final enum Lcoil/decode/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcoil/decode/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcoil/decode/f;

.field public static final enum DISK:Lcoil/decode/f;

.field public static final enum MEMORY:Lcoil/decode/f;

.field public static final enum MEMORY_CACHE:Lcoil/decode/f;

.field public static final enum NETWORK:Lcoil/decode/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcoil/decode/f;

    .line 3
    .line 4
    const-string v1, "MEMORY_CACHE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcoil/decode/f;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcoil/decode/f;->MEMORY_CACHE:Lcoil/decode/f;

    .line 11
    .line 12
    new-instance v0, Lcoil/decode/f;

    .line 13
    .line 14
    const-string v1, "MEMORY"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcoil/decode/f;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcoil/decode/f;->MEMORY:Lcoil/decode/f;

    .line 21
    .line 22
    new-instance v0, Lcoil/decode/f;

    .line 23
    .line 24
    const-string v1, "DISK"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcoil/decode/f;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lcoil/decode/f;->DISK:Lcoil/decode/f;

    .line 31
    .line 32
    new-instance v0, Lcoil/decode/f;

    .line 33
    .line 34
    const-string v1, "NETWORK"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lcoil/decode/f;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Lcoil/decode/f;->NETWORK:Lcoil/decode/f;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcoil/decode/f;->a()[Lcoil/decode/f;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lcoil/decode/f;->$VALUES:[Lcoil/decode/f;

    .line 47
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

.method private static final synthetic a()[Lcoil/decode/f;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lcoil/decode/f;

    const/4 v1, 0x0

    sget-object v2, Lcoil/decode/f;->MEMORY_CACHE:Lcoil/decode/f;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcoil/decode/f;->MEMORY:Lcoil/decode/f;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcoil/decode/f;->DISK:Lcoil/decode/f;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcoil/decode/f;->NETWORK:Lcoil/decode/f;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcoil/decode/f;
    .locals 1

    const-class v0, Lcoil/decode/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcoil/decode/f;

    return-object p0
.end method

.method public static values()[Lcoil/decode/f;
    .locals 1

    sget-object v0, Lcoil/decode/f;->$VALUES:[Lcoil/decode/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcoil/decode/f;

    return-object v0
.end method
