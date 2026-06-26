.class Lcom/narvii/master/MyCommunityListFragment$SuggestedCommunityHeader;
.super Lcom/narvii/list/NVAdapter;
.source "MyCommunityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MyCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestedCommunityHeader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/MyCommunityListFragment;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestedCommunityHeader;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 614
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestedCommunityHeader;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-static {v0}, Lcom/narvii/master/MyCommunityListFragment;->access$300(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestedCommunityHeader;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-static {v0}, Lcom/narvii/master/MyCommunityListFragment;->access$300(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b04f2

    .line 642
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
