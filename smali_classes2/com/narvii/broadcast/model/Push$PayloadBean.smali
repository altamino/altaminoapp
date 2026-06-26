.class public Lcom/narvii/broadcast/model/Push$PayloadBean;
.super Ljava/lang/Object;
.source "Push.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/broadcast/model/Push;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PayloadBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/broadcast/model/Push$PayloadBean$ApsBean;
    }
.end annotation


# instance fields
.field public aps:Lcom/narvii/broadcast/model/Push$PayloadBean$ApsBean;

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
