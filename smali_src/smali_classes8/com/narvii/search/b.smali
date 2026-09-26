.class public final synthetic Lcom/narvii/search/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/search/InstantSearchListener$RefreshListener;


# instance fields
.field public final synthetic a:Lcom/narvii/search/SearchUserListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/search/SearchUserListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/search/b;->a:Lcom/narvii/search/SearchUserListFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/search/b;->a:Lcom/narvii/search/SearchUserListFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/search/SearchUserListFragment;->t(Lcom/narvii/search/SearchUserListFragment;Ljava/lang/String;Z)V

    return-void
.end method
