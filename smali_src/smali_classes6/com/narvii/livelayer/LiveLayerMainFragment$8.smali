.class Lcom/narvii/livelayer/LiveLayerMainFragment$8;
.super Lcom/narvii/members/PeopleListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$8;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    iput-object p4, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$8;->val$allMembersTitleAdapter:Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lcom/narvii/members/PeopleListAdapter;-><init>(Lcom/narvii/app/NVContext;Z)V

    .line 8
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$8;->val$allMembersTitleAdapter:Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->f(Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;I)V

    .line 6
    return-void
.end method

.method protected onSeeAllClick()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getAreaName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$8;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->v(Lcom/narvii/livelayer/LiveLayerMainFragment;)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    return v1

    .line 22
    .line 23
    :cond_1
    const-class v0, Lcom/narvii/members/PeopleListFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v2, "Source"

    .line 30
    .line 31
    const-string v3, "Live Layer"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, Lcom/narvii/livelayer/LiveLayerMainFragment$8;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 38
    return v1
.end method
