.class Lcom/narvii/community/CommunityShareFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CommunityShareFragment$1;->this$0:Lcom/narvii/community/CommunityShareFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/community/CommunityShareFragment$1;->val$blurBackground:Lcom/narvii/widget/PromotionalImageView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/community/CommunityShareFragment$1;->val$blurBackground:Lcom/narvii/widget/PromotionalImageView;

    .line 3
    .line 4
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 5
    .line 6
    const/high16 v1, -0x1000000

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Lcom/narvii/util/blur/NativeBlurProcess;

    .line 9
    .line 10
    .line 11
    invoke-direct {p2}, Lcom/narvii/util/blur/NativeBlurProcess;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const/high16 v0, 0x41200000    # 10.0f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/blur/NativeBlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/community/CommunityShareFragment$1;->val$blurBackground:Lcom/narvii/widget/PromotionalImageView;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/community/CommunityShareFragment$1;->this$0:Lcom/narvii/community/CommunityShareFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    :cond_0
    return-void
.end method
