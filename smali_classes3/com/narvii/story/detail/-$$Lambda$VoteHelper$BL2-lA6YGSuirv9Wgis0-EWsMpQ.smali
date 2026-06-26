.class public final synthetic Lcom/narvii/story/detail/-$$Lambda$VoteHelper$BL2-lA6YGSuirv9Wgis0-EWsMpQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/detail/-$$Lambda$VoteHelper$BL2-lA6YGSuirv9Wgis0-EWsMpQ;->f$0:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/detail/-$$Lambda$VoteHelper$BL2-lA6YGSuirv9Wgis0-EWsMpQ;->f$0:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    invoke-static {v0}, Lcom/narvii/story/detail/VoteHelper;->lambda$vote$1(Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    return-void
.end method
