.class public Landroidx/core/view/WindowInsetsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;,
        Landroidx/core/view/WindowInsetsCompat$TypeImpl30;,
        Landroidx/core/view/WindowInsetsCompat$Type;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl;,
        Landroidx/core/view/WindowInsetsCompat$Builder;,
        Landroidx/core/view/WindowInsetsCompat$Impl30;,
        Landroidx/core/view/WindowInsetsCompat$Impl29;,
        Landroidx/core/view/WindowInsetsCompat$Impl28;,
        Landroidx/core/view/WindowInsetsCompat$Impl21;,
        Landroidx/core/view/WindowInsetsCompat$Impl20;,
        Landroidx/core/view/WindowInsetsCompat$Impl;
    }
.end annotation


# static fields
.field public static final CONSUMED:Landroidx/core/view/WindowInsetsCompat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WindowInsetsCompat"


# instance fields
.field private final mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1e

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl30;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    .line 9
    .line 10
    sput-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    .line 14
    .line 15
    sput-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    .line 16
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl30;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl30;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl29;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl29;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 4
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl28;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl28;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl21;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 2
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 8
    instance-of v1, p1, Landroidx/core/view/WindowInsetsCompat$Impl30;

    if-eqz v1, :cond_0

    .line 9
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl30;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl30;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl30;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl30;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 10
    instance-of v1, p1, Landroidx/core/view/WindowInsetsCompat$Impl29;

    if-eqz v1, :cond_1

    .line 11
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl29;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl29;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl29;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl29;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 12
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl28;

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl28;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl28;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl28;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl28;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 14
    :cond_2
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl21;

    if-eqz v0, :cond_3

    .line 15
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl21;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl21;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl21;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 16
    :cond_3
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl20;

    if-eqz v0, :cond_4

    .line 17
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl20;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl20;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl20;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 18
    :cond_4
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 19
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->e(Landroidx/core/view/WindowInsetsCompat;)V

    goto :goto_1

    .line 20
    :cond_5
    new-instance p1, Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-direct {p1, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    :goto_1
    return-void
.end method

.method static p(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;
    .locals 5
    .param p0    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    .line 3
    sub-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget v2, p0, Landroidx/core/graphics/Insets;->top:I

    .line 11
    sub-int/2addr v2, p2

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result v2

    .line 16
    .line 17
    iget v3, p0, Landroidx/core/graphics/Insets;->right:I

    .line 18
    sub-int/2addr v3, p3

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result v3

    .line 23
    .line 24
    iget v4, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 25
    sub-int/2addr v4, p4

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 29
    move-result v1

    .line 30
    .line 31
    if-ne v0, p1, :cond_0

    .line 32
    .line 33
    if-ne v2, p2, :cond_0

    .line 34
    .line 35
    if-ne v3, p3, :cond_0

    .line 36
    .line 37
    if-ne v1, p4, :cond_0

    .line 38
    return-object p0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-static {v0, v2, v3, v1}, Landroidx/core/graphics/Insets;->b(IIII)Landroidx/core/graphics/Insets;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static y(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p0    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->z(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static z(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p0    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Landroidx/core/util/Preconditions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroid/view/WindowInsets;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroid/view/WindowInsets;)V

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->W(Landroid/view/View;)Z

    .line 17
    move-result p0

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->K(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->v(Landroidx/core/view/WindowInsetsCompat;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->d(Landroid/view/View;)V

    .line 34
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->a()Landroidx/core/view/WindowInsetsCompat;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->b()Landroidx/core/view/WindowInsetsCompat;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->c()Landroidx/core/view/WindowInsetsCompat;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method d(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->d(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public e()Landroidx/core/view/DisplayCutoutCompat;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->f()Landroidx/core/view/DisplayCutoutCompat;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_1
    check-cast p1, Landroidx/core/view/WindowInsetsCompat;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Landroidx/core/util/ObjectsCompat;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public f(I)Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->g(I)Landroidx/core/graphics/Insets;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g(I)Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->h(I)Landroidx/core/graphics/Insets;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h()Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->j()Landroidx/core/graphics/Insets;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->hashCode()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public i()Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->k()Landroidx/core/graphics/Insets;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public j()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->l()Landroidx/core/graphics/Insets;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 9
    return v0
.end method

.method public k()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->l()Landroidx/core/graphics/Insets;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v0, v0, Landroidx/core/graphics/Insets;->left:I

    .line 9
    return v0
.end method

.method public l()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->l()Landroidx/core/graphics/Insets;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    .line 9
    return v0
.end method

.method public m()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->l()Landroidx/core/graphics/Insets;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    .line 9
    return v0
.end method

.method public n()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->l()Landroidx/core/graphics/Insets;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    return v0
.end method

.method public o(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat$Impl;->n(IIII)Landroidx/core/view/WindowInsetsCompat;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public q()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->o()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public r(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->q(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public s(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, p3, p4}, Landroidx/core/graphics/Insets;->b(IIII)Landroidx/core/graphics/Insets;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->d(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->a()Landroidx/core/view/WindowInsetsCompat;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method t([Landroidx/core/graphics/Insets;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->r([Landroidx/core/graphics/Insets;)V

    .line 6
    return-void
.end method

.method u(Landroidx/core/graphics/Insets;)V
    .locals 1
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->s(Landroidx/core/graphics/Insets;)V

    .line 6
    return-void
.end method

.method v(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->t(Landroidx/core/view/WindowInsetsCompat;)V

    .line 6
    return-void
.end method

.method w(Landroidx/core/graphics/Insets;)V
    .locals 1
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->u(Landroidx/core/graphics/Insets;)V

    .line 6
    return-void
.end method

.method public x()Landroid/view/WindowInsets;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 3
    .line 4
    instance-of v1, v0, Landroidx/core/view/WindowInsetsCompat$Impl20;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroidx/core/view/WindowInsetsCompat$Impl20;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method
