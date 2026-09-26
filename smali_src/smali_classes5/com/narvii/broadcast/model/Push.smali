.class public Lcom/narvii/broadcast/model/Push;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/broadcast/model/Push$PayloadBean;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/broadcast/model/Push$PayloadBean;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/broadcast/model/Push;->payload:Lcom/narvii/broadcast/model/Push$PayloadBean;

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/broadcast/model/Push$PayloadBean$ApsBean;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Lcom/narvii/broadcast/model/Push$PayloadBean$ApsBean;-><init>()V

    .line 16
    .line 17
    iput-object v1, v0, Lcom/narvii/broadcast/model/Push$PayloadBean;->aps:Lcom/narvii/broadcast/model/Push$PayloadBean$ApsBean;

    .line 18
    return-void
.end method
