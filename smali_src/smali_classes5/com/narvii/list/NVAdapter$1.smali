.class Lcom/narvii/list/NVAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVAdapter$1;->this$0:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/list/NVAdapter$1;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/list/NVAdapter$1;->val$callbackValue:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/list/NVAdapter;->e()Lcom/narvii/util/statistics/TmpValue;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/list/NVAdapter$1;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->compareAndRemove(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$1;->val$callback:Lcom/narvii/util/Callback;

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/list/NVAdapter$1;->val$callbackValue:I

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 24
    :cond_0
    return-void
.end method
