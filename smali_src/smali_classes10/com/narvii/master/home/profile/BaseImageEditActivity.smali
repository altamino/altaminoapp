.class public abstract Lcom/narvii/master/home/profile/BaseImageEditActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/narvii/post/PostObject;",
        ">",
        "Lcom/narvii/post/BasePostActivity<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public image:Lcom/narvii/widget/NVImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    const/high16 v1, -0x1000000

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 8
    return-object v0
.end method

.method public final getImage()Lcom/narvii/widget/NVImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/BaseImageEditActivity;->image:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "image"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0d003b

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const v0, 0x7f080369

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    const-string p1, ""

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const p1, 0x7f0a06eb

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    const-string v0, "findViewById(...)"

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/BaseImageEditActivity;->setImage(Lcom/narvii/widget/NVImageView;)V

    .line 49
    return-void
.end method

.method public final setImage(Lcom/narvii/widget/NVImageView;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/NVImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/BaseImageEditActivity;->image:Lcom/narvii/widget/NVImageView;

    return-void
.end method

.method protected supportPreview()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
