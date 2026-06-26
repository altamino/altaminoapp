.class public Lcom/narvii/post/entry/ComposeEntryItem;
.super Landroid/widget/FrameLayout;
.source "ComposeEntryItem.java"


# instance fields
.field private levelNo:Landroid/widget/TextView;

.field private lockView:Lcom/narvii/widget/TintButton;

.field private plusView:Landroid/widget/ImageView;

.field private popButton:Lcom/narvii/widget/PopButton;

.field private tvLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getIconDrawableByEntryItem(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "story"

    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f0801b0

    goto/16 :goto_0

    :cond_1
    const-string v1, "post_publicChat"

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const p1, 0x7f0801a9

    goto/16 :goto_0

    :cond_2
    const-string v1, "go_live"

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const p1, 0x7f0802db

    goto :goto_0

    :cond_3
    const-string v1, "image"

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const p1, 0x7f0801aa

    goto :goto_0

    :cond_4
    const-string v1, "blog"

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const p1, 0x7f0801a8

    goto :goto_0

    :cond_5
    const-string v1, "quiz"

    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const p1, 0x7f0801af

    goto :goto_0

    :cond_6
    const-string v1, "webLink"

    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const p1, 0x7f0801ac

    goto :goto_0

    :cond_7
    const-string v1, "poll"

    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const p1, 0x7f0801ad

    goto :goto_0

    :cond_8
    const-string v1, "question"

    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const p1, 0x7f0801ae

    goto :goto_0

    :cond_9
    const-string v1, "wikiEntry"

    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const p1, 0x7f0801ab

    goto :goto_0

    :cond_a
    const-string v1, "draft"

    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x7f08032b

    .line 121
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_b
    return-object v0
.end method

.method private getPostEntryBackgroundColor(Ljava/lang/String;)I
    .locals 2

    const v0, 0x7f060157

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "story"

    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0601f8

    goto/16 :goto_0

    :cond_1
    const-string v1, "post_publicChat"

    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f060076

    goto/16 :goto_0

    :cond_2
    const-string v1, "go_live"

    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f0600ea

    goto :goto_0

    :cond_3
    const-string v1, "image"

    .line 166
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f06015e

    goto :goto_0

    :cond_4
    const-string v1, "blog"

    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const-string v1, "quiz"

    .line 170
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x7f060167

    goto :goto_0

    :cond_6
    const-string v1, "webLink"

    .line 172
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x7f060161

    goto :goto_0

    :cond_7
    const-string v1, "poll"

    .line 174
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x7f060164

    goto :goto_0

    :cond_8
    const-string v1, "question"

    .line 176
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x7f060166

    goto :goto_0

    :cond_9
    const-string v1, "wikiEntry"

    .line 178
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v0, 0x7f06016e

    goto :goto_0

    :cond_a
    const-string v1, "draft"

    .line 180
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const v0, 0x7f060158

    :cond_b
    :goto_0
    return v0
.end method

.method private getPostNameByEntryItem(Ljava/lang/String;)I
    .locals 2

    const v0, 0x7f0f0d99

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "story"

    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0f0da1

    goto/16 :goto_0

    :cond_1
    const-string v1, "post_publicChat"

    .line 131
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0f0d9a

    goto/16 :goto_0

    :cond_2
    const-string v1, "go_live"

    .line 133
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f0f01ea

    goto :goto_0

    :cond_3
    const-string v1, "image"

    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0f0d9b

    goto :goto_0

    :cond_4
    const-string v1, "blog"

    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const-string v1, "quiz"

    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x7f0f0da0

    goto :goto_0

    :cond_6
    const-string v1, "webLink"

    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x7f0f0d9d

    goto :goto_0

    :cond_7
    const-string v1, "poll"

    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x7f0f0d9e

    goto :goto_0

    :cond_8
    const-string v1, "question"

    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x7f0f0d9f

    goto :goto_0

    :cond_9
    const-string v1, "wikiEntry"

    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v0, 0x7f0f0d9c

    goto :goto_0

    :cond_a
    const-string v1, "draft"

    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const v0, 0x7f0f0d95

    :cond_b
    :goto_0
    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09088b

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/PopButton;

    iput-object v0, p0, Lcom/narvii/post/entry/ComposeEntryItem;->popButton:Lcom/narvii/widget/PopButton;

    const v0, 0x7f09089c

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/post/entry/ComposeEntryItem;->tvLabel:Landroid/widget/TextView;

    const v0, 0x7f090657

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/post/entry/ComposeEntryItem;->lockView:Lcom/narvii/widget/TintButton;

    const v0, 0x7f090658

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/post/entry/ComposeEntryItem;->levelNo:Landroid/widget/TextView;

    const v0, 0x7f090854

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/post/entry/ComposeEntryItem;->plusView:Landroid/widget/ImageView;

    return-void
.end method

.method public setEntryItem(Lcom/narvii/app/NVContext;Lcom/narvii/modulization/entry/EntryEligibleCheckResult;Ljava/lang/String;I)V
    .locals 7

    .line 51
    iget-boolean p2, p2, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 52
    new-instance v0, Lcom/narvii/modulization/entry/EntryManager;

    invoke-direct {v0, p1}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 53
    invoke-static {p3}, Lcom/narvii/modulization/entry/EntryManager;->getEntryItem(Ljava/lang/String;)Lcom/narvii/modulization/entry/EntryItem;

    move-result-object p1

    .line 54
    iget-object v1, p0, Lcom/narvii/post/entry/ComposeEntryItem;->popButton:Lcom/narvii/widget/PopButton;

    invoke-direct {p0, p3}, Lcom/narvii/post/entry/ComposeEntryItem;->getIconDrawableByEntryItem(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v2, "config"

    .line 56
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    const-string v2, "draft"

    .line 57
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 58
    iget-object v3, p0, Lcom/narvii/post/entry/ComposeEntryItem;->popButton:Lcom/narvii/widget/PopButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, p3}, Lcom/narvii/post/entry/ComposeEntryItem;->getPostEntryBackgroundColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 58
    invoke-virtual {p1, v4, v5}, Lcom/narvii/modulization/entry/EntryItem;->getIconBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object p1, p0, Lcom/narvii/post/entry/ComposeEntryItem;->popButton:Lcom/narvii/widget/PopButton;

    if-nez p2, :cond_1

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x30000000

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, -0x1

    :goto_1
    invoke-virtual {p1, v3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/narvii/post/entry/ComposeEntryItem;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/narvii/post/entry/ComposeEntryItem;->getPostNameByEntryItem(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-lez p4, :cond_3

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0f0d95

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object v2, p0, Lcom/narvii/post/entry/ComposeEntryItem;->tvLabel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_3
    invoke-static {p3}, Lcom/narvii/modulization/entry/EntryManager;->getEntryPath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 71
    invoke-virtual {v0, p1}, Lcom/narvii/modulization/entry/EntryManager;->getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;

    move-result-object p1

    .line 72
    iget-object p1, p1, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p1, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 74
    :goto_3
    iget-object p2, p0, Lcom/narvii/post/entry/ComposeEntryItem;->lockView:Lcom/narvii/widget/TintButton;

    const/16 v0, 0x8

    if-lez p1, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object p2, p0, Lcom/narvii/post/entry/ComposeEntryItem;->levelNo:Landroid/widget/TextView;

    if-lez p1, :cond_7

    goto :goto_5

    :cond_7
    const/16 p4, 0x8

    :goto_5
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object p2, p0, Lcom/narvii/post/entry/ComposeEntryItem;->levelNo:Landroid/widget/TextView;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LV"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "post_publicChat"

    .line 78
    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "go_live"

    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 79
    :cond_8
    iget-object p1, p0, Lcom/narvii/post/entry/ComposeEntryItem;->lockView:Lcom/narvii/widget/TintButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/narvii/post/entry/ComposeEntryItem;->levelNo:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method
