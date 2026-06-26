.class final Lcom/narvii/topic/TopicTabFragment$onViewCreated$4$1;
.super Ljava/lang/Object;
.source "TopicTabFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;->onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $view:Lcom/narvii/widget/NVImageView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4$1;->$view:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4$1;->$view:Lcom/narvii/widget/NVImageView;

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget-object v2, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4$1;->$view:Lcom/narvii/widget/NVImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "view.drawable"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 169
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 170
    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 171
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4$1;->$view:Lcom/narvii/widget/NVImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
