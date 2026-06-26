.class public Lcom/narvii/link/view/CommunityInfoItem;
.super Landroid/widget/LinearLayout;
.source "CommunityInfoItem.java"


# instance fields
.field public icon:Lcom/narvii/widget/NVImageView;

.field private name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 25
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0902a3

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/link/view/CommunityInfoItem;->icon:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0902b6

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/link/view/CommunityInfoItem;->name:Landroid/widget/TextView;

    return-void
.end method

.method public setCommunity(Lcom/narvii/model/Community;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/narvii/link/view/CommunityInfoItem;->icon:Lcom/narvii/widget/NVImageView;

    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 36
    iget-object v0, p0, Lcom/narvii/link/view/CommunityInfoItem;->name:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/link/view/CommunityInfoItem;->name:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const p1, -0x4c4c4d

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
