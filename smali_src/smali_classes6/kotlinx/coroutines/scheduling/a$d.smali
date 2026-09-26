.class public final enum Lkotlinx/coroutines/scheduling/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/scheduling/a$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlinx/coroutines/scheduling/a$d;

.field public static final enum BLOCKING:Lkotlinx/coroutines/scheduling/a$d;

.field public static final enum CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/a$d;

.field public static final enum DORMANT:Lkotlinx/coroutines/scheduling/a$d;

.field public static final enum PARKING:Lkotlinx/coroutines/scheduling/a$d;

.field public static final enum TERMINATED:Lkotlinx/coroutines/scheduling/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/scheduling/a$d;

    .line 3
    .line 4
    const-string v1, "CPU_ACQUIRED"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/scheduling/a$d;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lkotlinx/coroutines/scheduling/a$d;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/a$d;

    .line 11
    .line 12
    new-instance v0, Lkotlinx/coroutines/scheduling/a$d;

    .line 13
    .line 14
    const-string v1, "BLOCKING"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/scheduling/a$d;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lkotlinx/coroutines/scheduling/a$d;->BLOCKING:Lkotlinx/coroutines/scheduling/a$d;

    .line 21
    .line 22
    new-instance v0, Lkotlinx/coroutines/scheduling/a$d;

    .line 23
    .line 24
    const-string v1, "PARKING"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/scheduling/a$d;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lkotlinx/coroutines/scheduling/a$d;->PARKING:Lkotlinx/coroutines/scheduling/a$d;

    .line 31
    .line 32
    new-instance v0, Lkotlinx/coroutines/scheduling/a$d;

    .line 33
    .line 34
    const-string v1, "DORMANT"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/scheduling/a$d;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Lkotlinx/coroutines/scheduling/a$d;->DORMANT:Lkotlinx/coroutines/scheduling/a$d;

    .line 41
    .line 42
    new-instance v0, Lkotlinx/coroutines/scheduling/a$d;

    .line 43
    .line 44
    const-string v1, "TERMINATED"

    .line 45
    const/4 v2, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/scheduling/a$d;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v0, Lkotlinx/coroutines/scheduling/a$d;->TERMINATED:Lkotlinx/coroutines/scheduling/a$d;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lkotlinx/coroutines/scheduling/a$d;->a()[Lkotlinx/coroutines/scheduling/a$d;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    sput-object v0, Lkotlinx/coroutines/scheduling/a$d;->$VALUES:[Lkotlinx/coroutines/scheduling/a$d;

    .line 57
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

.method private static final synthetic a()[Lkotlinx/coroutines/scheduling/a$d;
    .locals 3

    .line 1
    const/4 v0, 0x5

    new-array v0, v0, [Lkotlinx/coroutines/scheduling/a$d;

    const/4 v1, 0x0

    sget-object v2, Lkotlinx/coroutines/scheduling/a$d;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/a$d;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkotlinx/coroutines/scheduling/a$d;->BLOCKING:Lkotlinx/coroutines/scheduling/a$d;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkotlinx/coroutines/scheduling/a$d;->PARKING:Lkotlinx/coroutines/scheduling/a$d;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lkotlinx/coroutines/scheduling/a$d;->DORMANT:Lkotlinx/coroutines/scheduling/a$d;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lkotlinx/coroutines/scheduling/a$d;->TERMINATED:Lkotlinx/coroutines/scheduling/a$d;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/scheduling/a$d;
    .locals 1

    const-class v0, Lkotlinx/coroutines/scheduling/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/scheduling/a$d;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/scheduling/a$d;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/scheduling/a$d;->$VALUES:[Lkotlinx/coroutines/scheduling/a$d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/scheduling/a$d;

    return-object v0
.end method
