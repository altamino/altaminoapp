.class Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter$1;->this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter$1;->val$loadingView:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    const/4 p3, 0x4

    .line 2
    .line 3
    if-ne p2, p3, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter$1;->val$loadingView:Landroid/view/View;

    .line 12
    .line 13
    const/16 p2, 0x8

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_0
    return-void
.end method
