.class public final Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundsCompat"
.end annotation


# instance fields
.field private final mLowerBound:Landroidx/core/graphics/Insets;

.field private final mUpperBound:Landroidx/core/graphics/Insets;


# direct methods
.method private constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimation$Bounds;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->g(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Landroidx/core/graphics/Insets;

    .line 4
    invoke-static {p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->f(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/core/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Landroidx/core/graphics/Insets;

    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Landroidx/core/graphics/Insets;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Landroidx/core/graphics/Insets;

    return-void
.end method

.method public static d(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 1
    .param p0    # Landroid/view/WindowInsetsAnimation$Bounds;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Landroid/view/WindowInsetsAnimation$Bounds;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method public b()Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method public c()Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->e(Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Bounds{lower="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Landroidx/core/graphics/Insets;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " upper="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Landroidx/core/graphics/Insets;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "}"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
