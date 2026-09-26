.class final Lcom/google/android/material/shape/g$c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public alpha:I

.field public colorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public elevation:F

.field public elevationOverlayProvider:Ll3/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public fillColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public interpolation:F

.field public padding:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public paintStyle:Landroid/graphics/Paint$Style;

.field public parentAbsoluteElevation:F

.field public scale:F

.field public shadowCompatMode:I

.field public shadowCompatOffset:I

.field public shadowCompatRadius:I

.field public shadowCompatRotation:I

.field public shapeAppearanceModel:Lcom/google/android/material/shape/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public strokeColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public strokeTintList:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public strokeWidth:F

.field public tintList:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public tintMode:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public translationZ:F

.field public useTintColorForShadow:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/g$c;)V
    .locals 2
    .param p1    # Lcom/google/android/material/shape/g$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->fillColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->strokeColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->strokeTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->tintList:Landroid/content/res/ColorStateList;

    .line 5
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/google/android/material/shape/g$c;->tintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->padding:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/shape/g$c;->scale:F

    iput v0, p0, Lcom/google/android/material/shape/g$c;->interpolation:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/shape/g$c;->alpha:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/shape/g$c;->parentAbsoluteElevation:F

    iput v0, p0, Lcom/google/android/material/shape/g$c;->elevation:F

    iput v0, p0, Lcom/google/android/material/shape/g$c;->translationZ:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/shape/g$c;->shadowCompatMode:I

    iput v0, p0, Lcom/google/android/material/shape/g$c;->shadowCompatRadius:I

    iput v0, p0, Lcom/google/android/material/shape/g$c;->shadowCompatOffset:I

    iput v0, p0, Lcom/google/android/material/shape/g$c;->shadowCompatRotation:I

    iput-boolean v0, p0, Lcom/google/android/material/shape/g$c;->useTintColorForShadow:Z

    .line 6
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->paintStyle:Landroid/graphics/Paint$Style;

    .line 7
    iget-object v0, p1, Lcom/google/android/material/shape/g$c;->shapeAppearanceModel:Lcom/google/android/material/shape/k;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->shapeAppearanceModel:Lcom/google/android/material/shape/k;

    .line 8
    iget-object v0, p1, Lcom/google/android/material/shape/g$c;->elevationOverlayProvider:Ll3/a;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->elevationOverlayProvider:Ll3/a;

    .line 9
    iget v0, p1, Lcom/google/android/material/shape/g$c;->strokeWidth:F

    iput v0, p0, Lcom/google/android/material/shape/g$c;->strokeWidth:F

    .line 10
    iget-object v0, p1, Lcom/google/android/material/shape/g$c;->colorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->colorFilter:Landroid/graphics/ColorFilter;

    .line 11
    iget-object v0, p1, Lcom/google/android/material/shape/g$c;->fillColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->fillColor:Landroid/content/res/ColorStateList;

    .line 12
    iget-object v0, p1, Lcom/google/android/material/shape/g$c;->strokeColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->strokeColor:Landroid/content/res/ColorStateList;

    .line 13
    iget-object v0, p1, Lcom/google/android/material/shape/g$c;->tintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 14
    iget-object v0, p1, Lcom/google/android/material/shape/g$c;->tintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->tintList:Landroid/content/res/ColorStateList;

    .line 15
    iget v0, p1, Lcom/google/android/material/shape/g$c;->alpha:I

    iput v0, p0, Lcom/google/android/material/shape/g$c;->alpha:I

    .line 16
    iget v0, p1, Lcom/google/android/material/shape/g$c;->scale:F

    iput v0, p0, Lcom/google/android/material/shape/g$c;->scale:F

    .line 17
    iget v0, p1, Lcom/google/android/material/shape/g$c;->shadowCompatOffset:I

    iput v0, p0, Lcom/google/android/material/shape/g$c;->shadowCompatOffset:I

    .line 18
    iget v0, p1, Lcom/google/android/material/shape/g$c;->shadowCompatMode:I

    iput v0, p0, Lcom/google/android/material/shape/g$c;->shadowCompatMode:I

    .line 19
    iget-boolean v0, p1, Lcom/google/android/material/shape/g$c;->useTintColorForShadow:Z

    iput-boolean v0, p0, Lcom/google/android/material/shape/g$c;->useTintColorForShadow:Z

    .line 20
    iget v0, p1, Lcom/google/android/material/shape/g$c;->interpolation:F

    iput v0, p0, Lcom/google/android/material/shape/g$c;->interpolation:F

    .line 21
    iget v0, p1, Lcom/google/android/material/shape/g$c;->parentAbsoluteElevation:F

    iput v0, p0, Lcom/google/android/material/shape/g$c;->parentAbsoluteElevation:F

    .line 22
    iget v0, p1, Lcom/google/android/material/shape/g$c;->elevation:F

    iput v0, p0, Lcom/google/android/material/shape/g$c;->elevation:F

    .line 23
    iget v0, p1, Lcom/google/android/material/shape/g$c;->translationZ:F

    iput v0, p0, Lcom/google/android/material/shape/g$c;->translationZ:F

    .line 24
    iget v0, p1, Lcom/google/android/material/shape/g$c;->shadowCompatRadius:I

    iput v0, p0, Lcom/google/android/material/shape/g$c;->shadowCompatRadius:I

    .line 25
    iget v0, p1, Lcom/google/android/material/shape/g$c;->shadowCompatRotation:I

    iput v0, p0, Lcom/google/android/material/shape/g$c;->shadowCompatRotation:I

    .line 26
    iget-object v0, p1, Lcom/google/android/material/shape/g$c;->strokeTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 27
    iget-object v0, p1, Lcom/google/android/material/shape/g$c;->paintStyle:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->paintStyle:Landroid/graphics/Paint$Style;

    .line 28
    iget-object v0, p1, Lcom/google/android/material/shape/g$c;->padding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/google/android/material/shape/g$c;->padding:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->padding:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/k;Ll3/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->fillColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->strokeColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->strokeTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->tintList:Landroid/content/res/ColorStateList;

    .line 2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/google/android/material/shape/g$c;->tintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->padding:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/shape/g$c;->scale:F

    iput v0, p0, Lcom/google/android/material/shape/g$c;->interpolation:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/shape/g$c;->alpha:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/shape/g$c;->parentAbsoluteElevation:F

    iput v0, p0, Lcom/google/android/material/shape/g$c;->elevation:F

    iput v0, p0, Lcom/google/android/material/shape/g$c;->translationZ:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/shape/g$c;->shadowCompatMode:I

    iput v0, p0, Lcom/google/android/material/shape/g$c;->shadowCompatRadius:I

    iput v0, p0, Lcom/google/android/material/shape/g$c;->shadowCompatOffset:I

    iput v0, p0, Lcom/google/android/material/shape/g$c;->shadowCompatRotation:I

    iput-boolean v0, p0, Lcom/google/android/material/shape/g$c;->useTintColorForShadow:Z

    .line 3
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/shape/g$c;->paintStyle:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Lcom/google/android/material/shape/g$c;->shapeAppearanceModel:Lcom/google/android/material/shape/k;

    iput-object p2, p0, Lcom/google/android/material/shape/g$c;->elevationOverlayProvider:Ll3/a;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/shape/g;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/shape/g;-><init>(Lcom/google/android/material/shape/g$c;Lcom/google/android/material/shape/g$a;)V

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/android/material/shape/g;->e(Lcom/google/android/material/shape/g;Z)Z

    .line 11
    return-object v0
.end method
