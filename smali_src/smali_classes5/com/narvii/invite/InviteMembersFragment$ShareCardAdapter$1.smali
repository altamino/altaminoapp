.class Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;

.field final synthetic val$blurBackground:Lcom/narvii/widget/PromotionalImageView;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;Lcom/narvii/widget/PromotionalImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter$1;->this$1:Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter$1;->val$blurBackground:Lcom/narvii/widget/PromotionalImageView;

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
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter$1;->val$blurBackground:Lcom/narvii/widget/PromotionalImageView;

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
    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter$1;->this$1:Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    move-result p2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance p2, Lcom/narvii/util/blur/NativeBlurProcess;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2}, Lcom/narvii/util/blur/NativeBlurProcess;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const/high16 v0, 0x41200000    # 10.0f

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/blur/NativeBlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter$1;->val$blurBackground:Lcom/narvii/widget/PromotionalImageView;

    .line 34
    .line 35
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter$1;->this$1:Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_0
    return-void
.end method
