.class public Lcom/narvii/feed/FeedToolbarExternalLayout;
.super Landroid/widget/LinearLayout;
.source "FeedToolbarExternalLayout.java"


# static fields
.field private static likeStr:Ljava/lang/String;


# instance fields
.field private darkTheme:Z

.field moreActionIcon:Lcom/narvii/widget/TintButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/narvii/feed/FeedToolbarExternalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f09043e

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarExternalLayout;->moreActionIcon:Lcom/narvii/widget/TintButton;

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 2

    .line 35
    iget-boolean v0, p0, Lcom/narvii/feed/FeedToolbarExternalLayout;->darkTheme:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 38
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/feed/FeedToolbarExternalLayout;->darkTheme:Z

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600e1

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/narvii/feed/FeedToolbarExternalLayout;->moreActionIcon:Lcom/narvii/widget/TintButton;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 41
    :cond_1
    invoke-virtual {v1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    :cond_2
    return-void
.end method
