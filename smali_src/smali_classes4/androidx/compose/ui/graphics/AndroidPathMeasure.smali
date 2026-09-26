.class public final Landroidx/compose/ui/graphics/AndroidPathMeasure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/PathMeasure;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidPathMeasure.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPathMeasure.android.kt\nandroidx/compose/ui/graphics/AndroidPathMeasure\n+ 2 AndroidPath.android.kt\nandroidx/compose/ui/graphics/AndroidPath_androidKt\n*L\n1#1,46:1\n35#2,5:47\n35#2,5:52\n*S KotlinDebug\n*F\n+ 1 AndroidPathMeasure.android.kt\nandroidx/compose/ui/graphics/AndroidPathMeasure\n*L\n37#1:47,5\n43#1:52,5\n*E\n"
.end annotation


# instance fields
.field private final internalPathMeasure:Landroid/graphics/PathMeasure;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/PathMeasure;)V
    .locals 1
    .param p1    # Landroid/graphics/PathMeasure;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "internalPathMeasure"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPathMeasure;->internalPathMeasure:Landroid/graphics/PathMeasure;

    .line 11
    return-void
.end method


# virtual methods
.method public a(FFLandroidx/compose/ui/graphics/Path;Z)Z
    .locals 2
    .param p3    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "destination"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPathMeasure;->internalPathMeasure:Landroid/graphics/PathMeasure;

    .line 8
    .line 9
    instance-of v1, p3, Landroidx/compose/ui/graphics/AndroidPath;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast p3, Landroidx/compose/ui/graphics/AndroidPath;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/AndroidPath;->n()Landroid/graphics/Path;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 25
    .line 26
    const-string p2, "Unable to obtain android.graphics.Path"

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1
.end method

.method public b(Landroidx/compose/ui/graphics/Path;Z)V
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPathMeasure;->internalPathMeasure:Landroid/graphics/PathMeasure;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    instance-of v1, p1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/AndroidPath;->n()Landroid/graphics/Path;

    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    const-string p2, "Unable to obtain android.graphics.Path"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 28
    return-void
.end method

.method public getLength()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPathMeasure;->internalPathMeasure:Landroid/graphics/PathMeasure;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method
