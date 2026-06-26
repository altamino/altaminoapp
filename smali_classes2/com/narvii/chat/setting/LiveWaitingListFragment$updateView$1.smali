.class final synthetic Lcom/narvii/chat/setting/LiveWaitingListFragment$updateView$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "LiveWaitingListFragment.kt"


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 186
    invoke-static {v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getCurrentUser$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "currentUser"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getCurrentUser()Lcom/narvii/model/User;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 186
    check-cast p1, Lcom/narvii/model/User;

    invoke-static {v0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$setCurrentUser$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V

    return-void
.end method
