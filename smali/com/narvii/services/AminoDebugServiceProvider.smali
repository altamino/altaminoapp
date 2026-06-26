.class public Lcom/narvii/services/AminoDebugServiceProvider;
.super Lcom/narvii/util/debug/DebugServiceProvider;
.source "AminoDebugServiceProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/narvii/util/debug/DebugServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/debug/DebugService;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/util/debug/DebugServiceProvider;->instance:Lcom/narvii/util/debug/DebugService;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/narvii/util/debug/AminoDebugService;

    invoke-direct {v0, p1}, Lcom/narvii/util/debug/AminoDebugService;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/util/debug/DebugServiceProvider;->instance:Lcom/narvii/util/debug/DebugService;

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/debug/DebugServiceProvider;->instance:Lcom/narvii/util/debug/DebugService;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/services/AminoDebugServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/debug/DebugService;

    move-result-object p1

    return-object p1
.end method
