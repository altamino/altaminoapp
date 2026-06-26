.class Lcom/narvii/list/NVAdapter$3;
.super Ljava/lang/Object;
.source "NVAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/NVAdapter;->refreshCallbackLater(Lcom/narvii/util/Callback;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVAdapter;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$callbackValue:I


# direct methods
.method constructor <init>(Lcom/narvii/list/NVAdapter;Lcom/narvii/util/Callback;I)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/narvii/list/NVAdapter$3;->this$0:Lcom/narvii/list/NVAdapter;

    iput-object p2, p0, Lcom/narvii/list/NVAdapter$3;->val$callback:Lcom/narvii/util/Callback;

    iput p3, p0, Lcom/narvii/list/NVAdapter$3;->val$callbackValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 424
    invoke-static {}, Lcom/narvii/list/NVAdapter;->access$000()Lcom/narvii/util/statistics/TmpValue;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/list/NVAdapter$3;->val$callback:Lcom/narvii/util/Callback;

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->compareAndRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$3;->val$callback:Lcom/narvii/util/Callback;

    iget v1, p0, Lcom/narvii/list/NVAdapter$3;->val$callbackValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
