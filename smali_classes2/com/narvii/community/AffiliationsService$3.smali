.class Lcom/narvii/community/AffiliationsService$3;
.super Ljava/lang/Object;
.source "AffiliationsService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/AffiliationsService;->op(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/AffiliationsService;


# direct methods
.method constructor <init>(Lcom/narvii/community/AffiliationsService;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService$3;->this$0:Lcom/narvii/community/AffiliationsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V
    .locals 0

    .line 140
    invoke-interface {p1}, Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;->onAffiliationChanged()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/community/AffiliationsService$3;->call(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    return-void
.end method
