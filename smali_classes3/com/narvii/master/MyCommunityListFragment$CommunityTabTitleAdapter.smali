.class Lcom/narvii/master/MyCommunityListFragment$CommunityTabTitleAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "MyCommunityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MyCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommunityTabTitleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/MyCommunityListFragment;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$CommunityTabTitleAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 530
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$CommunityTabTitleAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b035a

    .line 535
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
