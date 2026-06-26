.class Lcom/narvii/story/ShareStoryFragment$SingleItemAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "ShareStoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/ShareStoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/ShareStoryFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/ShareStoryFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment$SingleItemAdapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    .line 225
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b061b

    .line 230
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090562

    .line 231
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    const p3, 0x7f08037a

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f090b5b

    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0f011d

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 243
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$SingleItemAdapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/story/ShareStoryFragment;->toStoryPost(Lcom/narvii/model/Community;)V

    const/4 p1, 0x1

    return p1
.end method
