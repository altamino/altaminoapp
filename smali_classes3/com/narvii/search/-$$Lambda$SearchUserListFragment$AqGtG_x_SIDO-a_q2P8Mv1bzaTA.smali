.class public final synthetic Lcom/narvii/search/-$$Lambda$SearchUserListFragment$AqGtG_x_SIDO-a_q2P8Mv1bzaTA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/search/InstantSearchListener$RefreshListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/search/SearchUserListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/search/SearchUserListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/search/-$$Lambda$SearchUserListFragment$AqGtG_x_SIDO-a_q2P8Mv1bzaTA;->f$0:Lcom/narvii/search/SearchUserListFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/search/-$$Lambda$SearchUserListFragment$AqGtG_x_SIDO-a_q2P8Mv1bzaTA;->f$0:Lcom/narvii/search/SearchUserListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/SearchUserListFragment;->lambda$createAdapter$0$SearchUserListFragment(Ljava/lang/String;Z)V

    return-void
.end method
