.class public Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;
.super Ljava/lang/Object;
.source "DeepLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/DeepLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicLinkResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public pendingDynamicLinkData:Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
