.class Lcom/narvii/permisson/NVPermission$7;
.super Ljava/lang/Object;
.source "NVPermission.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/permisson/NVPermission;->showRantionalDialog(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/permisson/NVPermission;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/permisson/NVPermission;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/narvii/permisson/NVPermission$7;->this$0:Lcom/narvii/permisson/NVPermission;

    iput-object p2, p0, Lcom/narvii/permisson/NVPermission$7;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/narvii/permisson/NVPermission$7;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 178
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
