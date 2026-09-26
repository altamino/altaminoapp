.class public final synthetic Lcom/narvii/tipping/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/tipping/TippingBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/tipping/TippingBaseFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/tipping/b;->a:Lcom/narvii/tipping/TippingBaseFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/tipping/b;->a:Lcom/narvii/tipping/TippingBaseFragment;

    check-cast p1, Lcom/narvii/model/Community;

    invoke-static {v0, p1}, Lcom/narvii/tipping/TippingBaseFragment;->t(Lcom/narvii/tipping/TippingBaseFragment;Lcom/narvii/model/Community;)V

    return-void
.end method
