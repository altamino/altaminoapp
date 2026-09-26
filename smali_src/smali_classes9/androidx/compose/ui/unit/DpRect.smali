.class public final Landroidx/compose/ui/unit/DpRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/unit/DpRect$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dp.kt\nandroidx/compose/ui/unit/DpRect\n+ 2 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,558:1\n52#2:559\n*S KotlinDebug\n*F\n+ 1 Dp.kt\nandroidx/compose/ui/unit/DpRect\n*L\n536#1:559\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/unit/DpRect$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/unit/DpRect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/DpRect$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/ui/unit/DpRect;->Companion:Landroidx/compose/ui/unit/DpRect$Companion;

    return-void
.end method

.method private constructor <init>(FFFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    iput p2, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    iput p3, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    iput p4, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/unit/DpRect;-><init>(FFFF)V

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 6

    .line 4
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpOffset;->g(J)F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpOffset;->h(J)F

    move-result v2

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpOffset;->g(J)F

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/DpSize;->h(J)F

    move-result v3

    add-float/2addr v0, v3

    .line 5
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v3

    .line 6
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpOffset;->h(J)F

    move-result p1

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/DpSize;->g(J)F

    move-result p2

    add-float/2addr p1, p2

    .line 7
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    .line 8
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/unit/DpRect;-><init>(FFFFLkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLkotlin/jvm/internal/k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/unit/DpRect;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/unit/DpRect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/unit/DpRect;

    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    iget v3, p1, Landroidx/compose/ui/unit/DpRect;->left:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    iget v3, p1, Landroidx/compose/ui/unit/DpRect;->top:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    iget v3, p1, Landroidx/compose/ui/unit/DpRect;->right:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    iget p1, p1, Landroidx/compose/ui/unit/DpRect;->bottom:F

    invoke-static {v1, p1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->j(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DpRect(left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->k(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->k(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->k(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->k(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
