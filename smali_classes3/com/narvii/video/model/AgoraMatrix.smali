.class public Lcom/narvii/video/model/AgoraMatrix;
.super Ljava/lang/Object;
.source "AgoraMatrix.java"


# static fields
.field public static MATRIX_IDENTITY:[F

.field public static MATRIX_IDENTITY_180:[F

.field public static MATRIX_IDENTITY_270:[F

.field public static MATRIX_IDENTITY_90:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 8
    fill-array-data v1, :array_0

    sput-object v1, Lcom/narvii/video/model/AgoraMatrix;->MATRIX_IDENTITY:[F

    new-array v1, v0, [F

    .line 15
    fill-array-data v1, :array_1

    sput-object v1, Lcom/narvii/video/model/AgoraMatrix;->MATRIX_IDENTITY_90:[F

    new-array v1, v0, [F

    .line 22
    fill-array-data v1, :array_2

    sput-object v1, Lcom/narvii/video/model/AgoraMatrix;->MATRIX_IDENTITY_180:[F

    new-array v0, v0, [F

    .line 30
    fill-array-data v0, :array_3

    sput-object v0, Lcom/narvii/video/model/AgoraMatrix;->MATRIX_IDENTITY_270:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
