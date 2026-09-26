.class public final synthetic Lcom/narvii/story/detail/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/detail/d;->a:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/story/detail/d;->a:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    invoke-static {v0}, Lcom/narvii/story/detail/VoteHelper;->d(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    return-void
.end method
