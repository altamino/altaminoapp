.class public abstract Lcom/narvii/app/BaseFragmentRegisterProvider;
.super Ljava/lang/Object;
.source "BaseFragmentRegisterProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/app/FragmentRegister;",
        ">;"
    }
.end annotation


# instance fields
.field instance:Lcom/narvii/app/FragmentRegister;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/app/FragmentRegister;
    .locals 1

    .line 16
    iget-object p1, p0, Lcom/narvii/app/BaseFragmentRegisterProvider;->instance:Lcom/narvii/app/FragmentRegister;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/BaseFragmentRegisterProvider;->registerFragment(Ljava/util/HashMap;)V

    .line 19
    new-instance v0, Lcom/narvii/app/FragmentRegister;

    invoke-direct {v0, p1}, Lcom/narvii/app/FragmentRegister;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/narvii/app/BaseFragmentRegisterProvider;->instance:Lcom/narvii/app/FragmentRegister;

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/BaseFragmentRegisterProvider;->instance:Lcom/narvii/app/FragmentRegister;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/BaseFragmentRegisterProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/app/FragmentRegister;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/app/FragmentRegister;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/app/FragmentRegister;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseFragmentRegisterProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/app/FragmentRegister;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/app/FragmentRegister;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/app/FragmentRegister;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseFragmentRegisterProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/app/FragmentRegister;)V

    return-void
.end method

.method protected abstract registerFragment(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/app/FragmentRegister;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/app/FragmentRegister;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseFragmentRegisterProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/app/FragmentRegister;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/app/FragmentRegister;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/app/FragmentRegister;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseFragmentRegisterProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/app/FragmentRegister;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/app/FragmentRegister;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/app/FragmentRegister;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseFragmentRegisterProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/app/FragmentRegister;)V

    return-void
.end method
