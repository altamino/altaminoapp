.class public final Landroidx/media3/common/GlTextureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final UNSET:Landroidx/media3/common/GlTextureInfo;


# instance fields
.field private final fboId:I

.field private final height:I

.field private isReleased:Z

.field private final rboId:I

.field private final texId:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v6, Landroidx/media3/common/GlTextureInfo;

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, -0x1

    .line 7
    const/4 v5, -0x1

    .line 8
    move-object v0, v6

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/GlTextureInfo;-><init>(IIIII)V

    .line 12
    .line 13
    sput-object v6, Landroidx/media3/common/GlTextureInfo;->UNSET:Landroidx/media3/common/GlTextureInfo;

    .line 14
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/media3/common/GlTextureInfo;->texId:I

    .line 6
    .line 7
    iput p2, p0, Landroidx/media3/common/GlTextureInfo;->fboId:I

    .line 8
    .line 9
    iput p3, p0, Landroidx/media3/common/GlTextureInfo;->rboId:I

    .line 10
    .line 11
    iput p4, p0, Landroidx/media3/common/GlTextureInfo;->width:I

    .line 12
    .line 13
    iput p5, p0, Landroidx/media3/common/GlTextureInfo;->height:I

    .line 14
    return-void
.end method
