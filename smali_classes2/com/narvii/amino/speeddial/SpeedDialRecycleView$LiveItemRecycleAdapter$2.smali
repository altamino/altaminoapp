.class Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;
.super Ljava/lang/Object;
.source "SpeedDialRecycleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

.field final synthetic val$chatThread:Lcom/narvii/model/ChatThread;


# direct methods
.method constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;->this$1:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;->val$chatThread:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;->this$1:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-static {v0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->access$000(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;->this$1:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-static {v0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->access$000(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;->val$chatThread:Lcom/narvii/model/ChatThread;

    invoke-interface {v0, p1, v1}, Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;->onLiveItemClicked(Landroid/view/View;Lcom/narvii/model/ChatThread;)V

    :cond_0
    return-void
.end method
