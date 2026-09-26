.class Lcom/narvii/master/MyCommunityListFragment$Adapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$1;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$1;->val$c:Lcom/narvii/model/Community;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$1;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$1;->val$c:Lcom/narvii/model/Community;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/master/MyCommunityListFragment;->x(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/model/Community;)V

    .line 10
    return-void
.end method
