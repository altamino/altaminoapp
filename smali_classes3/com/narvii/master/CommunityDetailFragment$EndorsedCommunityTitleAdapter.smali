.class Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "CommunityDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndorsedCommunityTitleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1477
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 1478
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 1479
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1485
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment;->endorsedCommunityAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b0476

    .line 1490
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1491
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0600a3

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method
