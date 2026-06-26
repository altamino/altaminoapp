.class Lcom/narvii/master/MyCommunityListFragment$Adapter$2;
.super Ljava/lang/Object;
.source "MyCommunityListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MyCommunityListFragment$Adapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

.field final synthetic val$community:Lcom/narvii/model/Community;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/master/MyCommunityListFragment$Adapter;[ILcom/narvii/model/Community;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$ops:[I

    iput-object p3, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$community:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 976
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$ops:[I

    aget p1, p1, p2

    const p2, 0x7f0f02c6

    if-ne p1, p2, :cond_0

    .line 978
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 979
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$community:Lcom/narvii/model/Community;

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    const-string v0, "id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 980
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$community:Lcom/narvii/model/Community;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "prefetch"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string v0, "isCurrentUserJoined"

    .line 981
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 982
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0f0ed5

    if-ne p1, p2, :cond_1

    .line 984
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-virtual {p1}, Lcom/narvii/master/MyCommunityListFragment;->reorder()V

    goto :goto_0

    :cond_1
    const p2, 0x7f0f02c4

    if-ne p1, p2, :cond_2

    .line 986
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$community:Lcom/narvii/model/Community;

    invoke-virtual {p1, p2}, Lcom/narvii/master/MyCommunityListFragment;->createShortcut(Lcom/narvii/model/Community;)V

    goto :goto_0

    :cond_2
    const p2, 0x7f0f0e18

    if-ne p1, p2, :cond_3

    .line 988
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->this$1:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;->val$community:Lcom/narvii/model/Community;

    invoke-static {p1, p2}, Lcom/narvii/master/MyCommunityListFragment;->access$400(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/model/Community;)V

    :cond_3
    :goto_0
    return-void
.end method
