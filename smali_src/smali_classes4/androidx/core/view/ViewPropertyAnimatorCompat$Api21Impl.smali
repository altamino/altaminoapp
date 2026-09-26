.class Landroidx/core/view/ViewPropertyAnimatorCompat$Api21Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static a(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static b(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationZBy(F)Landroid/view/ViewPropertyAnimator;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static c(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->z(F)Landroid/view/ViewPropertyAnimator;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static d(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->zBy(F)Landroid/view/ViewPropertyAnimator;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
