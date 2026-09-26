.class public final Lcoil/fetch/g;
.super Lcoil/fetch/h;
.source "SourceFile"


# instance fields
.field private final dataSource:Lcoil/decode/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final drawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isSampled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/f;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/decode/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcoil/fetch/h;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    .line 6
    iput-object p1, p0, Lcoil/fetch/g;->drawable:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    iput-boolean p2, p0, Lcoil/fetch/g;->isSampled:Z

    .line 9
    .line 10
    iput-object p3, p0, Lcoil/fetch/g;->dataSource:Lcoil/decode/f;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lcoil/decode/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/fetch/g;->dataSource:Lcoil/decode/f;

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/fetch/g;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/fetch/g;->isSampled:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcoil/fetch/g;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcoil/fetch/g;->drawable:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    check-cast p1, Lcoil/fetch/g;

    .line 13
    .line 14
    iget-object v2, p1, Lcoil/fetch/g;->drawable:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Lcoil/fetch/g;->isSampled:Z

    .line 23
    .line 24
    iget-boolean v2, p1, Lcoil/fetch/g;->isSampled:Z

    .line 25
    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcoil/fetch/g;->dataSource:Lcoil/decode/f;

    .line 29
    .line 30
    iget-object p1, p1, Lcoil/fetch/g;->dataSource:Lcoil/decode/f;

    .line 31
    .line 32
    if-ne v1, p1, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/fetch/g;->drawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean v1, p0, Lcoil/fetch/g;->isSampled:Z

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v1, p0, Lcoil/fetch/g;->dataSource:Lcoil/decode/f;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method
