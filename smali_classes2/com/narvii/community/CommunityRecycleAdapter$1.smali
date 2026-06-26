.class Lcom/narvii/community/CommunityRecycleAdapter$1;
.super Ljava/lang/Object;
.source "CommunityRecycleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/CommunityRecycleAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityRecycleAdapter;

.field final synthetic val$c:Lcom/narvii/model/Community;


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityRecycleAdapter;Lcom/narvii/model/Community;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/narvii/community/CommunityRecycleAdapter$1;->this$0:Lcom/narvii/community/CommunityRecycleAdapter;

    iput-object p2, p0, Lcom/narvii/community/CommunityRecycleAdapter$1;->val$c:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/narvii/community/CommunityRecycleAdapter$1;->this$0:Lcom/narvii/community/CommunityRecycleAdapter;

    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter$1;->val$c:Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/community/CommunityRecycleAdapter;->onItemClick(Lcom/narvii/model/Community;)V

    return-void
.end method
