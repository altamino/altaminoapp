.class public final enum Landroidx/renderscript/Sampler$Value;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/renderscript/Sampler$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/renderscript/Sampler$Value;

.field public static final enum CLAMP:Landroidx/renderscript/Sampler$Value;

.field public static final enum LINEAR:Landroidx/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_NEAREST:Landroidx/renderscript/Sampler$Value;

.field public static final enum MIRRORED_REPEAT:Landroidx/renderscript/Sampler$Value;

.field public static final enum NEAREST:Landroidx/renderscript/Sampler$Value;

.field public static final enum WRAP:Landroidx/renderscript/Sampler$Value;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Sampler$Value;

    .line 3
    .line 4
    const-string v1, "NEAREST"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Landroidx/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Landroidx/renderscript/Sampler$Value;->NEAREST:Landroidx/renderscript/Sampler$Value;

    .line 11
    .line 12
    new-instance v1, Landroidx/renderscript/Sampler$Value;

    .line 13
    .line 14
    const-string v3, "LINEAR"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v4}, Landroidx/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    .line 21
    .line 22
    new-instance v3, Landroidx/renderscript/Sampler$Value;

    .line 23
    .line 24
    const-string v5, "LINEAR_MIP_LINEAR"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6, v6}, Landroidx/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    sput-object v3, Landroidx/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler$Value;

    .line 31
    .line 32
    new-instance v5, Landroidx/renderscript/Sampler$Value;

    .line 33
    .line 34
    const-string v7, "LINEAR_MIP_NEAREST"

    .line 35
    const/4 v8, 0x3

    .line 36
    const/4 v9, 0x5

    .line 37
    .line 38
    .line 39
    invoke-direct {v5, v7, v8, v9}, Landroidx/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    sput-object v5, Landroidx/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroidx/renderscript/Sampler$Value;

    .line 42
    .line 43
    new-instance v7, Landroidx/renderscript/Sampler$Value;

    .line 44
    .line 45
    const-string v10, "WRAP"

    .line 46
    const/4 v11, 0x4

    .line 47
    .line 48
    .line 49
    invoke-direct {v7, v10, v11, v8}, Landroidx/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 50
    .line 51
    sput-object v7, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    .line 52
    .line 53
    new-instance v10, Landroidx/renderscript/Sampler$Value;

    .line 54
    .line 55
    const-string v12, "CLAMP"

    .line 56
    .line 57
    .line 58
    invoke-direct {v10, v12, v9, v11}, Landroidx/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    sput-object v10, Landroidx/renderscript/Sampler$Value;->CLAMP:Landroidx/renderscript/Sampler$Value;

    .line 61
    .line 62
    new-instance v12, Landroidx/renderscript/Sampler$Value;

    .line 63
    .line 64
    const-string v13, "MIRRORED_REPEAT"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v12, v13, v14, v14}, Landroidx/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    sput-object v12, Landroidx/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroidx/renderscript/Sampler$Value;

    .line 71
    const/4 v13, 0x7

    .line 72
    .line 73
    new-array v13, v13, [Landroidx/renderscript/Sampler$Value;

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
    aput-object v7, v13, v11

    .line 84
    .line 85
    aput-object v10, v13, v9

    .line 86
    .line 87
    aput-object v12, v13, v14

    .line 88
    .line 89
    sput-object v13, Landroidx/renderscript/Sampler$Value;->$VALUES:[Landroidx/renderscript/Sampler$Value;

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
    iput p3, p0, Landroidx/renderscript/Sampler$Value;->mID:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/renderscript/Sampler$Value;
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroidx/renderscript/Sampler$Value;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroidx/renderscript/Sampler$Value;

    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/renderscript/Sampler$Value;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/renderscript/Sampler$Value;->$VALUES:[Landroidx/renderscript/Sampler$Value;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Landroidx/renderscript/Sampler$Value;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Landroidx/renderscript/Sampler$Value;

    .line 9
    return-object v0
.end method
