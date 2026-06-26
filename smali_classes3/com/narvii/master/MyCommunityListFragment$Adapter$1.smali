.class Lcom/narvii/master/MyCommunityListFragment$Adapter$1;
.super Ljava/lang/Object;
.source "MyCommunityListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MyCommunityListFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

.field final synthetic val$c:Lcom/narvii/model/Community;


# direct methods
.method constructor <init>(Lcom/narvii/master/MyCommunityListFragment$Adapter;Lcom/narvii/model/Community;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$1;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$1;->val$c:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 910
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$1;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$1;->val$c:Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/master/MyCommunityListFragment;->access$400(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/model/Community;)V

    return-void
.end method
