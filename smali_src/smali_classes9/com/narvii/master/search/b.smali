.class public final synthetic Lcom/narvii/master/search/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/search/InstantSearchListener$RefreshListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/search/b;->a:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/search/b;->a:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->t(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;Ljava/lang/String;Z)V

    return-void
.end method
