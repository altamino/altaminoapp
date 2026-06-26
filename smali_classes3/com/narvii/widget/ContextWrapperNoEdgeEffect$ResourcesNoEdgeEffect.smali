.class Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;
.super Landroid/content/res/Resources;
.source "ContextWrapperNoEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/ContextWrapperNoEdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourcesNoEdgeEffect"
.end annotation


# instance fields
.field private final emptyDrawable:Landroid/graphics/drawable/Drawable;

.field private final overscroll_edge:I

.field private final overscroll_glow:I

.field final synthetic this$0:Lcom/narvii/widget/ContextWrapperNoEdgeEffect;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/ContextWrapperNoEdgeEffect;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->this$0:Lcom/narvii/widget/ContextWrapperNoEdgeEffect;

    .line 34
    invoke-direct {p0, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const-string p1, "overscroll_edge"

    .line 28
    invoke-direct {p0, p1}, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->getDrawableId(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->overscroll_edge:I

    const-string p1, "overscroll_glow"

    .line 29
    invoke-direct {p0, p1}, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->getDrawableId(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->overscroll_glow:I

    .line 30
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-string v0, "com.android.internal.R$drawable"

    .line 40
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 51
    iget v0, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->overscroll_edge:I

    if-ne p1, v0, :cond_0

    .line 52
    iget-object p1, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 53
    :cond_0
    iget v0, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->overscroll_glow:I

    if-ne p1, v0, :cond_1

    .line 54
    iget-object p1, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 56
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
