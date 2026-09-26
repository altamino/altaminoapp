.class Lcom/narvii/master/CommunityDetailFragment$MainAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$2;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onUserClicked(Lcom/narvii/model/User;)V
    .locals 1
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$2;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->n(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;Lcom/narvii/model/User;)V

    .line 6
    return-void
.end method
