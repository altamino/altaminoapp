.class public final synthetic Lcom/narvii/topic/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/c;->a:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    iput-object p2, p0, Lcom/narvii/topic/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/c;->a:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    iget-object v1, p0, Lcom/narvii/topic/c;->b:Ljava/util/List;

    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-static {v0, v1, p1}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->u(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;Ljava/util/List;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
