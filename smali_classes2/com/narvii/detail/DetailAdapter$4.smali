.class Lcom/narvii/detail/DetailAdapter$4;
.super Ljava/lang/Object;
.source "DetailAdapter.java"

# interfaces
.implements Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/DetailAdapter;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/detail/DetailAdapter;Landroid/widget/TextView;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$4;->this$0:Lcom/narvii/detail/DetailAdapter;

    iput-object p2, p0, Lcom/narvii/detail/DetailAdapter$4;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetMeasuredDimension(II)V
    .locals 0

    .line 1052
    iget-object p2, p0, Lcom/narvii/detail/DetailAdapter$4;->val$tv:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 1053
    iget-object p2, p0, Lcom/narvii/detail/DetailAdapter$4;->val$tv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setWidth(I)V

    :cond_0
    return-void
.end method
