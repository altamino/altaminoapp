.class public abstract Ll9/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll9/o$a;
    }
.end annotation


# instance fields
.field private final keyAndMask:I

.field private final layerAddress:I

.field private final treeAddress:J

.field private final type:I


# direct methods
.method protected constructor <init>(Ll9/o$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ll9/o$a;->a(Ll9/o$a;)I

    move-result v0

    iput v0, p0, Ll9/o;->layerAddress:I

    invoke-static {p1}, Ll9/o$a;->b(Ll9/o$a;)J

    move-result-wide v0

    iput-wide v0, p0, Ll9/o;->treeAddress:J

    invoke-static {p1}, Ll9/o$a;->c(Ll9/o$a;)I

    move-result v0

    iput v0, p0, Ll9/o;->type:I

    invoke-static {p1}, Ll9/o$a;->d(Ll9/o$a;)I

    move-result p1

    iput p1, p0, Ll9/o;->keyAndMask:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/o;->keyAndMask:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/o;->layerAddress:I

    return v0
.end method

.method protected final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ll9/o;->treeAddress:J

    return-wide v0
.end method

.method protected d()[B
    .locals 4

    .line 1
    const/16 v0, 0x20

    new-array v0, v0, [B

    iget v1, p0, Ll9/o;->layerAddress:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    iget-wide v1, p0, Ll9/o;->treeAddress:J

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/util/f;->h(J[BI)V

    iget v1, p0, Ll9/o;->type:I

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    iget v1, p0, Ll9/o;->keyAndMask:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    return-object v0
.end method
