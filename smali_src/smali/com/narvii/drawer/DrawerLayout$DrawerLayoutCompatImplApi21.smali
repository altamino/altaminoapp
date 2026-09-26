.class Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImplApi21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawerLayoutCompatImplApi21"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lcom/narvii/drawer/DrawerLayoutCompatApi21;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    .line 4
    return-void
.end method

.method public configureApplyInsets(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/drawer/DrawerLayoutCompatApi21;->configureApplyInsets(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lcom/narvii/drawer/DrawerLayoutCompatApi21;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    .line 4
    return-void
.end method

.method public getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/drawer/DrawerLayoutCompatApi21;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getTopInset(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/drawer/DrawerLayoutCompatApi21;->getTopInset(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method
