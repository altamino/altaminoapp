.class Lcom/narvii/amino/HomeFragment$4;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$4;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$4;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-static {p1}, Lcom/narvii/amino/HomeFragment;->access$410(Lcom/narvii/amino/HomeFragment;)I

    .line 227
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$4;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-static {p1}, Lcom/narvii/amino/HomeFragment;->access$400(Lcom/narvii/amino/HomeFragment;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$4;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object p1, p1, Lcom/narvii/amino/HomeFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 223
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/amino/HomeFragment$4;->call(Ljava/lang/Integer;)V

    return-void
.end method
