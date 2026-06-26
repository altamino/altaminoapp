.class Lcom/narvii/paging/NVRecyclerViewFragment$3;
.super Ljava/lang/Object;
.source "NVRecyclerViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/paging/NVRecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/NVRecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$3;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 251
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$3;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget-object p1, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onErrorRetry()V

    :cond_0
    return-void
.end method
