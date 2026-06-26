.class final Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "ProfileLinkedCommuView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $community:Lcom/narvii/model/Community;

.field final synthetic this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;Lcom/narvii/model/Community;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$onBindViewHolder$1;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    iput-object p2, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$onBindViewHolder$1;->$community:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 77
    iget-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$onBindViewHolder$1;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    iget-object p1, p1, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    invoke-virtual {p1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->getPage()Lcom/narvii/app/NVContext;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "LinkedCommunities"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$onBindViewHolder$1;->$community:Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 78
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$onBindViewHolder$1;->$community:Lcom/narvii/model/Community;

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter$onBindViewHolder$1;->this$0:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
