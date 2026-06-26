.class Lcom/narvii/item/contributor/ContributorSortFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "ContributorSortFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/contributor/ContributorSortFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/item/contributor/Contributor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/contributor/ContributorSortFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/item/contributor/ContributorSortFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/item/contributor/Contributor;",
            ">;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/narvii/item/contributor/ContributorSortFragment$Adapter;->this$0:Lcom/narvii/item/contributor/ContributorSortFragment;

    .line 98
    const-class v0, Lcom/narvii/item/contributor/Contributor;

    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 103
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/item/contributor/Contributor;

    const v0, 0x7f0b06b5

    .line 104
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900e4

    .line 105
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p3, 0x7f090764

    .line 106
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 107
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p1}, Lcom/narvii/item/contributor/Contributor;->isOriginalAuthor()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0d0d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, -0xcb6d25

    invoke-virtual {p3, p1, v0}, Lcom/narvii/widget/NicknameView;->setRole2(Ljava/lang/String;I)V

    return-object p2
.end method
