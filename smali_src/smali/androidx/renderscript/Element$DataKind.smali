.class public final enum Landroidx/renderscript/Element$DataKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/renderscript/Element$DataKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/renderscript/Element$DataKind;

.field public static final enum PIXEL_A:Landroidx/renderscript/Element$DataKind;

.field public static final enum PIXEL_DEPTH:Landroidx/renderscript/Element$DataKind;

.field public static final enum PIXEL_L:Landroidx/renderscript/Element$DataKind;

.field public static final enum PIXEL_LA:Landroidx/renderscript/Element$DataKind;

.field public static final enum PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

.field public static final enum PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

.field public static final enum PIXEL_YUV:Landroidx/renderscript/Element$DataKind;

.field public static final enum USER:Landroidx/renderscript/Element$DataKind;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Element$DataKind;

    .line 3
    .line 4
    const-string v1, "USER"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Landroidx/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Landroidx/renderscript/Element$DataKind;->USER:Landroidx/renderscript/Element$DataKind;

    .line 11
    .line 12
    new-instance v1, Landroidx/renderscript/Element$DataKind;

    .line 13
    .line 14
    const-string v3, "PIXEL_L"

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x7

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v3, v4, v5}, Landroidx/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    sput-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_L:Landroidx/renderscript/Element$DataKind;

    .line 22
    .line 23
    new-instance v3, Landroidx/renderscript/Element$DataKind;

    .line 24
    .line 25
    const-string v6, "PIXEL_A"

    .line 26
    const/4 v7, 0x2

    .line 27
    .line 28
    const/16 v8, 0x8

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v6, v7, v8}, Landroidx/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 32
    .line 33
    sput-object v3, Landroidx/renderscript/Element$DataKind;->PIXEL_A:Landroidx/renderscript/Element$DataKind;

    .line 34
    .line 35
    new-instance v6, Landroidx/renderscript/Element$DataKind;

    .line 36
    .line 37
    const/16 v9, 0x9

    .line 38
    .line 39
    const-string v10, "PIXEL_LA"

    .line 40
    const/4 v11, 0x3

    .line 41
    .line 42
    .line 43
    invoke-direct {v6, v10, v11, v9}, Landroidx/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 44
    .line 45
    sput-object v6, Landroidx/renderscript/Element$DataKind;->PIXEL_LA:Landroidx/renderscript/Element$DataKind;

    .line 46
    .line 47
    new-instance v9, Landroidx/renderscript/Element$DataKind;

    .line 48
    .line 49
    const/16 v10, 0xa

    .line 50
    .line 51
    const-string v12, "PIXEL_RGB"

    .line 52
    const/4 v13, 0x4

    .line 53
    .line 54
    .line 55
    invoke-direct {v9, v12, v13, v10}, Landroidx/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 56
    .line 57
    sput-object v9, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    .line 58
    .line 59
    new-instance v10, Landroidx/renderscript/Element$DataKind;

    .line 60
    .line 61
    const/16 v12, 0xb

    .line 62
    .line 63
    const-string v14, "PIXEL_RGBA"

    .line 64
    const/4 v15, 0x5

    .line 65
    .line 66
    .line 67
    invoke-direct {v10, v14, v15, v12}, Landroidx/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    sput-object v10, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    .line 70
    .line 71
    new-instance v12, Landroidx/renderscript/Element$DataKind;

    .line 72
    .line 73
    const/16 v14, 0xc

    .line 74
    .line 75
    const-string v15, "PIXEL_DEPTH"

    .line 76
    const/4 v13, 0x6

    .line 77
    .line 78
    .line 79
    invoke-direct {v12, v15, v13, v14}, Landroidx/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 80
    .line 81
    sput-object v12, Landroidx/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroidx/renderscript/Element$DataKind;

    .line 82
    .line 83
    new-instance v14, Landroidx/renderscript/Element$DataKind;

    .line 84
    .line 85
    const-string v15, "PIXEL_YUV"

    .line 86
    .line 87
    const/16 v13, 0xd

    .line 88
    .line 89
    .line 90
    invoke-direct {v14, v15, v5, v13}, Landroidx/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    sput-object v14, Landroidx/renderscript/Element$DataKind;->PIXEL_YUV:Landroidx/renderscript/Element$DataKind;

    .line 93
    .line 94
    new-array v8, v8, [Landroidx/renderscript/Element$DataKind;

    .line 95
    .line 96
    aput-object v0, v8, v2

    .line 97
    .line 98
    aput-object v1, v8, v4

    .line 99
    .line 100
    aput-object v3, v8, v7

    .line 101
    .line 102
    aput-object v6, v8, v11

    .line 103
    const/4 v0, 0x4

    .line 104
    .line 105
    aput-object v9, v8, v0

    .line 106
    const/4 v0, 0x5

    .line 107
    .line 108
    aput-object v10, v8, v0

    .line 109
    const/4 v0, 0x6

    .line 110
    .line 111
    aput-object v12, v8, v0

    .line 112
    .line 113
    aput-object v14, v8, v5

    .line 114
    .line 115
    sput-object v8, Landroidx/renderscript/Element$DataKind;->$VALUES:[Landroidx/renderscript/Element$DataKind;

    .line 116
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
    iput p3, p0, Landroidx/renderscript/Element$DataKind;->mID:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/renderscript/Element$DataKind;
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroidx/renderscript/Element$DataKind;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroidx/renderscript/Element$DataKind;

    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/renderscript/Element$DataKind;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataKind;->$VALUES:[Landroidx/renderscript/Element$DataKind;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Landroidx/renderscript/Element$DataKind;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Landroidx/renderscript/Element$DataKind;

    .line 9
    return-object v0
.end method
