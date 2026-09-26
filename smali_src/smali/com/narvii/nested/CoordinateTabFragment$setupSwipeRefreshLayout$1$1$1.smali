.class public final Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/paging/source/PageRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/CoordinateTabFragment;->setupSwipeRefreshLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/CoordinateTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/nested/CoordinateTabFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$1$1$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageRequestFinished(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$1$1$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/nested/CoordinateTabFragment;->access$getBodyRefreshCallback$p(Lcom/narvii/nested/CoordinateTabFragment;)Lcom/narvii/util/Callback;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 14
    return-void
.end method
