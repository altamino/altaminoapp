.class public final enum Lh2/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/proto/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh2/c$b;",
        ">;",
        "Lcom/google/firebase/encoders/proto/c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lh2/c$b;

.field public static final enum CACHE_FULL:Lh2/c$b;

.field public static final enum INVALID_PAYLOD:Lh2/c$b;

.field public static final enum MAX_RETRIES_REACHED:Lh2/c$b;

.field public static final enum MESSAGE_TOO_OLD:Lh2/c$b;

.field public static final enum PAYLOAD_TOO_BIG:Lh2/c$b;

.field public static final enum REASON_UNKNOWN:Lh2/c$b;

.field public static final enum SERVER_ERROR:Lh2/c$b;


# instance fields
.field private final number_:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    .line 2
    new-instance v0, Lh2/c$b;

    .line 3
    .line 4
    const-string v1, "REASON_UNKNOWN"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lh2/c$b;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Lh2/c$b;->REASON_UNKNOWN:Lh2/c$b;

    .line 11
    .line 12
    new-instance v1, Lh2/c$b;

    .line 13
    .line 14
    const-string v3, "MESSAGE_TOO_OLD"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v4}, Lh2/c$b;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v1, Lh2/c$b;->MESSAGE_TOO_OLD:Lh2/c$b;

    .line 21
    .line 22
    new-instance v3, Lh2/c$b;

    .line 23
    .line 24
    const-string v5, "CACHE_FULL"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6, v6}, Lh2/c$b;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    sput-object v3, Lh2/c$b;->CACHE_FULL:Lh2/c$b;

    .line 31
    .line 32
    new-instance v5, Lh2/c$b;

    .line 33
    .line 34
    const-string v7, "PAYLOAD_TOO_BIG"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8, v8}, Lh2/c$b;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    sput-object v5, Lh2/c$b;->PAYLOAD_TOO_BIG:Lh2/c$b;

    .line 41
    .line 42
    new-instance v7, Lh2/c$b;

    .line 43
    .line 44
    const-string v9, "MAX_RETRIES_REACHED"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10, v10}, Lh2/c$b;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    sput-object v7, Lh2/c$b;->MAX_RETRIES_REACHED:Lh2/c$b;

    .line 51
    .line 52
    new-instance v9, Lh2/c$b;

    .line 53
    .line 54
    const-string v11, "INVALID_PAYLOD"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12, v12}, Lh2/c$b;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    sput-object v9, Lh2/c$b;->INVALID_PAYLOD:Lh2/c$b;

    .line 61
    .line 62
    new-instance v11, Lh2/c$b;

    .line 63
    .line 64
    const-string v13, "SERVER_ERROR"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14, v14}, Lh2/c$b;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    sput-object v11, Lh2/c$b;->SERVER_ERROR:Lh2/c$b;

    .line 71
    const/4 v13, 0x7

    .line 72
    .line 73
    new-array v13, v13, [Lh2/c$b;

    .line 74
    .line 75
    aput-object v0, v13, v2

    .line 76
    .line 77
    aput-object v1, v13, v4

    .line 78
    .line 79
    aput-object v3, v13, v6

    .line 80
    .line 81
    aput-object v5, v13, v8

    .line 82
    .line 83
    aput-object v7, v13, v10

    .line 84
    .line 85
    aput-object v9, v13, v12

    .line 86
    .line 87
    aput-object v11, v13, v14

    .line 88
    .line 89
    sput-object v13, Lh2/c$b;->$VALUES:[Lh2/c$b;

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput p3, p0, Lh2/c$b;->number_:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh2/c$b;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lh2/c$b;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lh2/c$b;

    .line 9
    return-object p0
.end method

.method public static values()[Lh2/c$b;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lh2/c$b;->$VALUES:[Lh2/c$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lh2/c$b;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lh2/c$b;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lh2/c$b;->number_:I

    return v0
.end method
