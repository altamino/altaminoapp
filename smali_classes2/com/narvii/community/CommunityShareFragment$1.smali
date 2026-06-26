.class Lcom/narvii/community/CommunityShareFragment$1;
.super Ljava/lang/Object;
.source "CommunityShareFragment.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/CommunityShareFragment;->configContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityShareFragment;

.field final synthetic val$blurBackground:Lcom/narvii/widget/PromotionalImageView;


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityShareFragment;Lcom/narvii/widget/PromotionalImageView;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/narvii/community/CommunityShareFragment$1;->this$0:Lcom/narvii/community/CommunityShareFragment;

    iput-object p2, p0, Lcom/narvii/community/CommunityShareFragment$1;->val$blurBackground:Lcom/narvii/widget/PromotionalImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lcom/narvii/community/CommunityShareFragment$1;->val$blurBackground:Lcom/narvii/widget/PromotionalImageView;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 94
    new-instance p2, Lcom/narvii/util/blur/NativeBlurProcess;

    invoke-direct {p2}, Lcom/narvii/util/blur/NativeBlurProcess;-><init>()V

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/blur/NativeBlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/narvii/community/CommunityShareFragment$1;->val$blurBackground:Lcom/narvii/widget/PromotionalImageView;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/narvii/community/CommunityShareFragment$1;->this$0:Lcom/narvii/community/CommunityShareFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
