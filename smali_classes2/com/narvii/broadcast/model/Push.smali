.class public Lcom/narvii/broadcast/model/Push;
.super Ljava/lang/Object;
.source "Push.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/broadcast/model/Push$PayloadBean;
    }
.end annotation


# instance fields
.field public payload:Lcom/narvii/broadcast/model/Push$PayloadBean;

.field public scheduledTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/narvii/broadcast/model/Push$PayloadBean;

    invoke-direct {v0}, Lcom/narvii/broadcast/model/Push$PayloadBean;-><init>()V

    iput-object v0, p0, Lcom/narvii/broadcast/model/Push;->payload:Lcom/narvii/broadcast/model/Push$PayloadBean;

    .line 13
    iget-object v0, p0, Lcom/narvii/broadcast/model/Push;->payload:Lcom/narvii/broadcast/model/Push$PayloadBean;

    new-instance v1, Lcom/narvii/broadcast/model/Push$PayloadBean$ApsBean;

    invoke-direct {v1}, Lcom/narvii/broadcast/model/Push$PayloadBean$ApsBean;-><init>()V

    iput-object v1, v0, Lcom/narvii/broadcast/model/Push$PayloadBean;->aps:Lcom/narvii/broadcast/model/Push$PayloadBean$ApsBean;

    return-void
.end method
