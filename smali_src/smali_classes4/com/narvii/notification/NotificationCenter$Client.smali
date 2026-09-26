.class Lcom/narvii/notification/NotificationCenter$Client;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notification/NotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Client"
.end annotation


# instance fields
.field contextId:J

.field listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/notification/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field time:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/notification/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/notification/NotificationCenter$Client;-><init>()V

    return-void
.end method
