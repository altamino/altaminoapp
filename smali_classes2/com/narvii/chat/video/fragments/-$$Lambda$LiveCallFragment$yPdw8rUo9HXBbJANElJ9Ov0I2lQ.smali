.class public final synthetic Lcom/narvii/chat/video/fragments/-$$Lambda$LiveCallFragment$yPdw8rUo9HXBbJANElJ9Ov0I2lQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$LiveCallFragment$yPdw8rUo9HXBbJANElJ9Ov0I2lQ;->f$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$LiveCallFragment$yPdw8rUo9HXBbJANElJ9Ov0I2lQ;->f$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->lambda$onPresenterItemClicked$1$LiveCallFragment(Ljava/lang/Boolean;)V

    return-void
.end method
