.class final Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "CreateCommunityButtonAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder$1;->this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 65
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder$1;->this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;

    iget-object p1, p1, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->createAmino:Lcom/narvii/logging/ActSemantic;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;ZZ)V

    .line 67
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder$1;->this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;

    iget-object p1, p1, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->getMasterHelper()Lcom/narvii/master/MasterHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/master/MasterHelper;->createAmino(Ljava/lang/String;)V

    return-void
.end method
