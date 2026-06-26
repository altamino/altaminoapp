.class final synthetic Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$getItemCount$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "AdsModuleHorizontalAdapter.kt"


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 60
    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

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

    const-class v0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getInnerDataSource()Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 60
    check-cast p1, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    invoke-static {v0, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$setInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;)V

    return-void
.end method
