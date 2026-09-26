.class Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;->this$1:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;->val$chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;->this$1:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->b(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;->this$1:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->b(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;->val$chatThread:Lcom/narvii/model/ChatThread;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1, v1}, Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;->onLiveItemClicked(Landroid/view/View;Lcom/narvii/model/ChatThread;)V

    .line 24
    :cond_0
    return-void
.end method
