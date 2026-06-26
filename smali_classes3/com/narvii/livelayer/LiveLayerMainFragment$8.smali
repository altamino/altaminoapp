.class Lcom/narvii/livelayer/LiveLayerMainFragment$8;
.super Lcom/narvii/members/PeopleListAdapter;
.source "LiveLayerMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerMainFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final MEMBERS_COUNT:I = 0x3c


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

.field final synthetic val$allMembersTitleAdapter:Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;ZLcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$8;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iput-object p4, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$8;->val$allMembersTitleAdapter:Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;

    invoke-direct {p0, p2, p3}, Lcom/narvii/members/PeopleListAdapter;-><init>(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method


# virtual methods
.method public allMembersLimit()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method protected onAllMembersCountFetched(I)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$8;->val$allMembersTitleAdapter:Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;

    invoke-static {v0, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->access$200(Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;I)V

    return-void
.end method

.method protected onSeeAllClick()Z
    .locals 4

    .line 478
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getAreaName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$8;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$000(Lcom/narvii/livelayer/LiveLayerMainFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 484
    :cond_1
    const-class v0, Lcom/narvii/members/PeopleListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "Source"

    const-string v3, "Live Layer"

    .line 485
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v1
.end method
