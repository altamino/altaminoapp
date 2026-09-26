.class Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;
.super Landroid/content/res/Resources;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->this$0:Lcom/narvii/widget/ContextWrapperNoEdgeEffect;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 6
    .line 7
    const-string p1, "overscroll_edge"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->getDrawableId(Ljava/lang/String;)I

    .line 11
    move-result p1

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->overscroll_edge:I

    .line 14
    .line 15
    const-string p1, "overscroll_glow"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->getDrawableId(Ljava/lang/String;)I

    .line 19
    move-result p1

    .line 20
    .line 21
    iput p1, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->overscroll_glow:I

    .line 22
    .line 23
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 24
    const/4 p2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    return-void
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    :try_start_0
    const-string v0, "com.android.internal.R$drawable"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p1

    .line 23
    :catch_0
    const/4 p1, 0x0

    .line 24
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

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->overscroll_edge:I

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->overscroll_glow:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    return-object p1

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
