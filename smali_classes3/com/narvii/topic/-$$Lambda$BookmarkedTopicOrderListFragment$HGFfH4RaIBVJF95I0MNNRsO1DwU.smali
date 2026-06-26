.class public final synthetic Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$HGFfH4RaIBVJF95I0MNNRsO1DwU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$HGFfH4RaIBVJF95I0MNNRsO1DwU;->f$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    iput-object p2, p0, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$HGFfH4RaIBVJF95I0MNNRsO1DwU;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$HGFfH4RaIBVJF95I0MNNRsO1DwU;->f$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    iget-object v1, p0, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$HGFfH4RaIBVJF95I0MNNRsO1DwU;->f$1:Ljava/util/List;

    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->lambda$onOptionsItemSelected$0$BookmarkedTopicOrderListFragment(Ljava/util/List;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
