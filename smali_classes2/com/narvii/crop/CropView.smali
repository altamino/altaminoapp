.class public Lcom/narvii/crop/CropView;
.super Landroid/widget/FrameLayout;
.source "CropView.java"


# instance fields
.field private final mGestureCropImageView:Lcom/narvii/crop/GestureCropImageView;

.field private final mViewOverlay:Lcom/narvii/crop/OverlayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/crop/CropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/narvii/lib/R$layout;->ucrop_view:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    sget p3, Lcom/narvii/lib/R$id;->image_view_crop:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/crop/GestureCropImageView;

    iput-object p3, p0, Lcom/narvii/crop/CropView;->mGestureCropImageView:Lcom/narvii/crop/GestureCropImageView;

    .line 27
    sget p3, Lcom/narvii/lib/R$id;->view_overlay:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/crop/OverlayView;

    iput-object p3, p0, Lcom/narvii/crop/CropView;->mViewOverlay:Lcom/narvii/crop/OverlayView;

    .line 28
    sget-object p3, Lcom/narvii/lib/R$styleable;->ucrop_UCropView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/narvii/crop/CropView;->getOverlayView()Lcom/narvii/crop/OverlayView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/crop/OverlayView;->processStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getImageView()Lcom/narvii/crop/GestureCropImageView;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/crop/CropView;->mGestureCropImageView:Lcom/narvii/crop/GestureCropImageView;

    return-object v0
.end method

.method public getOverlayView()Lcom/narvii/crop/OverlayView;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/crop/CropView;->mViewOverlay:Lcom/narvii/crop/OverlayView;

    return-object v0
.end method

.method public setAspectRatio(F)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/narvii/crop/CropView;->mGestureCropImageView:Lcom/narvii/crop/GestureCropImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/crop/CropImageView;->setTargetAspectRatio(F)V

    .line 50
    iget-object v0, p0, Lcom/narvii/crop/CropView;->mViewOverlay:Lcom/narvii/crop/OverlayView;

    invoke-virtual {v0, p1}, Lcom/narvii/crop/OverlayView;->setTargetAspectRatio(F)V

    return-void
.end method

.method public setCustomPadding(IIII)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/narvii/crop/CropView;->mGestureCropImageView:Lcom/narvii/crop/GestureCropImageView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/crop/CropImageView;->setCustomPadding(IIII)V

    .line 55
    iget-object v0, p0, Lcom/narvii/crop/CropView;->mViewOverlay:Lcom/narvii/crop/OverlayView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/crop/OverlayView;->setCustomPadding(IIII)V

    return-void
.end method

.method public setHorizontalAdjust(Z)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/crop/CropView;->mViewOverlay:Lcom/narvii/crop/OverlayView;

    invoke-virtual {v0, p1}, Lcom/narvii/crop/OverlayView;->setHorizontalAdjust(Z)V

    .line 60
    iget-object v0, p0, Lcom/narvii/crop/CropView;->mGestureCropImageView:Lcom/narvii/crop/GestureCropImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/crop/CropImageView;->sethAdjust(Z)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
