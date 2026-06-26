.class public final synthetic Lcom/narvii/master/-$$Lambda$MasterTabFragment$1$YfCpKXbdk752Vb6KT1UmIvonhu8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/master/MasterTabFragment$1;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterTabFragment$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/-$$Lambda$MasterTabFragment$1$YfCpKXbdk752Vb6KT1UmIvonhu8;->f$0:Lcom/narvii/master/MasterTabFragment$1;

    iput p2, p0, Lcom/narvii/master/-$$Lambda$MasterTabFragment$1$YfCpKXbdk752Vb6KT1UmIvonhu8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/-$$Lambda$MasterTabFragment$1$YfCpKXbdk752Vb6KT1UmIvonhu8;->f$0:Lcom/narvii/master/MasterTabFragment$1;

    iget v1, p0, Lcom/narvii/master/-$$Lambda$MasterTabFragment$1$YfCpKXbdk752Vb6KT1UmIvonhu8;->f$1:I

    invoke-virtual {v0, v1}, Lcom/narvii/master/MasterTabFragment$1;->lambda$onReceive$0$MasterTabFragment$1(I)V

    return-void
.end method
