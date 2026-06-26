.class public final Lcom/narvii/editor/cropping/dynamic/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

.field private static final vertexData:[F

.field private static final waterMarkVertexData:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    const/16 v0, 0x18

    new-array v1, v0, [F

    .line 103
    fill-array-data v1, :array_0

    sput-object v1, Lcom/narvii/editor/cropping/dynamic/GLUtils;->vertexData:[F

    new-array v0, v0, [F

    .line 151
    fill-array-data v0, :array_1

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->waterMarkVertexData:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getVertexData$cp()[F
    .locals 1

    .line 21
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->vertexData:[F

    return-object v0
.end method

.method public static final synthetic access$getWaterMarkVertexData$cp()[F
    .locals 1

    .line 21
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->waterMarkVertexData:[F

    return-object v0
.end method
