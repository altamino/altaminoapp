.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "LinkCommunityFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$onBindViewHolder$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 344
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$onBindViewHolder$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->getMasterHelper()Lcom/narvii/master/MasterHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/master/MasterHelper;->createAmino(Ljava/lang/String;)V

    return-void
.end method
