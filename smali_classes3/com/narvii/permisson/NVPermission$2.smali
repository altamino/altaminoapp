.class Lcom/narvii/permisson/NVPermission$2;
.super Ljava/lang/Object;
.source "NVPermission.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/permisson/NVPermission;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/permisson/NVPermission;


# direct methods
.method constructor <init>(Lcom/narvii/permisson/NVPermission;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/narvii/permisson/NVPermission$2;->this$0:Lcom/narvii/permisson/NVPermission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/narvii/permisson/NVPermission$2;->this$0:Lcom/narvii/permisson/NVPermission;

    iget-object p1, p1, Lcom/narvii/permisson/NVPermission;->rationaleDenyCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 110
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
