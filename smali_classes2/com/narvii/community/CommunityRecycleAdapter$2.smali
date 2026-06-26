.class Lcom/narvii/community/CommunityRecycleAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityRecycleAdapter;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/narvii/community/CommunityRecycleAdapter$2;->this$0:Lcom/narvii/community/CommunityRecycleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter$2;->this$0:Lcom/narvii/community/CommunityRecycleAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityRecycleAdapter;->onEndItemClicked(Landroid/view/View;)V

    return-void
.end method
