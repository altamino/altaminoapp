.class Lcom/narvii/detail/DetailAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$4;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/detail/DetailAdapter$4;->val$tv:Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onSetMeasuredDimension(II)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/detail/DetailAdapter$4;->val$tv:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 6
    move-result p2

    .line 7
    .line 8
    if-eq p1, p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/detail/DetailAdapter$4;->val$tv:Landroid/widget/TextView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setWidth(I)V

    .line 14
    :cond_0
    return-void
.end method
