.class public Lcom/narvii/link/view/CommunityInfoItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public icon:Lcom/narvii/widget/NVImageView;

.field private name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a036b

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/link/view/CommunityInfoItem;->icon:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a037c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/link/view/CommunityInfoItem;->name:Landroid/widget/TextView;

    .line 26
    return-void
.end method

.method public setCommunity(Lcom/narvii/model/Community;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/view/CommunityInfoItem;->icon:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/link/view/CommunityInfoItem;->name:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/view/CommunityInfoItem;->name:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, -0x1

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    const p1, -0x4c4c4d

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    return-void
.end method
