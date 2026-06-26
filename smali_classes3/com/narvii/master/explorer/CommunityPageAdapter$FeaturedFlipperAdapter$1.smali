.class Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter$1;
.super Ljava/lang/Object;
.source "CommunityPageAdapter.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->getView(Lcom/narvii/master/explorer/CommunityCollection;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

.field final synthetic val$loadingView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;Landroid/view/View;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter$1;->this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter$1;->val$loadingView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 469
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 470
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter$1;->val$loadingView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
