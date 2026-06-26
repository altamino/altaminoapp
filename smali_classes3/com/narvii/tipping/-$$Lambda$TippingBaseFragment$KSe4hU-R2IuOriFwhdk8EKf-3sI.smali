.class public final synthetic Lcom/narvii/tipping/-$$Lambda$TippingBaseFragment$KSe4hU-R2IuOriFwhdk8EKf-3sI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/tipping/TippingBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/tipping/TippingBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/tipping/-$$Lambda$TippingBaseFragment$KSe4hU-R2IuOriFwhdk8EKf-3sI;->f$0:Lcom/narvii/tipping/TippingBaseFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/tipping/-$$Lambda$TippingBaseFragment$KSe4hU-R2IuOriFwhdk8EKf-3sI;->f$0:Lcom/narvii/tipping/TippingBaseFragment;

    check-cast p1, Lcom/narvii/model/Community;

    invoke-virtual {v0, p1}, Lcom/narvii/tipping/TippingBaseFragment;->lambda$onCreate$0$TippingBaseFragment(Lcom/narvii/model/Community;)V

    return-void
.end method
