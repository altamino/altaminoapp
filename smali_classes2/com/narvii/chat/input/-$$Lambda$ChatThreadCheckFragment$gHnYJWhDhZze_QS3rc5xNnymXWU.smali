.class public final synthetic Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$gHnYJWhDhZze_QS3rc5xNnymXWU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

.field private final synthetic f$1:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$gHnYJWhDhZze_QS3rc5xNnymXWU;->f$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    iput-object p2, p0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$gHnYJWhDhZze_QS3rc5xNnymXWU;->f$1:Lcom/narvii/chat/signalling/SignallingChannel;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$gHnYJWhDhZze_QS3rc5xNnymXWU;->f$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    iget-object v1, p0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$gHnYJWhDhZze_QS3rc5xNnymXWU;->f$1:Lcom/narvii/chat/signalling/SignallingChannel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->lambda$null$1$ChatThreadCheckFragment(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V

    return-void
.end method
