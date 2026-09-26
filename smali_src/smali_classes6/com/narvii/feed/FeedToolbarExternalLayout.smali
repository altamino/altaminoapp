.class public Lcom/narvii/feed/FeedToolbarExternalLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static likeStr:Ljava/lang/String;


# instance fields
.field private darkTheme:Z

.field moreActionIcon:Lcom/narvii/widget/TintButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/feed/FeedToolbarExternalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    const v0, 0x7f0a0575

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarExternalLayout;->moreActionIcon:Lcom/narvii/widget/TintButton;

    .line 15
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/feed/FeedToolbarExternalLayout;->darkTheme:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/feed/FeedToolbarExternalLayout;->darkTheme:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f060125

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 18
    move-result v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/feed/FeedToolbarExternalLayout;->moreActionIcon:Lcom/narvii/widget/TintButton;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    const/4 v0, -0x1

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 29
    :cond_2
    return-void
.end method
