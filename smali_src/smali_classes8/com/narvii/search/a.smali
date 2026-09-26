.class public final synthetic Lcom/narvii/search/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/search/InstantSearchListener$RefreshListener;


# instance fields
.field public final synthetic a:Lcom/narvii/search/SearchChatListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/search/SearchChatListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/search/a;->a:Lcom/narvii/search/SearchChatListFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/search/a;->a:Lcom/narvii/search/SearchChatListFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/search/SearchChatListFragment;->t(Lcom/narvii/search/SearchChatListFragment;Ljava/lang/String;Z)V

    return-void
.end method
