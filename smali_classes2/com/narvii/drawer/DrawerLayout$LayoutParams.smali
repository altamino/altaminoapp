.class public Lcom/narvii/drawer/DrawerLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final FLAG_IS_CLOSING:I = 0x4

.field private static final FLAG_IS_OPENED:I = 0x1

.field private static final FLAG_IS_OPENING:I = 0x2


# instance fields
.field public gravity:I

.field protected isPeeking:Z

.field protected onScreen:F

.field protected openState:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2272
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2258
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2276
    invoke-direct {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout$LayoutParams;-><init>(II)V

    .line 2277
    iput p3, p0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2264
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2258
    iput v0, p0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 2266
    invoke-static {}, Lcom/narvii/drawer/DrawerLayout;->access$300()[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2267
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 2268
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2286
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 2258
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 2290
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 2258
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/drawer/DrawerLayout$LayoutParams;)V
    .locals 1

    .line 2281
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    const/4 v0, 0x0

    .line 2258
    iput v0, p0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 2282
    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    iput p1, p0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method
