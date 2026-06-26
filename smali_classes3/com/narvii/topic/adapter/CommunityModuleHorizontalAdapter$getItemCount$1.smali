.class final synthetic Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$getItemCount$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "CommunityModuleHorizontalAdapter.kt"


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    .line 128
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "innerDataSource"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    .line 128
    check-cast p1, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    invoke-virtual {v0, p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->setInnerDataSource(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;)V

    return-void
.end method
